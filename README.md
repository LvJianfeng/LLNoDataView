# LLNoDataView
超简单的空数据提示通用View！！！！！

什么，简单到不行了！！！真的超级简单的使用！！！其实有牛逼的空数据展示那种，应该都知道，但是使用上就是太过繁琐，需要实现很多，所以果断放弃！！！自己弄个超简单的超简单的！


## <a id="支持哪些空数据的展示"></a>支持哪些空数据的展示
* `UIScrollView`、`UITableView`、`UICollectionView`、`UIWebView`
* 其实都是可以使用的，返回的只有一个自定义的View

## <a id="如何使用LLNoDataView"></a>如何使用LLNoDataView
<!--* cocoapods导入：`pod 'LLNoDataView'`-->
* 手动导入：
      * 将`LLNoDataView`文件夹中的所有文件拽入项目中
    * 导入主头文件：`#import "LLNoDataView.h"`

## <a id="允许点击的时候，设置协议回调"></a>允许点击的时候，设置协议回调
```objc
//请下载工程查看Demo使用
noDataView.delegate = self;
```

## (最近修改) 0.0.2 更快实现默认图配置，自适应更强大
```objc
#pragma mark 图片配置
/**
 *  没有数据：默认图（no_data_katong_）
 */
#define LLNoDataImageName @""

/**
 *  没有网络：默认图（network_xinhao_）
 */
#define LLNoInternetImageName @""

/**
 *  其他状态
 */
#define LLOtherStatusImageName @""
```

## <a id="可视化重新加载按钮"></a>可视化重新加载按钮
![(可视化重新加载按钮)](https://github.com/LvJianfeng/LLNoDataView/blob/master/Screen1_0.png)

## <a id="没有数据"></a>没有数据
![(没有数据)](https://github.com/LvJianfeng/LLNoDataView/blob/master/Screen1_1.png)

## <a id="网络连接失败"></a>网络连接失败
![(网络连接失败)](https://github.com/LvJianfeng/LLNoDataView/blob/master/Screen1_2.png)
