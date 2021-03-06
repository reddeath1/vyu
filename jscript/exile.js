/**
 ***************************************************************************************************************************************************
 ***************************************************************************************************************************************************
 *******************************************************              ******************************************************************************
 *******************************************************   @EXILE  ******************************************************************************
 *******************************************************              ******************************************************************************
 ***************************************************************************************************************************************************
 ********************************************************                     **********************************************************************
 ********************************************************  @Frank Galos  **********************************************************************
 ********************************************************                     **********************************************************************
 ***************************************************************************************************************************************************
 ***************************************************************************************************************************************************
 */

Exile = function (selector) {

    'use strict';

    let ex = {},
        lostData = '',
        resizing = false
        ;

    ex.init = selector;

    if(typeof selector === 'object'){
        ex.element = selector;
    }
    else {
        ex.element = document.querySelector(ex.init);
    }

    /**
     * @param event
     * @param func
     */
    ex.on = function (event,func) {
        this.element['on' + event] = func;
    };

    ex.off = function(event,func){

        if(typeof func !== null){
            this.element.removeEventListener(event,func);
        }else{
            this.element['on' + event] = null;
        }
    };

    /**
     * @param elem
     * @param func
     */
    ex.each = function (elem,func) {
        let e = elem;

        if(!this.Object(elem)){
            e = document.querySelectorAll(elem)
        }
        Array.prototype.slice.call(e).forEach(func);
    };

    /**
     * @param obj
     */
    ex.for = function(obj){
        let o = obj,
            start = o.start,
            end = o.data,
            rule = o.asoc,
            callback = o.func;


        if(typeof obj === 'undefined' ||
            !this.Object(obj)){
            this.error('undefined arguments or argument is not an object');
        }

        if(typeof rule !== 'undefined'
            && rule !== null && rule){
            for (let o in end)(callback)(end[o]);
        }
        else{
            if(this.Num(end)){
                for (let i = start; i <= end;i++)(callback)(i);
            }else{
                for (let i = start; i < end.length;i++)(callback)(i);
            }
        }
    };

    /**
     * @param opt
     * @returns {{top: number, left: number, height: Number, width: Number}}
     */
    ex.offset = function() {
        let curleft = 0,
            curtop = 0,
            height = 0,
            width = 0,
            yOffset = 0,
            wOffset = 0,
            obj = this.element;

        do {
            curleft += obj.offsetLeft;
            curtop += obj.offsetTop;
            height += obj.offsetHeight;
            width += obj.offsetWidth;
        } while (obj = obj.offsetParent);
        return {
            left: curleft,
            top: curtop,
            height: height,
            width: width
        };
    };

    ex.isFunc = function (func) {
            var getType = {};
            return func && getType.toString.call(func) === '[object Function]';
    };

    ex.width = function(){
        var w = this.innerWidth
            || this.element.clientWidth;

        return w;
    };

    ex.height = function () {
        h = this.element.innerHeight
            || this.element.clientHeight;

        return h;
    };

    /**
     * @returns {string}
     */
    ex.class = function(){
        if(this.element !== null){
            return this.element.className;
        }
    };

    /**
     * @returns {string}
     */
    ex.name = function(){
        return this.element.tagName.toLowerCase();
    };

    /**
     * @param val
     * @returns {string}
     */
    ex.html = function (val) {
        if(typeof val !== 'undefined'){
            this.element.innerHTML = val;
        }else{
            return this.element.innerHTML;
        }
    };

    /**
     * @param val
     * @returns {string}
     */
    ex.text = function (val) {

        if(typeof val !== 'undefined'
            && val !== null && val !== ''){
            this.element.innerText = val;
        }else{
            return this.element.innerText;
        }
    };

    /**
     * Print error to the console.
     * For development purpose only.
     * @param err
     */
    ex.error = function (err) {
        if(this.element !== null){
            throw new Error(err);
        }
    };

    /**
     * @param logs
     */
    ex.log = function (msg) {
        return console.log(msg);
    };

    /**
     * @param shadow
     * @param time
     */
    ex.hide = function (time) {

        if(this.element !== null){
            let
                e = this;

            if(time === null || time === ''){
                time = 100;
            }

            e.css({'transition':'.5s linear 0s','opacity':0});

            setTimeout(function () {
                e.css({'display':'none'});

            },time);
        }
    };

    /**
     * @param shadow
     * @param time
     */
    ex.show = function (time) {
        if(this.element !== null){
            let
                e = this;

            if(typeof time === 'undefined' || time === null || time === ''){
                time = 100;
            }

            e.css({'transition':'.5s linear 0s','display':'block'});


            setTimeout(function () {
                e.css({'opacity':1});
            },time);
        }

    };

    /**
     * @param name
     * @param value
     * @returns {string}
     */
    ex.attr = function (name,value) {
        let
            e = this.element;

        if(name !== null && name !== ''
            && value !== null && value !== ''){
            return e.setAttribute(name,value);
        }else
        if(name !== null || name !== ''
            && value === null || value === ''){
            return e.getAttribute(name);
        }else{
            this.error("undefined attribute name and value");
        }
    };

    /**
     * @param name
     * @returns {neditor}
     */
    ex.rAttr = function (name) {
        let e = this.element;

        if(name !== null && name !== ''){
            e.removeAttribute(name);
            return this;
        }else{
            this.error("undefined attribute name");
        }

    };

    /**
     * @returns {*}
     */
    ex.parent = function () {
        return this.element.parentElement;
    };

    /**
     * @returns {HTMLElement[]}
     */
    ex.children = function () {
        return this.element.children;
    };

    /**
     * @param value
     */
    ex.value = function(value){
        if(typeof value !== 'undefined' && value !== null){
            this.element.value = value;
        }else{
            return this.element.value;
        }
    };

    /**
     * @param obj
     * @returns {{width: number, height: number}}
     */
    ex.css = function(obj){
        let e = this;
        if(this.Object(obj)){
            let s = obj;

            for(let keys in s){
                if(e.element !== null){
                    e.element.style[keys] = s[keys];
                }
            }
        }else{
            return {width:e.element.offsetWidth,
                height:e.element.offsetHeight};
        }
    };

    /**
     * @param n
     * @returns {boolean}
     */
    ex.Num = function(n){
        let nm = /[0-9]/gi;

        if(Number.isInteger(n)){
            return true;
        }else if(nm.test(n)){
            return true;
        }

        return false;
    };

    /**
     *
     * @param obj
     * @returns {boolean}
     */
    ex.Object = function (obj) {
        return Object.prototype.toString.call(obj)
            === '[object Object]';
    };

    /**
     * @returns {{url: (string|*), path: (Array|*), port: (string|*)}}
     */
    ex.addr = function () {
        let
            url = window.location,
            protocols,
            domain,
            paths,
            ports,
            link;

        protocols = url.protocol + "//";
        domain = url.hostname;
        paths = url.pathname;
        ports = url.port;

        paths = paths.split("/");

        link = protocols + domain + "/";

        return {url:link,path:paths,port:ports,domain:domain};
    };

    /**
     * Hide and show elements
     * @param shadow
     * @param time
     */
    ex.toggle = function (obj) {
        let e = this;

        if(typeof obj !== 'undefined'){
            let
                s = '',
                time = obj.time,t1 = 100;

            if(typeof obj.shadow !== 'undefined'){
                s = Exile(obj.shadow)
            }

            if(typeof obj === 'undefined' ||
                time === null ||
                time === ''){
                time = 100;
            }

            if(e.element !== null){

                if(e.element.style.display === 'block'){
                    e.css({'opacity':0});
                    if(s.element !== null){
                        s.css({'opacity':0});
                    }

                    setTimeout(function () {
                        e.hide();

                        if(s !== ''){
                            s.hide();
                        }
                    },time);
                }else{

                    if(s !== ''){
                        s.show();
                    }

                    e.show();

                    setTimeout(function () {
                        e.css({'opacity':1});

                        if(s !== ''){
                            s.css({'opacity':1});
                        }
                    },t1);
                }
            }
        }

    };

    /**
     * @param style
     */
    ex.loader = function (style)
    {
        let css = '';

        if(typeof style !== 'undefined'){
            css = 'style="'+style.css+'"';
        }

        let url = this.addr(),
            lnk = url.url,
            path = url.path[1];

        if(url.domain === 'localhost'){
            lnk = lnk+path+'/';
        }

        ex.html(
            '<img src="'+lnk+'images/logos/loader1.svg"' +
            'alt="Please wait ...."'+css +
            ' title="Please wait ..... ">');
    };

    /**
     * @param number
     * @returns {*}
     * @constructor
     */
    ex.SigFigure = function(number) {

        let Sig = ["", "k", "M", "B", "T", "Q", "V"];

        if(ex.Num(number)){
            // what tier? (determines SI prefix)
            let tier = Math.log10(Math.round(number)) / 3 | 0;

            // if zero, we don't need a prefix
            if(tier === 0) return number;

            // get postfix and determine scale
            let postfix = Sig[tier];
            let scale = Math.pow(10, tier * 3);

            // scale the number
            let scaled = number / scale;

            // format number and add postfix as suffix
            let formatted = scaled.toFixed(1) + '';

            // remove '.0' case
            if (/\.0$/.test(formatted))
                formatted = formatted.substr(0, formatted.length - 2);

            return formatted + postfix;
        }
    };

    /**
     *
     */
    ex.centere = function () {
        var e = this.element,
            ww = window.innerWidth,
            wh = window.innerHeight,
            ew = e.offsetWidth,
            eh = e.offsetHeight,
            Wvalue = (ww/2) - (ew/2),
            nHvalue = (wh/2) - (eh/2);


        Exile(e).css({'margin-left':Wvalue+'px',
            'margin-top':nHvalue+'px'});

    };

    /**
     * @type {{circle: circle}}
     */
    ex.draws = {
        circle:function(x, y, text,color,iniColor, callback){
            (function() {
                let requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame;
                window.requestAnimationFrame = requestAnimationFrame;
            }());

            if(ex.Object(ex)){
                ex = ex.element;
            }else{
                ex = Exile(ex).element;
            }

            let canvas = ex,
                context = canvas.getContext('2d'),
                circles = [],
                radius = 45,
                endPercent = 101,
                curPerc = 0,
                circ = Math.PI * 2,
                quart = Math.PI / 2;
            text = Exile().SigFigure(text);

            context.lineWidth = 3;
            context.strokeStyle = iniColor;
            context.shadowOffsetX = 0;
            context.shadowOffsetY = 0;

            context.clearRect(0, 0, window.innerWidth, window.innerHeight);
            context.beginPath();
            context.arc(x,50, radius, - (quart), ((circ) * 1) - quart, false);
            context.stroke();

            function doText(context, x, y, text) {
                context.fillStyle = color;
                context.font = "20px sans-serif";
                context.fillText(text, x - 15, y / 1.8);
            }

            function animate(current) {
                context.strokeStyle = color;
                //context.lineWidth = 5;
                //context.clearRect(0, 0, canvas.width, canvas.height);
                context.beginPath();
                context.arc(x, 50, radius, - (quart), ((circ) * current) - quart, false);
                context.stroke();
                curPerc++;
                if (circles.length) {
                    for (let i = 0; i < circles.length; i++) {
                        context.beginPath();
                        context.arc(circles[i].x, circles[i].y, radius, -(quart), ((circ) * circles[i].curr) - quart, false);
                        context.stroke();
                    }
                }

                if (curPerc < endPercent) {
                    requestAnimationFrame(function () {
                        animate(curPerc / 100)
                    });
                } else {
                    let circle = {
                        x: x,
                        y: y,
                        curr: current,
                        text: text
                    };
                    circles.push(circle);
                    if (callback) callback.call();
                }
            }

            doText(context, x, y, text);
            animate();
        }
    };

    /**
     * @returns {*}
     */
    ex.count = function(){
        let current = parseInt(data, 10);
        this.html(++current);
        if(current !== this.html()){
            setTimeout(function(){ex.count(data,fill)}, 50);
        }

        return fill;
    };

    /**
     * @param obj
     * @returns {boolean}
     */
    ex.isEmpty = function(obj) {

        if (obj == null) return true;

        if (obj.length > 0)    return false;
        if (obj.length === 0)  return true;

        if (typeof obj !== "object") return true;


        for (let key in obj) {
            if (hasOwnProperty.call(obj, key)) return false;
        }

        return true;
    };

    ex.empty = function(string){
        if(typeof string !== 'undefined'){
            return string.length < 1;
        }else{
            return this.value().length < 1;
        }
    };

    /**
     * @param obj
     * @returns {*}
     */
    ex.inArray = function (obj) {
        let o = obj,
            search = o.search,
            array = o.array,
            rule  = o.rule;

        for(let i = array.length-1; i >= 0; i--){
            if(array[i].match(search)){
                console.log(i);
                if(rule !== null && rule !== ''){
                    array.splice(i,1);
                    return {status:true,data:array};
                }else{
                    return {status:true,data:''};
                }
            }else{
                return {status:false,data:array+'-'+search};
            }
        }
    };

    /**
     * @param callback
     */
    ex.isOnline = function(callback){

        /*compatibility for firefox and chrome*/
        let RTCPeerConnection = window.RTCPeerConnection
                || window.mozRTCPeerConnection
                || window.webkitRTCPeerConnection,
            useWebKit = !!window.webkitRTCPeerConnection;

        /*bypass naive webrtc blocking using an iframe*/
        if(!RTCPeerConnection) {
            /*//NOTE: you need to have an iframe in the page
             // right above the script tag
             //
             //<iframe id="iframe" sandbox="allow-same-origin" style="display: none"></iframe>
             //<script>...getIPs called in here...
             //*/
            let win = iframe.contentWindow;
            RTCPeerConnection = win.RTCPeerConnection
                || win.mozRTCPeerConnection
                || win.webkitRTCPeerConnection;
            useWebKit = !!win.webkitRTCPeerConnection;
        }

        /*minimal requirements for data connection*/
        let mediaConstraints = {
            optional: [{RtpDataChannels: true}]
        };

        /*//firefox already has a default stun server in about:config
         //    media.peerconnection.default_iceservers =
         //    [{"url": "stun:stun.services.mozilla.com"}]*/
        let servers = undefined;

        /*//add same stun server for chrome*/
        if(useWebKit)
            servers = {iceServers: [{urls: "stun:stun.services.mozilla.com"}]};

        /*//construct a new RTCPeerConnection*/
        let pc = new RTCPeerConnection(servers, mediaConstraints);

        //create a bogus data channel
        pc.createDataChannel("");

        let fn = function() {};

        /*//create an offer sdp*/
        pc.createOffer(function(result){

            /*//trigger the stun server request*/
            pc.setLocalDescription(result, fn, fn);

        }, fn);

        /*//wait for a while to let everything done*/
        setTimeout(function(){
            /*read candidate info from local description*/

            let lines = pc.localDescription.sdp.split("\n");
            /* return `true`:"online" , or `false`:"offline"*/
            let res = lines.some(function(line) {
                return line.indexOf("a=candidate") === 0
            });
            callback(res);
        }, 10000);
    };

    /**
     * @returns {string}
     * @param today
     */
    ex.date = function (today) {
        var week = ['Sunday',
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday',
            'Friday',
            'Saturday'];
        var day  = week[today.getDay()];
        var dd   = today.getDate();
        var mm   = today.getMonth()+1; //January is 0!
        var yyyy = today.getFullYear();
        var hour = today.getHours();
        var minu = today.getMinutes();
        var sec = today.getSeconds();

        if(dd<10)  { dd='0'+dd }
        if(mm<10)  { mm='0'+mm }
        if(minu<10){ minu='0'+minu }
        if(sec<10){ minu='0'+minu }
        if(hour<10)  { hour='0'+hour }

        return yyyy+'-'+mm+'-'+dd+' '+hour+':'+minu+":"+sec;
    };

    /**
     * @type {{scroll: scroll, yPos: yPos, elYPos: elYPos}}
     */
    ex.Scroller = {
        scroll:function(){

            let start = ex.Scroller.yPos(),
                stop = ex.Scroller.elYPos(ex),
                distance = stop > start ? stop - start : start - stop,
                speed = Math.round(distance / 100),
                step = Math.round(distance / 25),
                leap = stop > start ? start + step : start - step,
                timer = 0;

            if (distance < 100) {
                scrollTo(0, stop);
                return;
            }

            if (speed >= 20) speed = 20;

            if (stop > start) {
                for ( let i = start; i < stop; i += step ) {
                    setTimeout("window.scrollTo(0, "+leap+")", timer * speed);
                    leap += step;
                    if (leap > stop) leap = stop; timer++;
                }
                return;
            }

            for ( let i = start; i > stop; i -= step ) {
                setTimeout("window.scrollTo(0, "+leap+")", timer * speed);
                leap -= step;
                if (leap < stop) leap = stop; timer++;
            }


            return false;
        }
        ,

        yPos:function () {
            let y = 0;

            /* Firefox, Chrome, Opera, Safari*/
            if (self.pageYOffset){
                y = self.pageYOffset;
                return y;
            }else if (document.documentElement && document.documentElement.scrollTop){
                /* Internet Explorer 6 - standards mode*/
                y = document.documentElement.scrollTop;
                return y;

            }else if(document.body.scrollTop){
                y = document.body.scrollTop;
                return y;
            }
            // Internet Explorer 6, 7 and 8
            return y;
        },

        elYPos:function(id){
            let e = id.element,y,node;
            if(e !== null){
                y = e.offsetTop;
                node = e;

                while (node.offsetParent && node.offsetParent != document.body) {
                    node = node.offsetParent;
                    y += node.offsetTop;
                }
                return y;
            }
        },

        Top :function() {
            return (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;
        },

        Left:function(){
            return (window.pageXOffset !== undefined) ? window.pageXOffset : (document.documentElement || document.body.parentNode || document.body).scrollLeft;
        }
    };

    /**
     * @param place
     */
    ex.go = function (place) {
        window.location.href = ""+place+"";
    };

    /**
     * @returns {*}
     */
    ex.lastChild = function () {
        return this.element.lastElementChild;
    };

    /**
     * @param e
     * @returns {boolean}
     */
    ex.isEmail = function(e){
        let email = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i;

        return email.test(e);
    };

    /**
     * @param index
     * @returns {string}
     */
    ex.eq = function(index){
        let e = this.class(),c = e.split(' ')[0];
        e = document.querySelectorAll('.'+c)[index];
        if(typeof e !== 'undefined'){
            return e;
        }
    };

    /**
     * @param index
     * @returns {*}
     */
    ex.sAll = function(index){
        let e = this,
            c = e.class();
        if(typeof index !== 'undefined'
            && index !== null
            && index !== ''){
            return document.querySelectorAll('.'+c)[index];
        }

        return document.querySelectorAll('.'+c);
    };

    /**
     * @param el
     * @param className
     * @returns {boolean}
     */
    ex.hasClass = function(className){
        let e = this;
        if(e.element.classList)
            return e.element.classList.contains(className);
        else
            return !!e.element.className.match(new RegExp('(\\s|^)' + className + '(\\s|$)'));
    };

    /**
     * @param className
     */
    ex.addClass = function(className){
        let e = this;

        if(e.element.classList)
            return e.element.classList.add(className);

        else if(!this.hasClass(className))
            e.element.className += '' + className;
    };

    /**
     * @param className
     */
    ex.removeClass = function(className){
        let e = this,
            reg = new RegExp("(?:^|\\s+)" + className + "(?:\\s+|$)", "g");

        if(e.element.classList)
            e.element.classList.remove(className);
        else if(this.hasClass(className))
            e.element.className = e.element.className.replace(reg,' ');
    };

    /**
     * @param className
     */
    ex.toggleClassName = function (className) {
        this[this.hasClassName(className) ? "removeClassName" : "addClassName"](className);
    };

    /**
     *
     */
    ex.refresh = function(){
        location.reload(true);
    };

    /**
     * @param n
     * @returns {Number}
     */
    ex.toNumber = function(n){
        return parseInt(n);
    };

    /**
     * @type {{init: init, name: name, version: version, agent: agent, os: os, cookieEnabled: cookieEnabled, info: info}}
     */
    ex.Browser = {
        init:function(){
            let version = navigator.appVersion,
                Agent = navigator.userAgent,
                browserName  = navigator.appName,
                fullVersion  = ''+parseFloat(navigator.appVersion),
                majorVersion = parseInt(navigator.appVersion,10);

            return {v:version,agt:Agent,nm:browserName,vf:fullVersion,vm:majorVersion};
        },

        name:function () {
            let ag = ex.Browser.init().agt,verOffset,nameOffset,name;

            /* In Opera, the true version is after "Opera" or after "Version"*/
            if ((verOffset = ag.indexOf("Opera"))!=-1 || (verOffset = ag.indexOf("OPR")) !=-1) {
                name = "Opera";
            }

            /* In MSIE, the true version is after "MSIE" in userAgent*/
            else if ((verOffset = ag.indexOf("MSIE"))!=-1) {
                name = "IE";
            }

            /* In MSIE, the true version is after "MS Edge" in userAgent*/
            else if ((verOffset = ag.indexOf("Edge"))!=-1) {
                name = "Edge";
            }

            /* In Chrome, the true version is after "Chrome" */
            else if ((verOffset = ag.indexOf("Chrome"))!=-1) {
                name = "Chrome";
            }

            /* In Safari, the true version is after "Safari" or after "Version"*/
            else if ((verOffset = ag.indexOf("Safari"))!=-1) {
                name = "Safari";
            }

            /* In Firefox, the true version is after "Firefox"*/
            else if ((verOffset = ag.indexOf("Firefox"))!=-1) {
                name = "Firefox";
            }

            /* In most other browsers, "name/version" is at the end of userAgent*/
            else if ( (nameOffset = ag.lastIndexOf(' ')+1) <
                (verOffset = ag.lastIndexOf('/')) )
            {
                name = ag.substring(nameOffset,verOffset);
                if (name.toLowerCase() == name.toUpperCase()) {
                    name = ex.Browser.init().nm;
                }
            }

            return name;
        },

        version:function(){
            let verOffset,ag = ex.Browser.init().agt,nameOffset,version,v,major;

            if ((verOffset = ag.indexOf("MSIE"))!=-1) {
                version = ag.substring(verOffset+5);
            }

            /* In MSIE, the true version is after "MS Edge" in userAgent*/
            else if ((verOffset = ag.indexOf("Edge"))!=-1) {
                version = ag.substring(verOffset+5);
            }

            /* In Chrome, the true version is after "Chrome"*/

            else if ((verOffset = ag.indexOf("Chrome"))!=-1) {
                version = ag.substring(verOffset+7);
            }

            /* In Safari, the true version is after "Safari" or after "Version"*/
            else if ((verOffset = ag.indexOf("Safari"))!=-1) {
                version = ag.substring(verOffset+7);
                if ((verOffset = ag.indexOf("Version"))!=-1){
                    version = ag.substring(verOffset+8);
                }
            }

            /* In Firefox, the true version is after "Firefox"*/
            else if ((verOffset = ag.indexOf("Firefox"))!=-1) {
                version = ag.substring(verOffset+8);
            }

            /* In most other browsers, "name/version" is at the end of userAgent*/
            else if ( (nameOffset = ag.lastIndexOf(' ')+1) <
                (verOffset = ag.lastIndexOf('/')) )
            {
                version = ag.substring(verOffset+1);

            }

            /* trim the fullVersion string at semicolon/space if present*/
            if ((v = version.indexOf(";"))!=-1)
                version = version.substring(0,v);
            if ((v=version.indexOf(" "))!=-1)
               version = version.substring(0,v);

            major = parseInt(''+version,10);

            if (isNaN(major)) {
                version  = ''+parseFloat(navigator.appVersion);
                major = parseInt(navigator.appVersion,10);
            }

            return {version:version,major:major};
        },

        agent:function () {
            return ex.Browser.init().agt;
        },

        os:function (){
            let OS = "Unknown OS",ag = ex.Browser.init().agt;
            if (ag.indexOf("Win")!=-1) OS = "Windows";
            if (ag.indexOf("Mac")!=-1) OS = "MacOS";
            if (ag.indexOf("X11")!=-1) OS = "UNIX";
            if (ag.indexOf("Linux")!=-1) OS = "Linux";

            return OS;
        },

        cookieEnabled:function(){
            return navigator.cookieEnabled;
        },

        info:function(){
            return {
                name:ex.Browser.name(),
                version:ex.Browser.version(),
                os:ex.Browser.os(),
                agent:ex.Browser.agent(),
                cookieEnabled:ex.Browser.cookieEnabled()
            }
        }
    };

    ex.center = function () {
        let e = this.element,
            ww = window.innerWidth,
            wh = window.innerHeight,
            ew = e.offsetWidth,
            eh = e.offsetHeight,
            Wvalue = (ww/2) - (ew/2),
            Hvalue = (wh/2) - (eh/2);

        e = this;
        if(ww > 800){
            e.css({'margin-left':Wvalue+'px'});
        }

        e.css({'margin-top':Hvalue+'px'});

    };
    /**
     *
     * @type {{Android: Android, BlackBerry: BlackBerry, iOS: iOS, Opera: Opera, Windows: Windows, mobile: mobile}}
     */
    ex.Mobile = {
        Android: function() {
            return {
                os:navigator.userAgent.match(/Android/i),
                version:ex.Browser.info().version,
                name:ex.Browser.info().name
            };
        },

        BlackBerry: function() {
            return {
                os:navigator.userAgent.match(/BlackBerry/i),
                version:ex.Browser.info().version,
                name:ex.Browser.info().name
            };
        },

        iOS: function() {
            return {
                os:navigator.userAgent.match(/iPhone|iPad|iPod/i),
                version:ex.Browser.info().version,
                name:ex.Browser.info().name
                };
        },

        Opera: function() {
            return {
                os:navigator.userAgent.match(/Opera Mini/i),
                version:ex.Browser.info().version,
                name:ex.Browser.info().name
            };
        },

        Windows: function() {
            return {
                os:navigator.userAgent.match(/IEMobile/i),
                version:ex.Browser.info().version,
                name:ex.Browser.info().name
            };
        },

        mobile: function() {
            return (ex.Mobile.Android() || ex.Mobile.BlackBerry() || ex.Mobile.iOS() || ex.Mobile.Opera() || ex.Mobile.Windows());
        }
    };

    /**
     * load bar
     */
    ex.pageLoad = function(){
        let e = this,width = 100,
            xhr,percent,c = e.children(),el;

        if(c.length > 0){
            el = Exile(c[0]);
        }

        if (window.XMLHttpRequest) {
            xhr = new window.XMLHttpRequest();
        }else if(window.ActiveXObject){
            xhr = new ActiveXObject();
        }else {

            throw new Error ("Ajax is not supported in your browser");
        }

        xhr.open('POST','');
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xhr.onreadystatechange = function(){
            ex.for({
                start:0,
                data:width,
                asoc:null,
                func:function(i){
                    if(el.element === null){
                        e.css({display:'block',i:'%'});
                    }else{
                        e.css({display:'block'});
                        el.css({width:i+'%'});
                    }
                }
            });

            if(xhr.readyState == 4){
                if(xhr.status == 200 && xhr.status < 300){
                    setTimeout(function(){
                        e.css({display:'none'});
                    },700);
                }
            }
        };
        xhr.send();
    };

    ex.newTab = function(place){
        let win = window.open(place, '_blank');
        if (win) {
            //Browser has allowed it to be opened
            win.focus();
        } else {
            //Browser has blocked it
            alert('Please allow popups for this website');
        }
    };

    ex.stop = function(){
        function noError(){return true;}
        window.onerror = noError;

        window.onload = function () {
            noError();
        };

        var i = 0;
        function logs(){
            var m = ['', ' .N8888N.  888                       888', 'd88P  Y88b 888                       888', 'Y88b.      888                       888', ' "Y888b.   888888  .d88b.  88888b.   888', '    "Y88b. 888    d88""88b 888 "88b  888', '      "888 888    888  888 888  888  Y8P', 'Y88b  d88P Y88b.  Y88..88P 888 d88P', ' "Y8888P"   "Y888  "Y88P"  88888P"   888', '                           888', '                           888', '                           888'],
                text = "This is a browser feature intended for developers. If someone told you to copy-paste something here to enable a Nevaa feature or \"hack\" someone's account, it is a scam.";

            console.log('\n\n\n' + m.join('\n') + '\n\n' + text + '\n');
        }

        let consoleHolder = console;
        function debug(bool) {
            if (!bool) {
                consoleHolder = console;
                let console = {};
                console.log = function () {
                };
                console.error = function () {
                };
                console.debug = function () {
                };
                console.warn = function () {
                };
                console.info = function () {
                };
            } else {
                console = consoleHolder;
            }
        }


        logs();
        debug(false);
    };

    ex.DescribeLoaded = {loaded:false};

    ex.describe = {
        init:function (obj) {
            let o = obj,
                b = $$('body'),
                d = b.html();

            b.css({overflow:'hidden'});
            b.html(d+ex.describe.template(o.tag));

            lostData = d;

           let cont =  $$('.describes');

           cont.css({display:'block'});
           $$('.deshadow').css({display:'block'});

           setTimeout(function(){
               cont.center();
           },200);

            /**
             * read file expect input file as it's initial element
             * for reading local files
             */
            ex.describe.reader({src:'.org-i',callback:o.callback,d:d,data:o.data});
            (ex.DescribeLoaded) ? cont.css({opacity:1}) : ex.error("describe failed to load please try again");

        },

        reader:function(obj){
            var e = ex,
                url = ex.addr(),
                lnk = url.url,
                path = url.path[1],
                o = obj,
                d = o.d,
                src = o.src,
                data = o.data,
                callback = o.callback;

            if(url.domain.match('localhost')){
                lnk = lnk+path+'/';
            }else if(url.domain.match('192.168.43.143')){
                lnk = lnk+path+'/';
            }

            if(typeof e !== 'undefined' && e.element !== null){

               if(e.element.files && e.element.files[0]){

                   i = $$(src);

                   ex.describe.orientation({
                       args:data,
                       data:e,
                       method:"POST",
                       callback:function(response){
                           let result = JSON.parse(response);

                           if(result.status === 'uploaded'){

                               ex.DescribeLoaded = true;
                               if(response.match('data:')){
                                   i.element.src = result.file;
                               }else{
                                   i.element.src = result.file
                               }

                               i.css({'min-width':'250px','max-width':'100%','max-height':'100%'});

                               ex.describe.croper(src,callback,d,
                                   result.file);

                               ex.describe.loaded();

                           }else{
                               alert("Sorry an error occurred while fetching the file please try again!");
                           }
                       }
                   });
               }
            }

            else{
                alert("Describe -> reader method expect input file as it's" +
                    " initial element. It must not be null and must be passed through " +
                    " caller " +
                    "method");
                throw new Error("Describe -> reader method expect input file as it's" +
                    " initial element. It must not be null and must be passed through caller" +
                    "method");
            }
        },

        orientation:function(obj){

            var o = obj,
                callback = o.callback,
                arg = o.args,
                url = arg.handler,
                user = arg.user,
                time = arg.time,
                action = arg.action,
                data = o.data,
                method = o.method,
                formdata,http,
                f = data.element.files,file;

            formdata = new FormData();
            http = new XMLHttpRequest();

            for (var i = 0; i < f.length; i++) {
                file = f[i];
            }

            http.open(method,url);
            http.upload.addEventListener("progress",
                ex.describe.orientationProgress,false);
            http.addEventListener("load",function(e){
                ex.describe.orietationLoad(e,callback);
            },false);

            formdata.append("action",action);
            formdata.append("user",user);
            formdata.append("tm",time);
            formdata.append("files[]",file,file.name);
            http.send(formdata);
        },

        orientationProgress:function(e){
            var percent = (e.loaded / e.total)*100,
                total = Math.round(percent),
                d = $$('.describe-progress');

            d.show();
            d.html(ex.describe.progress('Uploading .......'));
            $$('.d-progress').css({width:total+'%'});
            var p = $$('.d-progress > p');

            p.html(total+'%');
            if(total <= 50){
                p.css({'margin-left':total+'%'});
            }else{
                p.css({'margin-left':'50%'});
            }
        },

        loaded:function(){
            $$('.describe-progress').hide();
        },

        orietationLoad:function(e,callback){
            let result = e.target.response;

            callback(result);
        },

        base64ToBlob:function(image, mime)
        {
            mime = mime || '';
            var sliceSize = 1024,
                base64 = image.split(',')[1],
                byteChars = window.atob(base64),
                byteArrays = [];

            for (var offset = 0, len = byteChars.length; offset < len; offset += sliceSize) {
                var slice = byteChars.slice(offset, offset + sliceSize);

                var byteNumbers = new Array(slice.length);
                for (var i = 0; i < slice.length; i++) {
                    byteNumbers[i] = slice.charCodeAt(i);
                }

                var byteArray = new Uint8Array(byteNumbers);

                byteArrays.push(byteArray);
            }

            return new Blob(byteArrays, {type: mime});
        },

        template:function(tag){

            let url = ex.addr(),
                lnk = url.url,
                path = url.path[1];

            if(url.domain.match('localhost')){
                lnk = lnk+path+'/';
            }else if(url.domain.match('192.168.43.143')){
                lnk = lnk+path+'/';
            }

            var editor = {
                content:'<section class="cont-de-m">' +
                '<section class="img-h">' +
                '<img src="" class="org-img" alt="nevaa">' +
                '</section>' +
                '</section>' +
                '<section class="cont-option">' +
                '<section class="cont-r-left rotes l">' +
                '<i class="fa fa-rotate-left"></i> Left' +
                '</section>' +

                '<section class="cont-r-right rotes r">' +
                '<i class="fa fa-rotate-right"></i> Right' +
                '</section>' +

                '</section>'
            },

                contents = {
                header:'<section class="de-h-container"><p>'+tag+'</p></section>',

                footer:'<section class="de-buttons">' +
                '<section class="de-b-cancel">Cancel</section>' +
                '<section class="de-b-save">Save</section>' +
                '</section>',

                top:'<section class="dearea-content">' +
                '<textarea class="de-area" autocomplete="off" placeholder="Add descriptions"></textarea>' +
                '</section>',

                content:'<section class="im-de-ho">' +
                '<section class="container-im">' +
                '<span class="handles handle-nw"></span>' +
                '<span class="handles handle-ne"></span>' +
                '<img src="" class="org-i" alt="nevaaa">' +
                '<span class="handles handle-se"></span>' +
                '<span class="handles handle-sw"></span>' +
                '</section>'  +
                '<section class="cropper-wrapper">' +
                '<section class="inner-cropper"></section>' +
                '</section>' +
                '</section>'+
                '<section class="de-middle">' +
                '<!--<p>Edit <i class="fa fa-pencil"></i><p>-->' +
                '</section>',

                edits:'<section class="de-e-left">' +
                '<section class="de-e-left-top">' +
                '<img src="'+lnk+'/images/logos/nh.png">' +
                '</section>' +
                '<section class="de-e-left-middle">' +
                '<ul>' +
                '<li class="rotate"><i class="fa fa-refresh"></i> Rotate</li>' +
                '</ul>' +
                '</section>' +
                '</section>' +
                '<section class="de-e-right">' +
                '<section class="de-e-right-top"><p>'+tag+'</p></section>' +
                '<section class="de-e-right-middle">' +
                    editor.content +
                '</section>' +
                '<section class="de-e-right-footer">' +
                '<section class="de-e-r-f-ok">OK</section>' +
                '</section>' +
                '</section>'
            };

            return "<section class='deshadow'>" +
                "<section class='describes'>" +
                "<section class='d-header'>"+contents.header+"</section>" +
                "<section class='d-top'>"+contents.top+"</section>" +
                "<section class='d-contents'>"+contents.content+"</section>" +
                "<section class='footer'>"+contents.footer+"</section>" +
                "<section class='de-edit'>"+contents.edits+"</section>" +
                "<section class='describe-progress'>" +
                "</section>" +
                "</section></section>";
        },

        uploader:function(data,callback,c,file){
            callback({data:data,c:c.value(),file:file});
        },

        progress:function(info){
            let i = info;
            return "<section class='d-p-header'><p>"+i+"</p></section>" +
                "<section class='d-p-content'>" +
                "<section class='wrapper'>" +
                "<section class='d-loader'>" +
                "<section class='d-progress'>" +
                "<p></p>" +
                "</section>" +
                "</section>" +
                "</section>" +
                "</section>";
        },

        onpending:function(){
            let url = ex.addr(),
                lnk = url.url,
                path = url.path[1];

            if(url.domain.match('localhost')){
                lnk = lnk+path+'/';
            }else if(url.domain.match('192.168.43.143')){
                lnk = lnk+path+'/';
            }

            var h = $$('.describe-progress'),c = {
                wr:'<section class="wrap">' +
                '<section class="hold">' +
                '<section class="auto-c"><p>Please wait</p>' +
                '<img src="'+lnk+'/images/logos/loader1.svg" width="70px" height="20px"></section>' +
                '</section>' +
                '</section>'
            };

            h.css({background:'transparent'});
            h.show();

            h.html(c.wr);
        },

        onpendingEnd:function(){
            var h = $$('.describe-progress');

            h.hide();
            h.html('');

            ex.describe.close();
        },

        croper:function(org_img,callback,dom,file){

            let url = ex.addr(),
                lnk = url.url,
                path = url.path[1];

            if(url.domain.match('localhost')){
                lnk = lnk+path+'/';
            }else if(url.domain.match('192.168.43.143')){
                lnk = lnk+path+'/';
            }

            var $ = jQuery,
                $container,
                orig_src = new Image(),
                target = $(org_img).get(0),
                state = {},
                constrain = false,
                min_width = 200,
                min_height = 200,
                max_width = 700,
                max_height = 400,
                degrees = 0,
                content = $$('.dearea-content > textarea'),
                canvas = document.createElement('canvas'),

                init = function(){
                    orig_src.src = target.src;

                    $container =  $('.container-im');


                    $container.on('mousedown touchstart', '.handles', startResize);
                    $container.on('mousedown touchstart', org_img, moving);


                    $$('.de-b-save').on('click',crop);
                    $$('.de-b-cancel').on('click',cancel);
                    var edit =  $$('.de-middle > p');

                    if(edit.element !== null){
                        edit.on('click',editor);
                    }
                },

                startResize = function(e){
                    e.preventDefault();
                    e.stopPropagation();

                    eventState(e);
                    $(document).on('mousemove touchmove', resize);
                    $(document).on('mouseup touchend', stopResize);
                },
            
                stopResize = function (e) {
                    e.preventDefault();
                    $(document).off('mouseup touchend', stopResize);
                    $(document).off('mousemove touchmove', resize);
                },

                eventState = function(e){
                    state.width = $container.width();
                    state.height = $container.height();
                    state.left = $container.offset().left;
                    state.top = $container.offset().top;
                    state.mouse_x = (e.clientX || e.pageX || e.originalEvent.touches[0].clientX) + $(window).scrollLeft();
                    state.mouse_y = (e.clientY || e.pageY || e.originalEvent.touches[0].clientY) + $(window).scrollTop();

                    if(typeof e.originalEvent.touches !== 'undefined'){
                        state.touches = [];
                        $.each(e.originalEvent.touches, function(i, ob){
                            state.touches[i] = {};
                            state.touches[i].clientX = 0+ob.clientX;
                            state.touches[i].clientY = 0+ob.clientY;
                        });
                    }
                    state.evnt = e;
                },

                resize = function (e) {
                    var mouse={},width,height,left,top;
                    mouse.x = (e.clientX || e.pageX
                        || e.originalEvent.touches[0].clientX) + $(window).scrollLeft();
                    mouse.y = (e.clientY || e.pageY
                        || e.originalEvent.touches[0].clientY) + $(window).scrollTop();

                    if( $(state.evnt.target).hasClass('handle-se') ){
                        width = mouse.x - state.left;
                        height = mouse.y  - state.top;
                        left = state.left;
                        top = state.top;
                    } else if($(state.evnt.target).hasClass('handle-sw') ){
                        width = state.width - (mouse.x - state.left);
                        height = mouse.y  - state.top;
                        left = mouse.x;
                        top = state.top;
                    } else if($(state.evnt.target).hasClass('handle-nw') ){
                        width = state.width - (mouse.x - state.left);
                        height = state.height - (mouse.y - state.top);
                        left = mouse.x;
                        top = mouse.y;
                        if(constrain || e.shiftKey){
                            top = mouse.y - ((width / orig_src.width * orig_src.height) - height);
                        }
                    } else if($(state.evnt.target).hasClass('handle-ne') ){
                        width = mouse.x - state.left;
                        height = state.height - (mouse.y - state.top);
                        left = state.left;
                        top = mouse.y;
                        if(constrain || e.shiftKey){
                            top = mouse.y - ((width / orig_src.width * orig_src.height) - height);
                        }
                    }

                    if(constrain || e.shiftKey){
                        height = width / orig_src.width * orig_src.height;
                    }

                    if(width > min_width && height > min_height && width < max_width && height < max_height){
                        resizeImage(width, height);
                        $container.offset({'left': left, 'top': top});
                    }
                },

                resizeImage = function(w,h){
                    canvas.width = w;
                    canvas.height = h;

                    resizing = true;

                    if(w < min_width){
                        w = min_width;
                    }

                    if(h < min_height){
                        h = min_height;
                    }

                    var context = canvas.getContext('2d');

                    context.drawImage(orig_src,0,0,w,h);

                    $$(org_img).attr('src',canvas.toDataURL('image/png'));
                },

                moving = function(e){
                    e.preventDefault();
                    e.stopPropagation();
                    eventState(e);

                    $(document).on('mousemove touchmove', move);
                    $(document).on('mouseup touchend', endMove);
                },

                move = function (e) {
                    var  mouse={}, touches;

                    e.preventDefault();
                    e.stopPropagation();

                    if(typeof e.originalEvent.touches !== 'undefined'){
                        touches = e.originalEvent.touches;
                    }

                    mouse.x = (e.clientX || e.pageX
                        || touches[0].clientX) + $container.parent().scrollLeft();
                    mouse.y = (e.clientY || e.pageY
                        || touches[0].clientY) + $container.parent().scrollTop();

                    /**
                     * for top move
                     * ,
                     'top': mouse.y - ( state.mouse_y - state.top )
                     */
                    $container.offset({
                        'left': mouse.x - ( state.mouse_x - state.left ),
                        'top': mouse.y - ( state.mouse_y - state.top )
                    });

                    if(state.touches && state.touches.length > 1 && touches.length > 1) {
                        var width = state.width, height = state.height;
                        var a = state.touches[0].clientX - state.touches[1].clientX;
                        a = a * a;
                        var b = state.touches[0].clientY - state.touches[1].clientY;
                        b = b * b;
                        var dist1 = Math.sqrt(a + b);

                        a = e.originalEvent.touches[0].clientX - touches[1].clientX;
                        a = a * a;
                        b = e.originalEvent.touches[0].clientY - touches[1].clientY;
                        b = b * b;
                        var dist2 = Math.sqrt(a + b);

                        var ratio = dist2 / dist1;

                        width = width * ratio;
                        height = height * ratio;

                        resizeImage(width, height);
                    }
                },

                endMove = function(e){
                    e.preventDefault();

                    $(document).off('mouseup touchend', endMove);
                    $(document).off('mousemove touchmove', move);
                },

                crop = function(){

                    if(!resizing){

                        cAlert.renderAlertData('Error image is not resized',
                            'Please resize your image first to crop it.<br>Thank you for using <b style=\'color:rgba(212,94,127,1);\'>nevaa</b>','OK');
                        //throw new Error('Error image is not resized');
                    } else {

                        var c_canvas, context,
                            $cropper = $('.cropper-wrapper'), left, top, width, height;

                        left = $cropper.offset().left - $container.offset().left;
                        top = $cropper.offset().top - $container.offset().top;
                        width = $$('.cropper-wrapper').width();
                        height = $$('.cropper-wrapper').height();

                        c_canvas = document.createElement('canvas');
                        c_canvas.width = width;
                        c_canvas.height = height;

                        context = c_canvas.getContext('2d');
                        context.drawImage(target, left, top, width, height, 0, 0, width, height);

                        target.src = c_canvas.toDataURL('image/jpg');
                        orig_src.src = c_canvas.toDataURL('image/jpg');

                        ex.describe.uploader(
                            c_canvas.toDataURL('image/jpg'),
                            callback, content, file);
                    }
                },

                cancel = function(){
                    var s = Exile('.deshadow'),
                        c = Exile('.describes');

                    c.hide();
                    setTimeout(function(){
                        s.hide();
                        var b = $$('body');
                        b.html(dom);
                        b.css({overflow:'auto'});
                    },200);

                    let sasha = window.sasha;

                    sasha.response({
                        meth:'POST',
                        url:lnk+'includes/delete.php',
                        query:'action=cancelFiles&file='+file,
                        success:function(){
                            if(sasha.state(this)){
                                let r = JSON.parse(this.response);
                                if(r.state === 'deleted'){
                                    $$().log(r.state);
                                }
                            }
                        }
                    });
                },

                editor = function(){
                    $$('.describes > .de-edit').show();

                    var c_container = $$('.de-e-right-middle');

                    let im = $$('.cont-de-m > section > img');

                    if(im.element !== null)
                        im.element.src = target.src;

                    $$().each('.de-e-left-middle > ul > li',function(i){
                        let v = $$(i);

                        if(v.element !== null)
                            v.on('click',function(){
                                let c = $$(this).class();

                                if(c === 'rotate')
                                    c_container.html(editor.content);

                                    let im = $$('.cont-de-m > section > img');
                                    //im.element.src = target.src;


                            });

                        else
                            throw new Error('Menu return error after been called');
                    });


                    $$().each('.rotes',function(e){
                        let v = $$(e);

                        if(v.element !== null)
                            v.on('click',function(){
                               let c = $$(this).class(),
                                   canv = document.createElement('canvas'),
                                   cxt = canv.getContext('2d'),
                                   img = new Image(),
                                   width = im.element.offsetWidth,
                                   height = im.element.offsetHeight,
                                   left = im.element.offsetLeft,
                                   top = im.element.offsetTop;

                                c = c.split(' ')[2];

                                canv.width = width;
                                canv.height = height;

                                img.width = width;
                                img.height = height;

                                img.onload = function () {
                                    cxt.drawImage(img,canv.width/2 - img.width,
                                        canv.height /2 - img.width/2);
                                };

                                img.src = im.element.src;

                                if(c === 'l')
                                    rotate.left({cxt:cxt,img:img,canvas:canv,
                                        left:left,top:top,width:width,height:height});
                                else if(c === 'r')
                                    rotate.right({cxt:cxt,img:img,canvas:canv,
                                        left:left,top:top,width:width,height:height});

                            });
                    });

                    /**
                     * close an empty editor
                     */
                    $$('.de-e-r-f-ok').on('click',function(){
                       finished({cancel:true});
                    });
                },

                finished = function(obj){
                    var o = obj,
                        cancel = o.cancel,
                        ed = $$('.describes > .de-edit');

                    if(cancel){
                        ed.hide();
                    }else{
                        o.callback(ed);
                    }
                },

                rotate = {

                    left:function(obj){
                        degrees -= 90;
                        rotate.rotate(degrees,obj);
                    },

                    right:function(obj){
                        degrees += 90;
                        rotate.rotate(degrees,obj);
                    },

                    rotate:function(d,obj){
                        let o = obj,
                            ctx = o.cxt,
                            image = o.img,
                            canvas = o.canvas,
                            left = o.left,
                            top = o.top,
                            width = o.width,
                            height = o.height;

                        ctx.clearRect(0,0,width,image.height);
                        ctx.save();
                        ctx.translate(width/2,height/2);
                        ctx.rotate(d*Math.PI/180);
                        ctx.drawImage(image,-image.width/2,-image.width/2);
                        ctx.restore();

                        $$('.cont-de-m > section > img').attr('src',canvas.toDataURL('image/png'));

                        /**
                         * close with data
                         */
                        $$('.de-e-r-f-ok').on('click',function(){
                            finished({cancel:false,callback:function(e){

                                $$(org_img).attr('src',canvas.toDataURL('image/png'));
                                e.hide();
                            }});
                        });

                    }
                }
            ;

            init();
        },
        
        close:function () {
            let b = $$('body'),
                d = $$('.describes'),
                $ = jQuery;

            d.hide();
            b.css({overflow:'auto'});
            setTimeout(function () {
                $('section.describes').remove();
                $$('.deshadow').hide();
            },200);
        }
    };

    ex.src = function(v){
        let e = this,re;

        if(e.element !== null){
           if(typeof v !== 'undefined' && v !== null){
               e.element.src = v;
           }else{
               return e.element.src;
           }
        }
    };

    ex.remove = function () {
      let e = this.element;

      e.parentNode.removeChild(e);
    };

    return ex;
};

var $$ = function(selector){
  return Exile(selector);
};