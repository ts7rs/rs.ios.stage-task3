#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    
    NSLog(@"array tree input %@", tree);

/*typedef struct {
   int value;
   struct TreeNode *left;
   struct TreeNode *right;
} TreeNode;

@interface Node : NSObject
-(NSMutableArray *)preorderTraversal:(TreeNode *)treeNode;
-(NSMutableArray *)levelOrder:(TreeNode *)treeNode;
@property NSNumber *value;
@property Node *left;
@property Node *right;*/


 
 //method declaration here
/* @end

@implementation Node

-(NSMutableArray *)preorderTraversal:(TreeNode *)treeNode
{
   NSMutableArray *preorderArray = [NSMutableArray array];
   if (!treeNode) {
       [preorderArray addObject: (__bridge id _Nonnull)(treeNode)];
       preorderTraversal(treeNode->left);
       preorderTraversal(treeNode->right);
   }
  return preorderArray;
}


-(NSMutableArray *)levelOrder:(TreeNode *)treeNode
{
  NSMutableArray *levelOrderArray = [NSMutableArray array];
  if (treeNode == nil) return levelOrderArray;
 
  NSMutableArray *queue = [NSMutableArray array];
    [queue addObject: (__bridge id _Nonnull)(treeNode)];
  while (queue.count != 0) {
    NSMutableArray *eachLevelArray = [NSMutableArray array];
    long size = queue.count;
    for (int i = 0; i<size; i++) {
       treeNode *node = [queue firstObject];
       [queue removeObjectAtIndex: 0];
       [eachLevelArray addObject: node];
       if (node.left)  {
         [queue addObject: node.left];
       }
       if (node.right) {
         [queue addObject: node.right];
       }
    }
    [levelOrderArray addObject: eachLevelArray];
  }
 return levelOrderArray;
}

//method implementation here

@end



NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    
    NSLog(@"tree comes %@", tree);
    
    
    
*/
   return nil;
}
