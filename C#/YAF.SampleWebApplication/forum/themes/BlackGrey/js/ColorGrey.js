jQuery(document).ready(function(){jQuery.fn.onImagesLoaded=function(n){return this.each(function(){var t=this.tagName.toLowerCase()==="img"?$(this):$("img",this),r=this,u=0,i=function(){typeof n=="function"&&n(r)};t.length?t.each(function(){var n=this,r=function(r){n.complete||n.readyState=="complete"&&r.type=="readystatechange"?++u===t.length&&i():n.readyState===undefined&&$(n).attr("src",$(n).attr("src"))};$(n).bind("load readystatechange",function(n){r(n)}),r({type:"readystatechange"})}):i()})},jQuery(".menuMyList li a").not(".menuMyList li .Unread a").text(""),jQuery(".loggedInUser").insertBefore(".menuMyList"),jQuery(function(){if(jQuery("img.avatarimage").length)jQuery("img.avatarimage").onImagesLoaded(function(n){jQuery(n).wrap(function(){return'<span class="AvatarWrap" style="position:relative; display:inline-block; background:url('+jQuery(n).attr("src")+') no-repeat center center; width: auto; height: auto;" />'}),jQuery(n).css("opacity","0")})})});