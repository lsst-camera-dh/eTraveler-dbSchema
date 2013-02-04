// Internal representation of Process edge as inferred from yaml
// representation.  Knows how to make entries in ProcessEdge table of db
// to represent connection between a process node and its parent
// (and where it is in list of children)
#ifndef ProcessEdge_h
#define ProcessEdge_h
#include <cstring>

class ProcessNode;
namespace rdbModel {
  class Connection;
}

class ProcessEdge {
public:
  ProcessEdge(ProcessNode* parent, ProcessNode* child, int childCount) :
    m_parent(parent), m_child(child), m_childCount(childCount),
    m_edgeId(""){};
  ~ProcessEdge() {};
  int writeDb(rdbModel::Connection* connection, std::string user, 
              std::string childId);

private:
  ProcessNode* m_parent;
  ProcessNode* m_child;
  int          m_childCount;
  std::string  m_edgeId;    // our id, once db row is made
};
#endif
