<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./base.jsp"%>
<!-- 
	获取地理位置 start
	var remote_ip_info = {"ret":1,"start":-1,"end":-1,"country":"\u4e2d\u56fd","province":"\u6c5f\u82cf","city":"\u5357\u901a","district":"","isp":"","type":"","desc":""};
-->
<script type="text/javascript" charset="utf-8" src='http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js'></script>
<!-- 
	获取ip 
	var returnCitySN = {"cip": "180.120.216.21", "cid": "320600", "cname": "江苏省南通市"};
-->
<script type="text/javascript" charset="utf-8" src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<script  type="text/javascript" charset="utf-8">
	var remote_ip_info = remote_ip_info;
	if(isEmpty(remote_ip_info)){//联网无效处理
		remote_ip_info = {"cip": "0.0.0.0", "cid": "000000", "cname": "未知"};
	}
	var returnCitySN = returnCitySN;
	if(isEmpty(returnCitySN)){//联网无效处理
		returnCitySN = {"ret":-1,"start":-1,"end":-1,"country":"未知","province":"未知","city":"未知","district":"","isp":"","type":"","desc":""};
	}
</script> 
<script type="text/javascript" charset="utf-8" src="${manageStaticSrcUrl}/js/visit.js"></script>
<!-- 
	获取地理位置 end
-->