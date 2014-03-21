function getWindowHeight() {
    var windowHeight = 0;
    if (typeof(window.innerHeight) == 'number') {
        windowHeight = window.innerHeight;
    } else {
        if (document.documentElement && document.documentElement.clientHeight) {
            windowHeight = document.documentElement.clientHeight;
        } else {
            if (document.body && document.body.clientHeight) {
                windowHeight = document.body.clientHeight;
            }
        }
    }
    return windowHeight;
}
function setFooter() {
    if (document.getElementById) {
        var windowHeight = $(window).height();
        if (windowHeight > 0) {
            var contentHeight = $('#content').outerHeight() + $('#navigation').outerHeight();
            var footerElement = $('#footer');
            var footerHeight = footerElement.outerHeight();

            if (windowHeight - (contentHeight + footerHeight) >= 0) {
                footerElement.css('position', 'absolute');
                footerElement.css('top', (windowHeight - footerHeight) + 'px');
            } else {
                footerElement.css('position', 'static');
            }
        }
    }
}

$(document).ready(function() {
    setFooter();

    //Must be in document ready
    $('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
        setFooter();
    });
});

$(window).load(function() {
    setFooter();
});

$(window).resize(function() {
    setFooter();
});