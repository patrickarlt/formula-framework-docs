$(".dropdown, .btn-dropdown").mouseenter(function(){
    clearTimeout($(this).data('formula-dropdown-intent'));
    $(this).find(".dropdown-menu").show();
}).mouseleave(function(){
    var someElement = $(this);
    var timeoutId = setTimeout(function(){
        someElement.find(".dropdown-menu").hide();
    }, 100);
    someElement.data('formula-dropdown-intent', timeoutId);
});