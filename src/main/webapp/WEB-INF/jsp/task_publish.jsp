    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
            <%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>    <!DOCTYPE html>
        <html>
        <head lang="en">
        <meta charset="UTF-8">
        <title>发布页</title>
        <link rel="stylesheet" href="<%=basePath %>static/css/releasePageMain.css" type="text/css">
      <%--   <link rel="stylesheet" href="<%=basePath %>static/css/top-box.css" type="text/css"> --%>
        <script src="<%=basePath %>static/js/Calender.js" type="text/javascript" charset="utf-8"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <script src="<%=basePath %>static/js/releasePageOn.js" type="text/javascript" charset="utf-8"></script>
        <script src="<%=basePath %>static/js/jquery.js" type="text/javascript"  charset="utf-8"></script>
        </head>
        <body>
        <s:set var="user" value="${sessionScope.user}"/>  
		<div id="user_id" hidden>${user.type}</div>
        <div id="top-box">  
   		<jsp:include   page="/common/top.jsp" flush="true"/>
		</div><!--头部结束-->
        <%--<form method="post" action="<%=basePath %>task/save_task/" enctype="multipart/form-data">--%>
                <%--&lt;%&ndash;<input name="task_name" type="text">&ndash;%&gt;--%>
                        <%--<input type="submit">--%>

                <%--</form>--%>
        <form method="post" action="<s:url value='/task/saveTask'/>" enctype="multipart/form-data" id="taskForm">
        <div class="release-main" id="Page1">
        <div class="release-progress">
        <div class="release-progress-detail-on">
        <p>描述您的需求</p>
        <span>1</span>
        </div>
        <div class="release-progress-detail">
        <p>设置需求赏金</p>
        <span>2</span>
        </div>
        <div class="release-progress-detail">
        <p>确认需求,并托付赏金</p>
        <span>3</span>
        </div>
        </div>
        <div class="release-choose-detail">
        <div class="release-choose-detail-title">
        <p class="warn-title">官方提供线上担保协议，保障您的资金安全，且不会收取您任何佣金。80%的欺诈、资金盗取均由线下交易导致，请勿线下交易。</p>
        </div>
        <div class="release-choose-detail-main">
        <div class="release-choose-detail-left">
        <div class="release-choose-left-options">
        <div class="classification-list">
        <div class="list1" ><span class="typeOrg">分类一：</span>
        <div class="classification-Title" id="list1">
        <a>办公用品</a><label><input name="type1" type="radio" value="0" class="type-choose1" /></label>
        <a>营销用品</a><label><input name="type1" type="radio" value="1" class="type-choose1"/></label>
        <a>会议用品</a><label><input name="type1" type="radio" value="2" class="type-choose1"/></label>
        <a>节日用品</a><label><input name="type1" type="radio" value="3" class="type-choose1"/></label>
        <a>定制用品</a><label><input name="type1" type="radio" value="4" class="type-choose1"/></label>
        <a>全部</a><label><input name=type1 type="radio" value="5" class="type-choose1"/></label>
        </div>
        </div>
        <div class="list2" ><span class="typeOrg">分类二：</span>
        <div class="classification-Choice" id="list2">
        <a>logo设计</a><label><input name="type2" type="radio" value="0" class="type-choose2" /></label>
        <a>名片设计</a><label><input name="type2" type="radio" value="1" class="type-choose2" /></label>
        <a>笔记本设计</a><label><input name="type2" type="radio" value="2" class="type-choose2" /></label>
        <a>工作证设计</a><label><input name="type2" type="radio" value="3" class="type-choose2" /></label>
        <a>文件盒设计</a><label><input name="type2" type="radio" value="4" class="type-choose2" /></label>
        <a>全部</a><label><input name="type2" type="radio" value="5" class="type-choose2" /></label>
        </div>
        </div>
        </div>
        您选择了&#58;&nbsp;&nbsp;<span id="Choose1"></span><span>-</span><span id="Choose2"></span>
        <span id="type-note">请选择分类</span>
        </div>
        <div class="release-choose-left-main">
        <div>标题:<br /><label><input type="text" name=name id="title" placeholder="例如：XX公司XXlogo设计" maxlength="30" onkeyup="javascript:setShowLength(this, 30, 'cost_tpl_title_length');"/></label><span class="word-num" id="cost_tpl_title_length">限制在30个字以内</span>
        </div>
        <div class="Insert-image"><a href="javascript:InAccessory('Image');" id="Image-word">上传图片</a><label><input type="file" id="Image" name="imgFile" /></label>
        <span class="Img_note">(点击上传任务图片)</span>
        </div>
        <div class="Detail-request">项目具体要求:<br /><label><textarea id="request" name="introduction" maxlength="5000" onkeyup="javascript:setShowLength(this, 5000, 'cost_tpl_detail_length');"></textarea></label><span class="word-num" id="cost_tpl_detail_length">限制在5000个字以内</span></div>
        <div class="Insert-Accessory"><a href="javascript:InAccessory('accessory');">添加附件</a><label><input type="file" id="accessory" name="originalFile1" /></label></div>
        <div class="InsertAccessory"><p>最多可添加5个附件，每个大小不超过10M.<a href="#">上传遇到问题？</a></p></div>
        <div class="TelPhone">您的联系方式:<br />
        <label><input type="number" name="phone" id="PhoneNumber" placeholder="请输入您的手机号"/></label><span id="TelPhone"></span><br />
        <label><input type="text" name="VerificationCode" id="VerificationCode" placeholder="请输入验证码" /></label><button type="button">获取验证码</button>
        </div>
        </div>
        <div class="next-or-last">
        <a href="javascript:ChangeReleasePage(2);" class="next-orange">下一步</a>
        </div>
        </div>
        <div class="release-choose-detail-right">
        <img src="${deal_img}" />
        <span class="orange">交易顾问</span>
        <span>${deal_name}</span>
        <button type="button">咨询</button>
        <p>遇到问题，可以免费咨询哦</p>
        </div>
        <div class="clear"></div>
        </div>
        </div>
        <div class="often-question">
        <span>常见问题：</span>
        <p>我在网站上交易有安全保障吗？</p>
        <p>答：</p>
        <p>1）您发布需求后先支付赏金到本网站，对服务商问题满意后，再通知网站打款；如无有效稿件，全额退款。整个交易过程本网站担保您赏金安全，并保障您的交易效果。</p>
        <p>2）此外，所以服务商实名认证，并交纳保证金为雇主提供保障，若交易过程中服务商发生违约或不诚信行为，雇主可获得先行赔付。</p>
        <p>我该怎么填写我的需求？</p>
        <p>答：</p>
        <p>您可以：</p>
        <p>1）参考本网站的已有需求，看看人家的需求是怎样的描述的。</p>
        <p>2）尽量用简洁、明了的语言来表示自己的需求。</p>
        <p>2）实在难以表述清楚的，可以联系本网站的客服人员协助您处理。</p>
        <p><a href="#">更多常见问题</a>></p>
        </div>
        </div>
        <div class="release-main" id="Page2">
        <div class="release-progress">
        <div class="release-progress-detail-on">
        <p>描述您的需求</p>
        <span>1</span>
        </div>
        <div class="release-progress-detail-on">
        <p>设置需求赏金</p>
        <span>2</span>
        </div>
        <div class="release-progress-detail">
        <p>确认需求,并托付赏金</p>
        <span>3</span>
        </div>
        </div>
        <div class="release-choose-detail">
        <div class="release-choose-detail-title">
        <p class="warn-title">官方提供线上担保协议，保障您的资金安全，且不会收取您任何佣金。80%的欺诈、资金盗取均由线下交易导致，请勿线下交易。</p>
        </div>
        <a id="priceLo"></a>
        <div class="release-choose-detail-main">
        <div class="release-choose-detail-left">
        <p class="release-choose-left-title">招标，众多服务商主动报价</p>
        <p>有两种报价形式:</p>
        <p>直接报价:给出确定价格，开发商可直接接单。</p>
        <p>浮动报价:开发商会给出自己的价格与您联系，您觉得更合适后更改价格为商量后的确定价格，并制定开发商。</p>
        <p>设置您的需求赏金:</p><span id="Price_note">请填写价格</span>
        <a id="timeLo"></a>
        <div class="formCss">
        <p class="in"><label onclick="Checked(1)"><input class="radioObj" type="radio" name="PriceMethod" value="DirectPrice"/></label></p>
        <span>直接报价</span><br />
        <label><input type="text" name="determinePrice" id="fixed_price" class="PriceBox" disabled="disabled" /></label><br />
        <p class="in"><label onclick="Checked(2)"><input class="radioObj" type="radio" name="PriceMethod" value="FloatPrice"/></label></p>
        <span>浮动报价</span><br />
        <label><input type="text" name="minPrice" class="PriceFloatBox" id="float_price_min" disabled="disabled" /></label><a class="wave">～</a><label><input type="text" name="maxPrice" disabled="disabled" class="PriceFloatCeil" id="float_price_max"/></label>
        <p class="AchieveTime">您需要何时完成</p>
        <label><input type="text" onclick="SelectDate(this)" id="AchieveTime"  name="completionTimeString" class="AchieveTimeBox" placeholder="2017-5-17"/></label><br />
        <span id="time_note">请选择完成时间</span>
        </div>
        <div class="next-or-last">
        <a href="javascript:ChangeReleasePage(1);">上一步</a>
        <a href="javascript:ChangeReleasePage(3)" class="next-orange">下一步</a>
        </div>
        </div>
        <div class="release-choose-detail-right">
        <img src="${deal_img}" />
        <span class="orange">交易顾问</span>
        <span>${deal_name}</span>
        <button type="button">咨询</button>
        <p>遇到问题，可以免费咨询哦</p>
        </div>
        <div class="clear"></div>
        </div>

        </div>
        <div class="often-question">
        <span>常见问题：</span>
        <p>我在网站上交易有安全保障吗？</p>
        <p>答：</p>
        <p>1）您发布需求后先支付赏金到本网站，对服务商问题满意后，再通知网站打款；如无有效稿件，全额退款。整个交易过程本网站担保您赏金安全，并保障您的交易效果。</p>
        <p>2）此外，所以服务商实名认证，并交纳保证金为雇主提供保障，若交易过程中服务商发生违约或不诚信行为，雇主可获得先行赔付。</p>
        <p>我该怎么填写我的需求？</p>
        <p>答：</p>
        <p>您可以：</p>
        <p>1）参考本网站的已有需求，看看人家的需求是怎样的描述的。</p>
        <p>2）尽量用简洁、明了的语言来表示自己的需求。</p>
        <p>2）实在难以表述清楚的，可以联系本网站的客服人员协助您处理。</p>
        <p><a href="#">更多常见问题</a>></p>
        </div>
        </div>
        <div class="release-main" id="Page3">
        <div class="release-progress">
        <div class="release-progress-detail-on">
        <p>描述您的需求</p>
        <span>1</span>
        </div>
        <div class="release-progress-detail-on">
        <p>设置需求赏金</p>
        <span>2</span>
        </div>
        <div class="release-progress-detail-on">
        <p>确认需求,并托付赏金</p>
        <span>3</span>
        </div>
        </div>
        <div class="release-choose-detail">
        <div class="release-choose-detail-title">
        <p class="warn-title">官方提供线上担保协议，保障您的资金安全，且不会收取您任何佣金。80%的欺诈、资金盗取均由线下交易导致，请勿线下交易。</p>
        </div>
        <div class="release-choose-detail-main">
        <div class="release-choose-detail-left" id="Page3Left">
        <p class="release-choose-left-title">您的需求:${user_name}</p>
        <p><span class="font-style">需求类型:</span><span id="type1"></span><span id="middle">/</span><span id="type2"></span></p>
        <p><span class="font-style">任务名:</span><span id="taskName"></span></p>
        <p><span class="font-style">详细描述:</span><span id="detailContent"></span></p>
        <p><span class="font-style">联系方式:</span><span id="conTelPhone"></span></p>
        <p><span class="font-style">赏&nbsp;&nbsp;&nbsp;&nbsp;金:</span><span id="PriceOrg"></span></p>
        <p><span class="font-style">截止时间:</span><span id="stopTime"></span></p>
        <p class="rules"><label for="cb"><input name="confirm"  type="checkbox" id="cb" onclick="IsSubmit()"/></label><span>同意并遵守《网站需求发布与处理规则》</span></p>
        <div class="next-or-last" id="Next">
        <a href="javascript:ChangeReleasePage(2);">上一步</a>
        <input type="submit" class="next-gray-out" id="next-money" name="releasePage" value="确定，托管赏金" disabled="disabled">
        <input type="submit" class="next-gray" name="releasePage" value="暂不托管，提交需求" disabled="disabled">
        </div>
        </div>
        <div class="release-choose-detail-right">
        <img src="${deal_img}" />
        <span class="orange">交易顾问</span>
        <span>${deal_name}</span>
        <button type="button">咨询</button>
        <p>遇到问题，可以免费咨询哦</p>
        </div>
        <div class="clear"></div>
        </div>
        </div>
        <div class="often-question">
        <span>常见问题：</span>
        <p>我在网站上交易有安全保障吗？</p>
        <p>答：</p>
        <p>1）您发布需求后先支付赏金到本网站，对服务商问题满意后，再通知网站打款；如无有效稿件，全额退款。整个交易过程本网站担保您赏金安全，并保障您的交易效果。</p>
        <p>2）此外，所以服务商实名认证，并交纳保证金为雇主提供保障，若交易过程中服务商发生违约或不诚信行为，雇主可获得先行赔付。</p>
        <p>我该怎么填写我的需求？</p>
        <p>答：</p>
        <p>您可以：</p>
        <p>1）参考本网站的已有需求，看看人家的需求是怎样的描述的。</p>
        <p>2）尽量用简洁、明了的语言来表示自己的需求。</p>
        <p>2）实在难以表述清楚的，可以联系本网站的客服人员协助您处理。</p>
        <p><a href="#">更多常见问题</a>></p>
        </div>
        </div>
        </form>
        </body>
        <script src="<%=basePath %>static/js/releasePage.js" type="text/javascript" charset="UTF-8"></script>
      <%--   <script type="text/javascript">
       		function submitForm(){
       		 $.post("/task/saveTask",$("#taskForm").serialize(), function(data){
     			if(data.status == 200){
     				$.messager.alert('提示','新增内容成功!');
     				
     			}
     		});
       			
       		}
        </script> --%>
        </html>