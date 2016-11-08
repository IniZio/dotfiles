"use strict";
let LowPoly = require('lowpoly');

let src = './wallpaper.jpg'

new LowPoly(src, {}).init().then(function(data) {
	console.log(data);
});