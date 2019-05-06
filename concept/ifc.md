# IFC
* ***什么是IFC***    
`IFC`(`Inline Formatting Contexts`)直译为"行内格式化上下文"，`IFC`的`line box`（线框）高度由其包含行内元素中最高的实际高度计算而来（不受到竖直方向的 `padding/margin` 影响)

* ***IFC有的特性***    
`IFC`中的`line box`一般左右都贴紧整个`IFC`，但是会因为`float`元素而扰乱。`float`元素会位于`IFC`与与`line box`之间，使得`line box`宽度缩短。
IFC中时不可能有块级元素的，当插入块级元素时（如p中插入`div`）会产生两个匿名块与div分隔开，即产生两个`IFC`，每个`IFC`对外表现为块级元素，与`div`垂直排列。