//设置行颜色以及变化行颜色
var name;
function trColor(){
	var tabNode=document.getElementById("mailtable");
	var trs=tabNode.rows;
	
	for(var x=1;x<trs.length-1;x++){
		if(x%2==1)
			trs[x].className="one";
		else
			trs[x].className="two";
		
		trs[x].onmouseover=function(){
			name=this.className;
			this.className="over";
			};
			
		trs[x].onmouseout=function(){
			this.className=name;
			};
		}
	}
	
onload=function(){
	trColor();
	}
	
//全选checkbox
function checkAll(node){
	var mails=document.getElementsByName("mail");
	for(var x=0;x<mails.length;x++){
		mails[x].checked=node.checked;
		}
	}

//复选框通过按钮选取
function checkAllByButton(num){
	var mails=document.getElementsByName("mail");
	for(var x=0;x<mails.length;x++){
		if(num>1)
			mails[x].checked=!mails[x].checked;
		else
			mails[x].checked=num;
		}
	}

//通过按钮删除邮件
function deleteMails(){
	if(!confirm("确定删除吗？"))
	return 0;
	var mails=document.getElementsByName("mail");
	for(var x=0;x<mails.length;x++){
		if(mails[x].checked){
			var trNode=mails[x].parentNode.parentNode;
			trNode.parentNode.removeChild(trNode);
			x--;
			}
		}
	}



















