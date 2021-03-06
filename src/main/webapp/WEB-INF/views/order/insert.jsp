<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
.box-radio-input input[type="radio"] {
	display: none;
}

.box-radio-input input[type="radio"]+span {
	border-radius: 5px;
	display: inline-block;
	background: none;
	border: 1px solid #dfdfdf;
	padding: 0px 10px;
	text-align: center;
	height: 35px;
	line-height: 33px;
	font-weight: 500;
	cursor: pointer;
}

.box-radio-input input[type="radio"]:checked+span {
	border: 1px solid #7BB1C2;
	background: #7BB1C2;
	color: #fff;
}
.radio{
}
table {
	width: 50%;
	border-collapse: separate;
	border-spacing: 0 20px;
}

th, td {
	border-bottom: 1px solid #ddd;
	padding: 15px;
}

div.total_price {
	left: 300px;
	right: -30px;
}
div.input-group{
	height: 28px;
} 
span.input-group-text{
	width: 135px;
	background-color: #FCE7CC;
	border: none;
}
.info {
	width : 295px;
	height: 38px;
	background-color:#FEF3E5;
	border: none;
	border-radius: 5px;
}
.info2{
	width: 100px; 
	height: 38px; 
	background-color:#FEF3E5; 
	border: none;
	border-radius: 5px;
}
.hr1{
	width: 50%;
	height:3px;
	border:none;
	background-color:#343a40;
}
.hr2{
	width:50%;
	height:2px;
	border:none;
	background-color:#F0E68C;
}
</style>
</head>

	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

<body>
	<div class="container mr-1">
		<form action="/order/insert/${mvo.member_id}" method="post">

			<!-- ???????????? -->
			<h1>??????/??????</h1>
			<hr class="hr1" align="left">

			<h3>????????????</h3>
			<hr class="hr2" align="left">
			<div class="col-md-5" style="left: 30px;">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">???????????????</span>
					<input type="text" class="info" name="member_id" id="member_id"
						value="${mvo.member_id}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">????????????</span>
					<input type="text" class="info" value="${mvo.member_name}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">????????????</span>
					<input type="text" class="info" value="${mvo.member_phone_number}"
						readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">???????????????</span>
					<input type="text" class="info" name="member_email"
						value="${mvo.member_email}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????
						??????</span> <input type="text" class="info" value="${mvo.member_address}"
						readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????
						????????????</span> <input type="text" class="info"
						value="${mvo.member_detail_address}" readonly>
				</div>
			</div>
			<hr class="hr1" align="left">


			<!-- ???????????? -->
			<h3>????????????</h3>
			<hr class="hr2" align="left">
			<div class="radio">
				<label class="box-radio-input"><input id="???????????????"
					onclick="original()" type="radio" name="address" value="???????????????"
					checked="checked"><span>???????????????</span></label> <label
					class="box-radio-input"><input id="???????????????" onclick="test()"
					type="radio" name="address" value="???????????????"><span>???????????????</span></label>
			</div>



			<div class="col-md-5" style="left: 30px;">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????</span>
					<input placeholder="???????????? ???????????????" type="text" class="info"
						id="receiver" name="receiver" value="${mvo.member_name}" readonly maxlength="5">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">????????????</span>
					<input placeholder="??????????????? ???????????????" type="text" class="info"
						id="phone" name="member_phone_number"
						value="${mvo.member_phone_number}" readonly maxlength="11">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">??????????????????</span>
					<input placeholder="???????????? ???????????????" class="info"
						type="email" id="order_email" name="order_email"
						name="member_email" value="${mvo.member_email}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????
						??????</span> <input placeholder="????????? ????????? ???????????????" type="text" class="info"
						id="address" name="member_address" value="${mvo.member_address}" readonly maxlength="40" >
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????
						????????????</span> <input placeholder="????????? ??????????????? ???????????????" type="text" class="info"
						id="detail_address" name="member_detail_address"
						value="${mvo.member_detail_address}" readonly maxlength="16">
				</div>
			</div>
			<hr class="hr1" align="left">



			<!--???????????? ???????????? -->
			<h3>????????????</h3>
			<hr class="hr2" align="left">
			<c:if test="${not empty clist}">
				<table>
					<tr>
						<th>?????????</th>
						<th>??????</th>
						<th>??????</th>
					</tr>
					<c:forEach items="${clist}" var="cVo">
						<c:forEach items="${ilist}" var="iVo">
							<c:if test="${iVo.item_no == cVo.item_no}">

								<tr>
									<td>${iVo.item_name}</td>
									<td>${cVo.cart_quantity}</td>
									<td>${iVo.item_price*(100-iVo.discount_percentage)/100}???</td>
								</tr>

							</c:if>

						</c:forEach>
					</c:forEach>
				</table>
			</c:if>


			<!-- ???????????? ???????????? -->
			<c:if test="${empty clist}">
			<table>
					<tr>
						<th>?????????</th>
						<th>??????</th>
						<th>??????</th>
					</tr>
				<c:forEach items="${ilist}" var="iVo">
					<tr>
						<td style="height:  50%">${iVo.item_name}</td>
						<td>1???</td>
						<td>${iVo.item_price*(100-iVo.discount_percentage)/100}???</td>
					</tr>
				</c:forEach>
			</table>		
			</c:if>
			<hr class="hr1" align="left">


			<!-- ????????? ??? ????????? -->
			<div class="col-md-3" style="left: 300px;">
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????</span>
					<input type="text" class="info2" value="${total}???" readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm">?????????</span>
					<input type="text" class="info2" value="${sum}???" readonly>
				</div>
			</div>
			<hr class="hr1" align="left">
			<input type="hidden" name="ilist" value="${ilist}"> <input
				type="hidden" name="clist" value="${clist}"> <input
				class="btn btn-success" type="submit" value="????????????">
			<button class="btn btn-danger" type="button" id="cancel">????????????</button>
		</form>
	</div>


	<jsp:include page="../footer.jsp" />


	<script type="text/javascript">
	 var clist = "${clist}";
	 var member_id = "${mvo.member_id}";
	 var item_no = "${item_no}";
	  
	  
	 document.getElementById("address").addEventListener("click", function() {//?????????????????? ????????????
			new daum.Postcode({
				oncomplete: function(data) {//????????? ????????? ??????
					document.getElementById("address").value = data.address; // ?????? ??????
					document.querySelector("input[name=member_detail_address]").focus(); //???????????? ?????????
				}
			}).open();
		}); 

	function original(){
		document.getElementById("receiver").value = '${mvo.member_name}';
		document.getElementById("phone").value = '${mvo.member_phone_number}';
		document.getElementById("order_email").value = '${mvo.member_email}';
		document.getElementById("address").value = '${mvo.member_address}';
		document.getElementById("detail_address").value = '${mvo.member_detail_address}';
		document.getElementById("receiver").readOnly = true;
		document.getElementById("phone").readOnly = true;
		document.getElementById("order_email").readOnly = true;
		document.getElementById("address").readOnly = true;
		document.getElementById("detail_address").readOnly = true;
	}

	function test() {
		document.getElementById("receiver").value = '';
		document.getElementById("phone").value = '';
		document.getElementById("order_email").value = '';
		document.getElementById("address").value = '';
		document.getElementById("detail_address").value = '';
		document.getElementById("receiver").readOnly = false;
		document.getElementById("phone").readOnly = false;
		document.getElementById("order_email").readOnly = false;
		document.getElementById("address").readOnly = false;
		document.getElementById("detail_address").readOnly = false;
	}

	$(document).ready(function() {

		$("input[type='submit']").click(function(event) {
			event.preventDefault();
			var member_id = $("#member_id").val();
			var item_no = $("#item_no").val();
			var cart_no = $("#cart_no").val();
			var order_quantity = $("#order_quantity").val();
			var order_price = $("#order_price").val();
			var order_email = $("#order_email").val();
			var order_name = $("#order_name").val();
			var order_phone_number = $("#order_phone_number").val();
			var order_address = $("#order_address").val();
			var order_detail_address = $("#order_detail_address").val();

			if (member_id == '') {
				alert('??????????????? ????????? ???????????????.');
				$("[name='member_id']").focus();
				return;
			}
			if (order_name == '') {
				alert('???????????? ????????? ???????????????.');
				$("[name='order_name']").focus();
				return;
			}
			if (order_phone_number == '') {
				alert('??????????????? ????????? ???????????????.');
				$("[name='order_phone_number']").focus();
				return;
			}
			if (order_email == '') {
				alert('???????????? ????????? ???????????????.');
				$("[name='order_email']").focus();
				return;
			}
			if (order_address == '') {
				alert('????????? ????????? ???????????????.');
				$("[name='order_address']").focus();
				return;
			}
			if (order_detail_address == '') {
				alert('??????????????? ????????? ???????????????.');
				$("[name='order_detail_address']").focus();
				return;
			}
			if (item_no == '') {
				alert('??????????????? ????????? ???????????????.');
				$("[name='item_no']").focus();
				return;
			}
			if (order_quantity == '') {
				alert('????????? ????????? ???????????????.');
				$("[name='order_quantity']").focus();
				return;
			}
			if (order_price == '') {
				alert('??????????????? ????????? ???????????????.');
				$("[name='order_price']").focus();
				return;
			}
			var IMP = window.IMP;
			IMP.init('imp56953105');
			IMP.request_pay({
			     pg : 'inicis',//????????????(pg)
			     pay_method: 'card',
			     merchant_uid : 'merchant_' + new Date().getTime(),// ???????????? ???????????? ?????? ??????
			     name : '?????????:???????????????',//????????????
			     amount : 100, //?????? ???????????? ??????
			     buyer_email : order_email,
			     buyer_name : order_name,
			     buyer_tel : order_phone_number,
			     buyer_addr : order_address +" "+ order_detail_address,
			     buyer_postcode : order_detail_address 
			  }, function(rsp) {
			     console.log(rsp);
			     if (rsp.success) {
			        var msg = '????????? ?????????????????????.';
			        msg += '??????ID : ' + rsp.imp_uid;
			        msg += '?????? ??????ID : ' + rsp.merchant_uid;//merchant_uid
			        msg += '?????? ?????? : ' + rsp.paid_amount;
			        msg += '?????? ???????????? : ' + rsp.apply_num;
			        alert(msg);
			        if(clist == null || clist == ""){
			        	item_no = "${item_no}";
	                    $("form").attr("action", "/order/insert/"+member_id+"/"+item_no);
	                    $("form").submit(); 
	                }
			        $("form").submit(); 
			     } else {
			        var msg = '????????? ?????????????????????.';
			        msg += '???????????? : ' + rsp.error_msg;
			         alert(msg);
			     }
			  });
		});

		$("button#cancel").click(function() {
			alert('??????????????? ???????????????');
			location.assign("/")
		});

	});
</script>

</body>
	
</html>