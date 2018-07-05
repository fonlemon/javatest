    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
        <!DOCTYPE html>
        <html>
        <head lang="en">
        <meta charset="UTF-8">
        <title>任务详情页</title>
        <link rel="stylesheet" href="<%=basePath %>static/css/Task-details.css" type="text/css">
        <script src="<%=basePath %>static/js/Task-detail.js" type="text/javascript"  charset="gb2312"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        </head>
        <body>
        <div id="top-box">
		   <jsp:include   page="/common/top.jsp" flush="true"/>
		</div><!--头部结束-->
        <div class="Task-top">
        </div>
        <div class="Task-main">
        <div class="main-top"><a>任务名称:</a><a style="width: 560px">${task.name}</a>
        <div id="state" hidden>${task_state}</div>
        <div id="modify" class="modify" style="display:none">任务修改</div>
        <label><input type="submit" id="unmodify" class="modify" style="display:none" value="任务确认"></label>
        <div id="change">
        <label>
        <input type="submit" value="确定">
        </label><p>取消</p></div></div>
        <div class="main-information" id="js-input" >
        <form>
        <div id="price-type" hidden>1</div>
        <div id="price-value-fixed" hidden>${task.determinePrice }</div>
        <div id="price-value-min" hidden>${task.minPrice}</div>
        <div id="price-value-max" hidden>${task.maxPrice}</div>
        <label >
        <a class="price-text">价格类型：</a><select disabled  onchange="price()"><option  >固定价格</option><option selected>浮动价格</option ></select>
        <span><a class="price-text">固定价格：</a><input type="number" disabled   class="fixed" >元</span>
        <span style="display: none"><a class="price-text">浮动价格：</a><input type="number" disabled class="float" >-<input type="number" disabled class="float">元</span>
        <a class="price-text">发布时间：</a><input class="date" type="datetime" value="<fmt:formatDate value="${task.releaseTime }" type="date"/>" disabled >
        <a class="price-text">完成时间：</a><input  class="date"  type="datetime"  value='<fmt:formatDate value="${task.completionTime }" type="date"/>' disabled  >
        </label></form>
        </div>
        <div class="main-text">
        <div class="task-progress"><a class="progress-title">任务进度：</a>
        <div id="loding" hidden>${progress}</div>
        <div class="progress" id="progress">
        <div class="bg-text"><p></p><p>等待接单</p><a>》</a></div>
        <div class="bg-text"><p></p><p>成功接单</p><a>》</a></div>
        <div class="bg-text"><p></p><p>等待上传</p><a>》</a></div>
        <div class="bg-text"><p></p><p>等待审核</p><a>》</a></div>
        <div class="bg-text"><p></p><p>完成任务</p><a>》</a></div>
        <div class="bg-text"><p></p><p>领取赏金</p></div>
        </div></div>
        <div class="main" id="js-main">
        <h1>任务要求：</h1>
        <form><label><textarea disabled placeholder="5000千字以内">${task.introduction}</textarea></div>
        <div class="download" id="js-download">
        <label>
        <a class="downloaddata">数据下载</a>
        <a class="downloaddata" style="display: none" onclick="file()">数据重新上传</a>

        </label>
        <a class="data">数据预览：</a><img src="${taskdata_img}">
        <input type="file" name=""  accept="application/zip" id="file">
        </div>
        </div>
        <div class="main-person">
        <div class="Applicant" >
        <p>申请列表</p>
        <form id="Applicant">
        <label><input type="radio" name="person">张三<a>申请时间:<span>2017年12月30号</span></a><br/></label>
        <label><input type="radio" name="person">李四<a>申请时间:<span>2017年12月30号</span></a><br/></label>
        <label><input type="radio" name="person">王五五<a>申请时间:<span>2017年12月30号</span></a><br/></label>
        <label><input type="radio" name="person">赵六<a>申请时间:<span>2017年12月30号</span></a><br/></label>
        <label><input type="radio" name="person">吴七<a>申请时间:<span>2017年12月30号</span></a><br/></label>
        <label><input type="submit" value="选定申请人" id="per_sub"> </label>
        </form>
        </div>
        <div class="Applicant"><p>接单人已选定</p> <p>接单人为<a>${apply_user_name}</a></p></div>
        </div>
        <div class="task-Recommend" id="js-Reconmmend">
        <div class="Recommend-title"><p>同类型任务推荐</p></div>
        <div class="Recommend-main">
        <div class="task-message-Exhibition">
        <a href="任务详情页.html"><img src="${task_img}"></a>
        <div class="task-message-Exhibition-text">${task_name}</div>
        <div class="task-message-Exhibition-price"><a href="#">¥：${task_price}</a></div>
        <div class="task-message-Exhibition-time">
        <a>发布时间：<span>${task_time}</span></a>
        </div>
        </div>
        <div class="task-message-Exhibition">
        <a href="任务详情页.html"><img src="${task_img}"></a>
        <div class="task-message-Exhibition-text">${task_name}</div>
        <div class="task-message-Exhibition-price"><a href="#">¥：${task_price}</a></div>
        <div class="task-message-Exhibition-time">
        <a>发布时间：<span>${task_time}</span></a>
        </div>
        </div>
        <div class="task-message-Exhibition">
        <a href="任务详情页.html"><img src="${task_img}"></a>
        <div class="task-message-Exhibition-text">${task_name}</div>
        <div class="task-message-Exhibition-price"><a href="#">¥：${task_price}</a></div>
        <div class="task-message-Exhibition-time">
        <a>发布时间：<span>${task_time}</span></a>
        </div>
        </div>
        </div>
        </div>
        <div class="Technological">
        <h1>流程介绍</h1>
        <h2>第一步</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第二步</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第三步</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第四步</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第五步</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>

        </div>
        <div class="guarantee">
        <h1>保障介绍</h1>
        <h2>第一条</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第二条</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第三条</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第四条</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>
        <h2>第五条</h2>
        <p>渲染功能增强：可以通过地图服务中的数据自动生成一个渲染器来对要素进行渲染，可产生分级断点与颜色条带等，具体请参考说明文档中的渲染选项。</p>

        </div>
        </div>
        <div class="back-top">
        <a id="backTop" title="回到顶部" onclick="backTop()"></a>

        </div>
        <div class="footer">
        <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
        <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
        <p>鄂公网安备 42011102000110号</p>
        <p>武汉网监电子标识</p>
        </div><!--底部-->
        </body>
        </html>