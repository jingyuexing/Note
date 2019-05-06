# GFC
`GFC`(`GridLayout Formatting Contexts`)直译为"网格布局格式化上下文"，当为一个元素设置display值为grid的时候，此元素将会获得一个独立的渲染区域，我们可以通过在网格容器（grid container）上定义网格定义行（`grid definition rows`）和网格定义列（`grid definition columns`）属性各在网格项目（`grid item`）上定义网格行（`grid row`）和网格列（`grid columns`）为每一个网格项目（`grid item`）定义位置和空间。

`GFC`将改变传统的布局模式，他将让布局从一维布局变成了二维布局。简单的说，有了`GFC`之后，布局不再局限于单个维度了。这个时候你要实现类似九宫格，拼图之类的布局效果显得格外的容易。