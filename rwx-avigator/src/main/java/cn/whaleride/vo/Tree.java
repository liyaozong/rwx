package cn.whaleride.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Tree<T> {
    /**
     * 节点ID
     */
    private String id;
    /**
     * 节点文本
     */
    private String text;
    /**
     * 节点属性
     */
    private Map<String, Object> attributes;

    /**
     * 节点的子节点
     */
    private List<Tree<T>> children = new ArrayList<Tree<T>>();

    /**
     * 父ID
     */
    private String parentId;
    /**
     * 是否有父节点
     */
    private boolean hasParent = false;
    /**
     * 是否有子节点
     */
    private boolean hasChildren = false;

    /**
     * 构建树对象
     * @param list
     * @param <T>
     * @return
     */
    public static <T> Tree<T> buildTree(List<Tree<T>> list) {
        Tree<T> topNodes = new Tree<>();
        topNodes.setText("Top");
        for (Tree<T> children : list) {
            String pid = children.getParentId();
            if (pid == null || "0".equals(pid)) {
                topNodes.getChildren().add(children);
                continue;
            }
            for (Tree<T> parent : list) {
                String id = parent.getId();
                if (id != null && id.equals(pid)) {
                    parent.getChildren().add(children);
                    children.setHasParent(true);
                    parent.setHasChildren(true);
                    break;
                }
            }
        }
        return topNodes;
    }
}
