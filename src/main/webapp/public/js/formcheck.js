// JavaScript Document
//检查用户名是否由至少8位字母加数字组成
function checkUser(){
	var flag=false;
	var value=document.getElementsByName("user")[0].value;
	var tn=document.getElementById("truename");
	var en=document.getElementById("errorname");
	var reg=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,12}$/;
	if(reg.test(value)){
		tn.style.display="inline";
		en.style.display="none";
		flag=true;
	}
	else{
		tn.style.display="none";
		en.style.display="inline";
		flag=false;
		}
		return flag;
	}

//检查密码是否正确
function checkPsw(){
	var flag=false;
	var value=document.getElementsByName("psw")[0].value;
	var tp=document.getElementById("truepsw");
	var ep=document.getElementById("errorpsw");
	var reg=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,12}$/;
	if(reg.test(value)){
		tp.style.display="inline";
		ep.style.display="none";
		flag=true;
	}
	else{
		tp.style.display="none";
		ep.style.display="inline";
		flag=false;
		}
		return flag;
	}
	
//检查密码是否一致
function checkRepsw(){
	var flag=false;
	var value=document.getElementsByName("psw")[0].value;
	var revalue=document.getElementsByName("repsw")[0].value;
	var trp=document.getElementById("truerepsw");
	var rrp=document.getElementById("errorrepsw");
	if(value==revalue){
		trp.style.display="inline";
		rrp.style.display="none";
		flag=true;
		}
	else{
		trp.style.display="none";
		rrp.style.display="inline";
		flag=false;
		}
		return flag;
	}

//表单校验，当用户名，密码和确定密码正确时才可以提交成功
function checkForm(){
	if(checkUser() && checkPsw() &&checkRepsw())
	return true;
	else
		return false;
	//alert(checkUser()+","+checkPsw()+","+checkRepsw());
	}





