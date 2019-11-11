# React

### React组件生命周期
---
当组件实例被创建并插入DOM当中,其生命周期如下
***挂载***     
* `constructor()`(构造函数)
* `static getDeriveStateFromProps()`
* `render()`
* `componentDidMount()`

***更新***
当组件的props或state发生变化时会触发更新,组件生命周期调用如下
* `static getDerivedStateFromProps()`
* `shouldComponentUpdate()`
* `render()`
* `getSnapshotBeforeUpdate()`
* `componentDidUpdate()`

***卸载***
当组件从DOM中移除时会调用如下方法
* `componentWillUnmount()`

***错误处理***
当渲染过程，生命周期，或子组件的构造函数中抛出错误时，会调用如下方法：
* `static getDerivedStateFromError()`
* `componentDidCatch()`

