
<!doctype html>
<html lang="en" class="no-js">
  <head>
    <meta charset="utf-8">
    <link rel="dns-prefetch" href="//d2mdw063ttlqtq.cloudfront.net">
<link rel="dns-prefetch" href="//0.s3.envato.com">
<link rel="dns-prefetch" href="//thumb-tf.s3.envato.com" />
<link rel="dns-prefetch" href="//user-profile.s3.envato.com">
<link rel="dns-prefetch" href="//image-tf.s3.envato.com" />

    
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"fcf8d519de","applicationID":"13909","transactionName":"NTU0DRQNDwshOmIZBRM3dR8TDg84Nys/FRQYBSoLAxQKAjM=","queueTime":0,"applicationTime":38,"agent":"","atts":"DXgvW1wZQRQtPChSS1QOMhwLByUINi0+BFNaeCkKCkBZASUkPhVdVCg/CBMHEBMbOD8fBRk5NRVEWEEPMDw9Sl5ZeHZbDxJBXWZ6fUNfRGlpV1dbVUlweW9cUwMpPws5AwQCKjxvSlM7NSAQCg4CSHFmfVBZITM0HQkVEEcKHG1GX0dzejgWEg8CEy0vOxgCdW9KUUxQUWRgBjglOxZ2WQoLCAJkDygTGhlzejoOEAwKIWd4Rl9GdGhAVFZNX3NoHhEXFygzVlNRVEl3fm9cUwQ/LBAVCwwJZnJvFkcTaGwaA0AeGg=="}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VQcGQldQAQMJ"};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(15),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,o){try{d?d-=1:i("err",[o||new UncaughtException(t,n,e)])}catch(s){try{i("ierr",[s,c.now(),!0])}catch(u){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t){i("err",[t,c.now()])}var i=t("handle"),a=t(16),s=t("ee"),c=t("loader"),f=window.onerror,u=!1,d=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(l){"stack"in l&&(t(8),t(7),"addEventListener"in window&&t(5),c.xhrWrappable&&t(9),u=!0)}s.on("fn-start",function(t,n,e){u&&(d+=1)}),s.on("fn-err",function(t,n,e){u&&(this.thrown=!0,o(e))}),s.on("fn-end",function(){u&&!this.thrown&&d>0&&(d-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(8),s=t(7),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",y="pushState",g=t("loader");g.features.stn=!0,t(6);var b=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof b&&(this.bstStart=g.now())}),o.on(w,function(t,n){var e=t[0];e instanceof b&&i("bst",[e,n,this.bstStart,g.now()])}),a.on(m,function(t,n,e){this.bstStart=g.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),this.bstType])}),s.on(m,function(){this.bstStart=g.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=g.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t(18)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){var r=t("ee").get("history"),o=t(18)(r);n.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],7:[function(t,n,e){var r=t("ee").get("raf"),o=t(18)(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],8:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration="number"==typeof t[1]?t[1]:0,t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t(18)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],9:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,w,"fn-",s)}function i(t){v.push(t),h&&(g=-g,b.data=g)}function a(){for(var t=0;t<v.length;t++)r([],v[t]);v.length&&(v=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t(18)(u),l=NREUM.o,p=l.XHR,h=l.MO,m="readystatechange",w=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],v=[];n.exports=u;var y=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(m,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,y),y.prototype=p.prototype,d.inPlace(y.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var g=1,b=document.createTextNode(g);new h(a).observe(b,{characterData:!0})}else f.on("fn-end",function(t){t[0]&&t[0].type===m||a()})},{}],10:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<d;r++)t.removeEventListener(u[r],this.listener,!1);if(!n.aborted){if(e.duration=a.now()-this.startTime,4===t.readyState){n.status=t.status;var i=o(t,this.lastSize);if(i&&(e.rxSize=i),this.sameOrigin){var c=t.getResponseHeader("X-NewRelic-App-Data");c&&(n.cat=c.split(", ").pop())}}else n.status=0;e.cbTime=this.cbTime,f.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime])}}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return h(r)}function i(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.sameOrigin=e.sameOrigin}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(11),f=t("ee"),u=["load","error","abort","timeout"],d=u.length,l=t("id"),p=t(14),h=t(13),m=window.XMLHttpRequest;a.features.xhr=!0,t(9),f.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,p&&(p>34||p<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=h(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{f.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<d;s++)n.addEventListener(u[s],this.listener,!1)}),f.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),f.on("xhr-load-added",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],n)}),f.on("removeEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],n)}),f.on("fn-start",function(t,n,e){n instanceof m&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),f.on("fn-end",function(t,n){this.xhrCbStart&&f.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)})}},{}],11:[function(t,n,e){n.exports=function(t){var n=document.createElement("a"),e=window.location,r={};n.href=t,r.port=n.port;var o=n.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=n.hostname||e.hostname,r.pathname=n.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!n.protocol||":"===n.protocol||n.protocol===e.protocol,a=n.hostname===document.domain&&n.port===e.port;return r.sameOrigin=i&&(!n.hostname||a),r}},{}],12:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(15),s=t(16),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}finally{c.emit("fn-end",[f.now()],e)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now()])}},{}],13:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],14:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],15:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],16:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],17:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],18:[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(16),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=h(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([g,e,r,a]),a}}function p(t,n){v[t]=h(t).concat(n)}function h(t){return v[t]||[]}function m(t){return d[t]=d[t]||o(e)}function w(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var v={},y={},g={on:p,emit:e,get:m,listeners:h,context:n,buffer:w,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(15),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!x++){var t=b.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=l.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===l.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(15),u=t("ee"),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1026.min.js"},g=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:v,features:{},xhrWrappable:g};t(12),l[p]?(l[p]("DOMContentLoaded",i,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",s],null,"api");var x=0,E=t(17)},{}]},{},["loader",2,10,4,3]);</script>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>AQURA - Music Band Musicians &amp; DJ&#39;s HTML Template Preview - ThemeForest</title>
    <meta name="description" content="&amp;lt;h2&amp;gt;WordPress Version Available Right Now : &amp;lt;a class=&amp;quot;wordP&amp;quot; href=&amp;quot;https:...">
    <meta name="robots" content="noindex, follow" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />

    <link rel="stylesheet" media="all" href="//public-assets.envato-static.com/assets/market/core/index-32855347a999a026abf1a228122cafd4a1f3543b3044d8151a4fb0a6a6c607ae.css" />
    <link rel="stylesheet" media="all" href="//public-assets.envato-static.com/assets/market/pages/preview/index-23bd1ac2a83a91cc37b86401b06d5fd570071dcedbf6380197b77581f58044fd.css" />

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/icons/themeforest.net/apple-touch-icon-144x144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/icons/themeforest.net/apple-touch-icon-114x114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/icons/themeforest.net/apple-touch-icon-72x72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" href="/icons/themeforest.net/apple-touch-icon-precomposed.png" />

    <script src="//public-assets.envato-static.com/assets/market/pages/full_screen_preview/index-c063b80b50faca0e0485e90a35d8e1f7a3e7f6001f0fbd7128eeaa0880581914.js"></script>

    <script>
      //function to fix height of iframe!
      var calcHeight = function() {
        var headerDimensions = $('.preview__header').height();
        $('.full-screen-preview__frame').height($(window).height() - headerDimensions);
      }

      $(document).ready(function() {
        calcHeight();
      });

      $(window).resize(function() {
        calcHeight();
      }).load(function() {
        calcHeight();
      });
    </script>

    
  </head>
  <body class="full-screen-preview">
    
<div class="preview__header" data-view="ctaHeader">

  <div class="preview__envato-logo">
    <a href="https://themeforest.net/item/aqura-music-band-musicians-djs-html-template/14138040">Envato Market</a>
  </div>

  <div class="preview__actions">
  <div class="preview__action--buy">
    <a class="e-btn--3d -color-primary" href="https://themeforest.net/item/aqura-music-band-musicians-djs-html-template/14138040">Buy now</a>
  </div>

  <div class="preview__action--close">
    <a href="http://theme-brothers.com/AquraHTML/">
      <i class="e-icon -icon-cancel"></i><span>Remove Frame</span>
</a>  </div>
</div>
</div>

<iframe class="full-screen-preview__frame" src="http://theme-brothers.com/AquraHTML/" name="preview-frame" frameborder="0" noresize="noresize" data-view="fullScreenPreview">
</iframe>


    <script>$(function(){viewloader.execute(Views);});</script>

      <script>
  // Google Analytics Tracking Code
  (function () {
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })

      (window,document,'script','//www.google-analytics.com/analytics.js','ga');

    var ACCOUNTS = ["m"];
    window._envGaTrackerNames = ACCOUNTS;

    ga("create", "UA-11834194-7", {"name":"m","allowLinker":true});

    for (var i = 0; i < ACCOUNTS.length; i++) {
      t = ACCOUNTS[i];

      ga(t+'.require', 'linker');
      ga(t+'.linker:autoLink', ["activeden.net","audiojungle.net","themeforest.net","videohive.net","graphicriver.net","3docean.net","codecanyon.net","photodune.net","market.envato.com","market.styleguide.envato.com","elements.envato.com","build.envatohostedservices.com","author.envato.com"]);

      ga(t+'.require', 'ec');

      ga(t+'.require', 'displayfeatures');

      ga(t+'.require', 'linkid', 'linkid.js');



      if ('') {
        ga(t+'.send', {
          hitType: 'pageview',
          page: ''
        });
      } else if ('') {
        // append the analytics_suffix to the page path so the flash alert/error type can be tracked
        var analyticsSuffix = $.trim('').replace(/([A-Z])/g, '$1').replace(/[-_\s]+/g, '-').toLowerCase();
        var uri = URI(window.location.pathname + window.location.search);
        uri.path(uri.path() + '/' + analyticsSuffix);
        var tracking_path = uri.path() + uri.search();
        ga(t+'.send', {
          hitType: 'pageview',
          page: tracking_path,
        });
      } else {
        ga(t+'.send', 'pageview');
      }
    }
  }());

  
</script>


  
<script>
// GA: universal analytics link wrapper
(function(){
    window._envTrkrs = [["m", "UA-11834194-7"]];

    var debug = false;
    var MAX_RETRIES = 10;

    /*
       The script needs to wait until the Analytics script
       has been downloaded from Google before initializing
    */
    var waitForAnalytics = function(){
        this.count = this.count || 0;

        if (window.ga && ga.getByName) {
            e.init();
        } else {
            if (count < MAX_RETRIES) { setTimeout(waitForAnalytics, 250); }
            count++;
        }
    };

    var e = {
        _envArray: [],
        _envTrkrs: (window._envTrkrsCust && window._envTrkrsCust.length) ? window._envTrkrs.concat(window._envTrkrsCust) : window._envTrkrs,
        init: function() {
            for (var i=0; i < _envTrkrs.length; i++) {
              if(!ga.getByName(_envTrkrs[i][0])) {
                ga("create", _envTrkrs[i][1], "auto", {name: _envTrkrs[i][0], allowLinker: true});
              }
            }

            document.addEventListener('DOMContentLoaded', function(){
                e.wrapperInit();
            });

            if (debug) {console.log('Initiated');}
        },
        wrapperInit: function() {
            if (typeof window._envIsRunning != 'undefined' || window._envIsRunning == true) {
                return
            }
            window._envIsRunning = true;

            if (document.addEventListener) {
                document.addEventListener('click', function(event){
                    var target = event.target;
                    if (target && target.tagName === 'A') {
                        e._envLinksTracker(event);
                    }
                });
            }
        },
        isInArray: function(e, t) {
            for (var n = 0; n < t.length; n++) {
                var r = new RegExp(t[n], 'i');
                if (r.test(e)) {
                    return n
                }
            }
            return -1
        },
        _envTrackevent: function(e, t, n, r) {
            for (var i = 0; i < this._envTrkrs.length; i++) {
                var s = this._envTrkrs[i][0].length == 0 ? '' : this._envTrkrs[i][0] + '.';
                r.length == 0 ? ga(s + 'send', 'event', e, t, n) : ga(s + 'send', 'event', e, t, n, r)
            }
        },
        _envTrackpageview: function(e, t) {
            t = t.charAt(0) == '/' ? t : '/' + t;
            for (var n = 0; n < this._envTrkrs.length; n++) {
                var r = this._envTrkrs[n][0].length == 0 ? '' : this._envTrkrs[n][0] + '.';
                ga(r + 'send', 'pageview', e + t);
            }
        },
        _envLinksTracker: function(t) {
            var r = false;
            var i = {
                outbound: {
                    run: true,
                    useEvent: true
                },
                download: {
                    run: true,
                    useEvent: true,
                    reg: ''
                },
                self: {
                    run: false,
                    useEvent: true
                },
                mail: {
                    run: true,
                    useEvent: true
                },
                ext: /\.(doc.?|xls.?|ppt.?|exe|zip|rar|gz|tar|tgz|dmg|csv|pdf|xpi|txt|mp3)$/i
            };
            var s = t.srcElement ? t.srcElement : this;
            if (t.srcElement) {
                r = true
            }
            while (s.tagName != 'A') {
                s = s.parentNode
            }
            if (s.href == undefined || s.href == null) {
                return true
            }
            var o = s.href;
            if (o.length == 0) return;
            var u = s.hostname.toLowerCase();
            var a = s.pathname;
            if (a.length == 0) {
                a = '/'
            } else if (a.substr(0, 1) != '/') {
                a = '/' + a
            }
            var f = s.protocol;
            var l = s.search;
            var c = location.hostname;
            c = c.replace(/^www\./i, '').toLowerCase();
            u = u.replace(/^www\./i, '').toLowerCase();
            if (o.match(/^#/)) {
                if (i.self.run) {
                    i.self.useEvent ? e._envTrackevent('self', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/self', '/' + o);
                    return true
                }
            } else if (f.match(/^mailto:/i)) {
                if (i.mail.run) {
                    o = o.replace(/^mailto:/i, '');
                    i.mail.useEvent ? e._envTrackevent('mailto', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/mailto', o);
                    return true
                }
            } else if ((new RegExp(i.ext)).test(a)) {
                if (i.download.run) {
                    o = o.replace(/^https?:\/\//i, '');
                    i.download.useEvent ? e._envTrackevent('download', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/download', o);
                    return true
                }
            } else if (u == undefined || u.length == 0 || f.match(/^javascript:/i)) {
                return
            } else if ((new RegExp(c + '$', 'i')).test(u) || (new RegExp(u + '$', 'i')).test(c)) {
                if (i.download.run && i.download.reg.length != 0) {
                    if ((new RegExp(i.download.reg, 'i')).test(a + l)) {
                        o = o.replace(/^https?:\/\//i, '');
                        i.download.useEvent ? e._envTrackevent('download', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/download', o);
                        return true
                    }
                }
            } else if (u != c) {
                if (e.isInArray(u, e._envArray) == -1) {
                    if (i.outbound.run) {
                        i.outbound.useEvent ? e._envTrackevent('outbound', 'click - ' + c, u + a + l, '') : e._envTrackpageview('/virtual/outbound', u + a);
                        return true
                    }
                } else if (e.isInArray(u, e._envArray) != -1) {
                    var h = s.target;
                    if (h != null && h == '_blank') {
                        if ((new RegExp(/_utma=/)).test(l)) {
                            return true
                        }
                        var p = e._envTrkrs[0][0].length == 0 ? '' : _envTrkrs[0][0] + '.';
                        return true
                    } else {
                        return false
                    }
                }
            }
        }
    };

    waitForAnalytics();
})()
</script>



  <script type="text/javascript">
  // Google AdWords Remarketing
  /* <![CDATA[ */
  var google_conversion_id = 943617023;
  var google_conversion_label = "u-J6CI3SqQMQp-WC_AM";
  var google_custom_params = window.google_tag_params;
  var google_remarketing_only = true;
  /* ]]> */
</script>
<script src="//www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
  <div style="display:inline;">
    <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/943617023/?value=0&amp;amp;label=u-J6CI3SqQMQp-WC_AM&amp;amp;guid=ON&amp;amp;script=0"/>
  </div>
</noscript>


  <div id="intercom-setup" class="is-hidden" data-view="intercomSetup" data-intercom-settings-payload="{&quot;app_id&quot;:&quot;s9exa3j0&quot;}" data-intercom-app-id="s9exa3j0" data-should-shutdown="false" data-should-hide="true"></div>


  <script src="//d3cxv97fi8q177.cloudfront.net/mediasource-A249085-fc90-4e98-904f-95b25288c53b1-c-4415.min.js"></script>


</body></html>
