(function($){
    //璁剧疆spin鍙傛暟
    var opts = {
        lines: 9, // The number of lines to draw
        length: 0, // The length of each line
        width: 8, // The line thickness
        radius: 14, // The radius of the inner circle
        corners: 1, // Corner roundness (0..1)
        rotate: 4, // The rotation offset
        color: '#fff', // #rgb or #rrggbb
        speed: 1, // Rounds per second
        trail: 100, // Afterglow percentage
        shadow: false, // Whether to render a shadow
        hwaccel: false, // Whether to use hardware acceleration
        className: 'spinner', // The CSS class to assign to the spinner
        zIndex: 2e9, // The z-index (defaults to 2000000000)
        top: 'auto', // Top position relative to parent in px
        left: 'auto' // Left position relative to parent in px
    };

    //澶囦唤jquery鐨刟jax鏂规硶
    var _ajax=$.ajax;

    $.ajaxExtend = function (opt) {
        //console.log("beforeSend1");
        //_opt.async = false;
        //"http://io.wzhealth.com/FEY.UI/spin/content.html"
        //
        //$("#sp_body").hide();

        //澶囦唤opt涓璭rror鍜宻uccess鏂规硶
        var fn = {
            error:function(XMLHttpRequest, textStatus, errorThrown){},
            success:function(data, textStatus){},
            beforeSend:function(XHR){},
            complete:function(XHR, TS){}
        }
        if(opt.error){
            fn.error=opt.error;
        }
        if(opt.success){
            fn.success=opt.success;
        }
        if(opt.beforeSend){
            fn.beforeSend=opt.beforeSend;
        }
        if(opt.complete){
            fn.complete=opt.complete;
        }
        
        if (opt.needSpin) {
            fn.async = true;
            opt.async = true;
        }

        //鎵╁睍澧炲己澶勭悊
        var _opt = $.extend(opt,{
            error:function(XMLHttpRequest, textStatus, errorThrown){
                //閿欒鏂规硶澧炲己澶勭悊
                fn.error(XMLHttpRequest, textStatus, errorThrown);
            },
            success: function (data, textStatus) {
                console.log("success");
                //鎴愬姛鍥炶皟鏂规硶澧炲己澶勭悊
                fn.success(data, textStatus);
            },
            beforeSend:function(XHR){
            	if(opt.needSpin == true)
            	{
            	    var spinHtml = "<div id='sp_body'><div id='sp_shadeView'></div><div id='sp_loadingView'><div id='sp_spin' style='width:100%;height:60%;margin-top:5px'></div><div id='sp_content' style='text-align:center;color:white;'><p style='color:white'>鍔犺浇涓�...</p></div></div></div>";
            	    $('body').append(spinHtml);

            	    if (opt.spinText != null && opt.spinText != '') {
            	        var $sp_content = $("#sp_content");
            	        $sp_content.html(opt.spinText);
            	    }

            	    var target = document.getElementById('sp_spin');
            	    var spinner = new Spinner(opts).spin(target);

            	    //$('html').css('overflow', 'hidden');
            	    //$('body').css('overflow', 'inherit');
	            	//var spinner = new Spinner(opts).spin($target);
            	}
                if(fn.beforeSend != undefined && fn.beforeSend != ''){
                    fn.beforeSend(XHR);  
                }
                //

                //鎻愪氦鍓嶅洖璋冩柟娉�
                //$('body').append("<div id='ajaxInfo' style=''>姝ｅ湪璇锋眰鏁版嵁,璇风◢绛�...</div>");
            },
            complete:function(XHR, TS){
				if(opt.needSpin == true)
				{
				    //console.log("complete1");
				    var $target = $('#sp_body'); 
				    $target.remove();
				    //$('html').css('overflow', 'visible');
				    //$('body').css('overflow', 'visible');
	            }
                //
                if(fn.complete != undefined && fn.complete != ''){
                    fn.complete(XHR, TS);
                }
                
                //var spinner = new Spinner(opts).spin(target);

                //璇锋眰瀹屾垚鍚庡洖璋冨嚱鏁� (璇锋眰鎴愬姛鎴栧け璐ヤ箣鍚庡潎璋冪敤)銆�
                //$("#ajaxInfo").remove();;
            }
        });
        _ajax(_opt);
    };


    /* Introduction & Guide Page */
    $.fn.FeyIntroPage = function (obj) {
        obj.css("height", "100%").css("width", "100%").css("margin", "0").css("padding", "0");
        obj.append($("<div class='fip-dots'></div>"));

        var pageCount = obj.children(".fip-page").length;
        for (var i = 1; i <= pageCount; i++) {
            var left = 'calc(100% / ' + (pageCount + 1) + ' * ' + i + ' - 5px)';
            console.log(left);
            var dot = $("<span class='fip-dot'></span>").css('left', left);
            if (i == 1) {
                dot.addClass("fip-dot-active");
            }
            obj.children(".fip-dots").append(dot);

            obj.children(".fip-page").eq(i - 1).css("z-index", (100 + pageCount - i));
        }

        var startX = 0;
        var lastX = 0;
        var currentPage = 0;
        obj.children('.fip-page').on('touchstart', function (e) {
            var _touch = e.originalEvent.targetTouches[0];
            startX = _touch.pageX;
            lastX = startX;
            console.log("start:" + startX);
        });

        obj.children('.fip-page').on('touchmove', function (e) {
            var _touch = e.originalEvent.targetTouches[0];
            var touchX = _touch.pageX;
            var offsetX = touchX - lastX;
            lastX = touchX;
            var currentX = parseInt($(this).css("left")) + offsetX;

            var totalOffsetX = touchX - startX;
            if ($(this)[0] == $(".fip-page").eq(0)[0] && totalOffsetX >= 0) { } //first page slide right
            else if ($(this)[0] == $(".fip-page").last()[0] && totalOffsetX <= 0) { } //last page slide left
            else {
                if (totalOffsetX >= 0) { // slide right
                    currentX = parseInt($(this).prev().css("left")) + offsetX;
                    $(this).prev().css('left', currentX);
                    console.log("slide right(left):" + currentX);
                }
                else { // slide left
                    $(this).css('left', currentX);
                }

                //console.log("touch:" + touchX);
            }
        });

        obj.children('.fip-page').on('touchend', function (e) {
            var _touch = e.originalEvent.changedTouches[0];
            var endX = _touch.pageX;

            var finalOffsetX = endX - startX;
            var pctWidth = finalOffsetX / window.innerWidth;

            if ($(this)[0] == $(".fip-page").eq(0)[0] && finalOffsetX >= 0) { } //first page
            else if ($(this)[0] == $(".fip-page").last()[0] && finalOffsetX <= 0) { } //last page
            else {
                if (pctWidth >= -0.5 && pctWidth <= 0) { //slide left 
                    $(this).animate({ left: "0" });
                }
                else if (pctWidth <= 0.5 && pctWidth > 0) { //slide right
                    $(this).prev().animate({ left: "-100%" });
                }
                else if (pctWidth > 0.5) { // slide right, show prev page
                    console.log("show prev");
                    $(this).prev().animate({ left: "0" }, function () {
                        currentPage--;
                        SwitchCurrentDot(currentPage);
                    });
                }
                else if (pctWidth < -0.5) { // slide left, show next page
                    console.log("show next");
                    $(this).animate({ left: "-100%" }, function () {
                        currentPage++;
                        SwitchCurrentDot(currentPage);
                    });
                }
            }

            console.log("end:" + endX);
        });

        function SwitchCurrentDot(currentPage) {
            console.log("currentpage:" + currentPage);
            $(".fip-dot").removeClass("fip-dot-active");
            $(".fip-dot").eq(currentPage).addClass("fip-dot-active");
        }
    }


})(jQuery);

if (typeof (toastr) != "undefined")
{
    


    function thisToastr(opt, msg, title) {
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "positionClass": "toast-bottom-full-width",
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "0",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };
        switch (opt) {
            case "info":
                toastr['info'](msg, title);
                break;
            case "warning":
                toastr['warning'](msg, title);
                break;
            case "error":
                toastr['error'](msg, title);
                break;
            case "success":
                toastr['success'](msg, title);
                break;
            default:
                toastr['info'](msg, title);
                break;
        }
    }


    function thisToastrAutoClose(opt, msg, title) {
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "positionClass": "toast-bottom-full-width",
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "4000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };

        switch (opt) {
            case "info":
                toastr['info'](msg, title);
                break;
            case "warning":
                toastr['warning'](msg, title);
                break;
            case "error":
                toastr['error'](msg, title);
                break;
            case "success":
                toastr['success'](msg, title);
                break;
            default:
                toastr['info'](msg, title);
                break;
        }
    }


}


function standardPost(url, args) {
    var form = $("<form method='post'></form>");
    form.attr({ "action": url });
    for (var arg in args) {
        var input = $("<input type='hidden'>");
        input.attr({ "name": arg });
        input.val(args[arg]);
        form.append(input);
    }
    form.submit();
}


function IdCardValidate(id)
{
    //var reg1 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
    //var reg2 = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;

    //return (reg1.test(id.toUpperCase()) === true || reg2.test(id.toUpperCase()) == true);

    if(id === '')
	{
		//alert('璇疯緭鍏ヨ韩浠借瘉鍙凤紝韬唤璇佸彿涓嶈兘涓虹┖');
		return true;
	}
	//鏍￠獙闀垮害锛岀被鍨�
	if(isCardNo(id) === false)
	{
		//alert('鎮ㄨ緭鍏ョ殑韬唤璇佸彿鐮佷笉姝ｇ‘锛岃閲嶆柊杈撳叆');
		return false;
	}
	//妫€鏌ョ渷浠�
	if(checkProvince(id) === false)
	{
		//alert('鎮ㄨ緭鍏ョ殑韬唤璇佸彿鐮佷笉姝ｇ‘,璇烽噸鏂拌緭鍏�');
		return false;
	}
	//鏍￠獙鐢熸棩
	if(checkBirthday(id) === false)
	{
		//alert('鎮ㄨ緭鍏ョ殑韬唤璇佸彿鐮佺敓鏃ヤ笉姝ｇ‘,璇烽噸鏂拌緭鍏�');
		return false;
	}
	//妫€楠屼綅鐨勬娴�
	if(checkParity(id) === false)
	{
		//alert('鎮ㄧ殑韬唤璇佸彿鐮佷笉姝ｇ‘,璇烽噸鏂拌緭鍏�');
		return false;
	}
	
	return true;
}

var vcity={ 11:"鍖椾含",12:"澶╂触",13:"娌冲寳",14:"灞辫タ",15:"鍐呰挋鍙�",
        	21:"杈藉畞",22:"鍚夋灄",23:"榛戦緳姹�",31:"涓婃捣",32:"姹熻嫃",
        	33:"娴欐睙",34:"瀹夊窘",35:"绂忓缓",36:"姹熻タ",37:"灞变笢",41:"娌冲崡",
        	42:"婀栧寳",43:"婀栧崡",44:"骞夸笢",45:"骞胯タ",46:"娴峰崡",50:"閲嶅簡",
        	51:"鍥涘窛",52:"璐靛窞",53:"浜戝崡",54:"瑗胯棌",61:"闄曡タ",62:"鐢樿們",
        	63:"闈掓捣",64:"瀹佸",65:"鏂扮枂",71:"鍙版咕",81:"棣欐腐",82:"婢抽棬",91:"鍥藉"
           };


//妫€鏌ュ彿鐮佹槸鍚︾鍚堣鑼冿紝鍖呮嫭闀垮害锛岀被鍨�
isCardNo = function(card)
{
	//韬唤璇佸彿鐮佷负15浣嶆垨鑰�18浣嶏紝15浣嶆椂鍏ㄤ负鏁板瓧锛�18浣嶅墠17浣嶄负鏁板瓧锛屾渶鍚庝竴浣嶆槸鏍￠獙浣嶏紝鍙兘涓烘暟瀛楁垨瀛楃X
	var reg = /(^\d{15}$)|(^\d{17}(\d|X)$)/;
	if(reg.test(card) === false)
	{
		return false;
	}

	return true;
};

//鍙栬韩浠借瘉鍓嶄袱浣�,鏍￠獙鐪佷唤
checkProvince = function(card)
{
	var province = card.substr(0,2);
	if(vcity[province] == undefined)
	{
		return false;
	}
	return true;
};

//妫€鏌ョ敓鏃ユ槸鍚︽纭�
checkBirthday = function(card)
{
	var len = card.length;
	//韬唤璇�15浣嶆椂锛屾搴忎负鐪侊紙3浣嶏級甯傦紙3浣嶏級骞达紙2浣嶏級鏈堬紙2浣嶏級鏃ワ紙2浣嶏級鏍￠獙浣嶏紙3浣嶏級锛岀殕涓烘暟瀛�
	if(len == '15')
	{
		var re_fifteen = /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/; 
		var arr_data = card.match(re_fifteen);
		var year = arr_data[2];
		var month = arr_data[3];
		var day = arr_data[4];
		var birthday = new Date('19'+year+'/'+month+'/'+day);
		return verifyBirthday('19'+year,month,day,birthday);
	}
	//韬唤璇�18浣嶆椂锛屾搴忎负鐪侊紙3浣嶏級甯傦紙3浣嶏級骞达紙4浣嶏級鏈堬紙2浣嶏級鏃ワ紙2浣嶏級鏍￠獙浣嶏紙4浣嶏級锛屾牎楠屼綅鏈熬鍙兘涓篨
	if(len == '18')
	{
		var re_eighteen = /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/;
		var arr_data = card.match(re_eighteen);
		var year = arr_data[2];
		var month = arr_data[3];
		var day = arr_data[4];
		var birthday = new Date(year+'/'+month+'/'+day);
		return verifyBirthday(year,month,day,birthday);
	}
	return false;
};

//鏍￠獙鏃ユ湡
verifyBirthday = function(year,month,day,birthday)
{
	var now = new Date();
	var now_year = now.getFullYear();
	//骞存湀鏃ユ槸鍚﹀悎鐞�
	if(birthday.getFullYear() == year && (birthday.getMonth() + 1) == month && birthday.getDate() == day)
	{
		//鍒ゆ柇骞翠唤鐨勮寖鍥达紙3宀佸埌100宀佷箣闂�)
		//var time = now_year - year;
		//if(time >= 3 && time <= 100)
		//{
			return true;
		//}
		//return false;
	}
	return false;
};

//鏍￠獙浣嶇殑妫€娴�
checkParity = function(card)
{
	//15浣嶈浆18浣�
	card = changeFivteenToEighteen(card);
	var len = card.length;
	if(len == '18')
	{
		var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2); 
		var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2'); 
		var cardTemp = 0, i, valnum; 
		for(i = 0; i < 17; i ++) 
		{ 
			cardTemp += card.substr(i, 1) * arrInt[i]; 
		} 
		valnum = arrCh[cardTemp % 11]; 
		if (valnum == card.substr(17, 1)) 
		{
			return true;
		}
		return false;
	}
	return false;
};

//15浣嶈浆18浣嶈韩浠借瘉鍙�
changeFivteenToEighteen = function(card)
{
	if(card.length == '15')
	{
		var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2); 
		var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2'); 
		var cardTemp = 0, i;   
		card = card.substr(0, 6) + '19' + card.substr(6, card.length - 6);
		for(i = 0; i < 17; i ++) 
		{ 
			cardTemp += card.substr(i, 1) * arrInt[i]; 
		} 
		card += arrCh[cardTemp % 11]; 
		return card;
	}
	return card;
};