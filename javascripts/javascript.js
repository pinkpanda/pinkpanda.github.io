(function(){var t,a,n;n=!1,cheet("\u2191 \u2191 \u2193 \u2193 \u2190 \u2192 \u2190 \u2192 b a",function(){var e,o,i,r;return n?void 0:($("html, body").animate({scrollTop:0},"slow"),n=!0,i=$(".m-rainbow"),e=i.clone(),e.addClass("m-rainbow--fast"),i.before(e),i.fadeOut(),o=$("#panda-main .panda").clone(),r=$("#panda-footer .panda").clone(),_([0,1,2]).each(function(){return $("body").prepend($(".panda").clone())}),$(".panda").each(function(){var n;return n=t(),$(this).css({top:n[0],left:n[1],position:"fixed"}).animate({width:"+=100px",height:"+=100px",top:a(),left:a()},1e3).animate({width:"-=100px",height:"-=100px",top:a(),left:a()},1e3).animate({width:"+=100px",height:"+=100px",top:a(),left:a()},1e3).animate({width:"-=100px",height:"-=100px",top:a(),left:a()},1e3).animate({width:"+=1000px",height:"+=1000px",top:"-=500px",left:"-=500px"},1e3)}),setTimeout(function(){return i.fadeIn(function(){return e.remove()}),$(".panda").each(function(){return this.remove(),$("#panda-main").append(o),$("#panda-footer").append(r)}),n=!1},5e3))}),t=function(){var t,a;return t=$(window).height()-50,a=$(window).width()-50,[Math.floor(Math.random()*t),Math.floor(Math.random()*a)]},a=function(){var t,a;return t=Math.floor(400*Math.random()),a=Math.floor(2*Math.random()),0===a?"-="+t:1===a?"+="+t:void 0}}).call(this);