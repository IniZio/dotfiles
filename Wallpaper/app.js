"use strict";

var LowPoly = require('lowpoly');

new LowPoly(src, config).init().then(function (data) {
	console.log(data);
});
