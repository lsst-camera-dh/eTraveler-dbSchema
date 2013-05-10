// Internal representation of Prerequisite pattern.
// representation.  Knows how to make entries in PrerequisitePattern
// linked back to correct entry in Process table
#ifndef PrerequisiteNode_h
#define PrerequisiteNode_h
#include <cstring>
#include <vector>
#include <map>
#include <set>
#include "BaseNode.h"
class ProcessNode;
class ColumnDescriptor;

namespace YAML {
  class Node;
}

class PrerequisiteNode : public virtual BaseNode {
public:  
  PrerequisiteNode(ProcessNode* parent=NULL, const std::string& user="");
  ~PrerequisiteNode();

  ////std::string getProcessId() const {return m_processId;}

  // For now - and probably forever - YAML is only supported serialized form
  int virtual readSerialized(YAML::Node* ynode);   

  // E.g. check that referred to hardware types exist, etc.
  int verify(rdbModel::Connection* connect=NULL);

  // Write row in PrerequisitePattern table
  int virtual writeDb(rdbModel::Connection* connect);

private:
  ProcessNode* m_parent;
  std::map<std::string, std::string> m_inputs;  // e.g. from YAML
  std::string m_processId;   // id of process to which we belong

  std::string m_processName;  // if prereq is PROCESS_STEP
  std::string m_component;    // if prereq is COMPONENT

  std::string m_prereqId;    // used for COMPONENT or PROCESS_STEP
  std::string m_prereqTypeId;
  std::string m_version;
  bool        m_userVersionString;
  std::string m_user;
  // init static structures; in particular, yamlToColumn
  // Is PrerequisitePattern table complicated enough to warrant this?
  // Map taking yaml key name to corresponding column name in Process table
  static std::map<std::string, ColumnDescriptor*> s_yamlToColumn;
  static std::vector<ColumnDescriptor> s_columns;

  static void initStatic();

  // Verify that input (e.g. yaml file) makes sense, apart from db
  bool checkInputs();
};


#endif
