#ifndef _LPM_TREECODE_H_
#define _LPM_TREECODE_H_

#include "LpmConfig.h"
#include "LpmTypeDefs.h"
#include "LpmXyzVector.h"
#include "LpmCoords.h"
#include "LpmLogger.h"
#include "LpmBox3d.h"
#include "LpmFaces.h"
#include <memory>
#include <vector>
#include <string>
#include <iostream>

namespace Lpm {

#define BOX_PADDING_FACTOR 0.00001

struct Node {        
    Node(const Box3d& bbox, Node* pparent = NULL, 
         const std::vector<index_type>& crdInds = std::vector<index_type>());
    virtual ~Node() {};
    
    inline index_type nCoords() const {return coordsContained.size();}
    bool hasKids() const {return !kids.empty();}
    bool isLeaf() const {return kids.empty();}

    void writePoints(std::ofstream& os) const;
    
    inline void setLogProc(const int prank) {log->setProcRank(prank);}
    
    std::string infoString() const;
    
    Box3d box;
    int level;
    int nodes = 0;
    /// ptr to parent
    Node* parent;
    /// ptrs to child boxes
    std::vector<std::unique_ptr<Node>> kids;
    std::vector<index_type> coordsContained;
    
    void writePoints(std::ostream& os) const;
    
    static std::unique_ptr<Logger> log;
};

struct Sphere {
   Sphere() : radius(0),cx(0),cy(0),cz(0){};
   Sphere(const scalar_type rad, const scalar_type x, const scalar_type y, const scalar_type z) : 
   radius(rad), cx(x), cy(y), cz(z) {};

   void printInfo(){std::cout<<"radius: "<<radius<<" x: "<<cx<<" y: "<< cy<<" z: "<<cz<<"\n";}

   bool intersectsBox(const Box3d& bbox);

   bool containedInSphere(const scalar_type pointX, const scalar_type pointY, const scalar_type pointZ);

   scalar_type radius;
   scalar_type cx;
   scalar_type cy;
   scalar_type cz;
};

class Tree {
    public:
        Tree(const std::shared_ptr<Coords> crds, const scalar_type maxAspectRatio = 1.0, const int prank = 0);
        virtual ~Tree() {}; 

	void radiusSearch();

	void radiusSearch(Node* node);
	
        inline void setLogProc(const int prank) {log->setProcRank(prank); _root->log->setProcRank(prank);}
        
        std::string infoString() const;

	void printCoords();
	
        inline int depth() {return _depth;}

        inline index_type nNodes() {return _nnodes;}
        
        index_type recursiveNNodes() const {return recursiveNodeCount(_root.get());}

        virtual void buildTree(const index_type maxCoordsPerNode);
    
        void writeToVtk(const std::string& filename, const std::string& desc = "") const;

	Sphere sphere;

	long nodes = 0;

    protected:
        Tree() : _depth(0), _nnodes(0), _maxAspectRatio(1.0) {};

        void shrinkBox(Node* node);
        void shrinkBox(Node* node, std::shared_ptr<Faces> faces);
        
        virtual void generateTree(Node* node, const index_type maxCoordsPerNode);
        int computeTreeDepth(Node* node) const;
        
        index_type recursiveNodeCount(Node* node) const;
        
        void writeVtkPoints(std::ostream& os, Node* node) const;
        void writeVtkCells(std::ostream& os, Node* node, index_type& vertIndex) const;
        void writeVtkCellType(std::ostream& os, Node* node) const;
        void writeLevelDataToVtk(std::ostream& os, Node* node) const;

        int _depth;
        index_type _nnodes;
        std::weak_ptr<Coords> _crds;    
        
        scalar_type _maxAspectRatio;
        static std::unique_ptr<Logger> log;

        std::unique_ptr<Node> _root;
};


}

#endif
