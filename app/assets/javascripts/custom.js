var dispatcher = new WebSocketRails('associatedwithit.herokuapp.com/websocket');

dispatcher.bind('refresh', function(data) {
    $('.row').remove();
    $(data.partial).appendTo(".container");
});


var comment = {
    title: 'This post was awful',
    body: 'really awful',
    post_id: 9
}

$(document).on("click",".create_question",function(){
    dispatcher.trigger('games.create_question', comment);
});

$(document).on("click",".create_associated_with_it",function(){
    dispatcher.trigger('games.create_associated_with_it', comment);
});

