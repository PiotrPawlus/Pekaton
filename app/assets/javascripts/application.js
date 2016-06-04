// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require 'jquery-1.12.4'
//= require 'bootstrap'
//= require 'material'
//= require 'ripples'
//= require_tree .

$(document).ready(function() {
    $('#open-sidebar').click(function(event) {
        $('#background-black').removeClass('background-black-disactive').addClass('background-black-active');
        $('#sidebar').removeClass('sidebar-close').addClass('sidebar-open');
        $('body').css('overflow', 'hidden');
    });
    $('#close-sidebar').click(function(event) {
        $('#background-black').removeClass('background-black-active').addClass('background-black-disactive');
        $('#sidebar').removeClass('sidebar-open').addClass('sidebar-close');
        $('body').css('overflow', 'visible');
    });

    $('.single_task').find('select').addClass('form-control').addClass('select_single_task');

    function startTime() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
        var t = setTimeout(startTime, 500);
    }
    function checkTime(i) {
        if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
        return i;
    }
    startTime();

    // For material design
    $.material.init();







});





