# LLNoDataView
空数据提示通用View


## <a id="支持哪些空数据的展示"></a>支持哪些空数据的展示
* `UIScrollView`、`UITableView`、`UICollectionView`、`UIWebView`
* 其实都是可以使用的，返回的只有一个自定义的View

## <a id="如何使用LLNoDataView"></a>如何使用LLNoDataView
* cocoapods导入：`pod 'LLNoDataView'`
* 手动导入：
      * 将`LLNoDataView`文件夹中的所有文件拽入项目中
    * 导入主头文件：`#import "LLNoDataView.h"`

## <a id="允许点击的时候，设置协议回调"></a>允许点击的时候，设置协议回调
```objc
//请下载工程查看Demo使用
noDataView.delegate = self;
```

## <a id="没有数据"></a>没有数据
![(没有数据)](https://github.com/LvJianfeng/LLNoDataView/blob/master/Screen1_1.PNG)

## <a id="网络连接失败"></a>网络连接失败
![(网络连接失败)](https://github.com/LvJianfeng/LLNoDataView/blob/master/Screen1_2.PNG)
