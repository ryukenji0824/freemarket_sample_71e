$(document).on('turbolinks:load',function() {
 $('img.imageList').mouseover(function(){
 // "_thumb"を削った画像ファイル名を取得
 var selectedSrc = $(this).attr('src').replace(/^(.+)_firstImage(\.gif|\.jpg|\.png+)$/, "$1"+"$2");
 
 // 画像入れ替え
 $('img.firstImage').stop().fadeOut(50,
 function(){
 $('img.firstImage').attr('src', selectedSrc);
 $('img.firstImage').stop().fadeIn(200);
 });
 });
});
