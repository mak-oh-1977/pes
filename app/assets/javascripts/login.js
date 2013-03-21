$(function($){
	$('form')
		.bind("ajax:success", function(data, text_status, xhr){
			//ここに具体的な処理を記述
			if (text_status.res == "OK")
				$(location).attr('href', "/menu/");
			else
				alert(text_status.res);

/*  var str = "";
  for(var i in text_status) {
    str = str + "\n" + i + "\t"+ text_status[i];
  }
  alert(str);*/
		});
});