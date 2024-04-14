var vcb=[ //словарь

    ['Привет','Hello'],
    ['Обезьяна','monkey'],
    ['Апельсин','orange'],
    ['Тарелка','plate'],
    ['Книга','book'],
    ['мышь','mouse']

];

function translate(direction){
    var selected_text = (
        (window.getSelection && window.getSelection()) ||
        (document.getSelection && document.getSelection()) ||
        (document.selection && document.selection.createRange && document.selection.createRange().text)
    );
    var from= document.getElementById('trans-from');
    var to  = document.getElementById('trans-to');

    if((!from && !selected_text) || !to){ return }

    from= from||{};
    from = from.value || from.innerHTML || selected_text;
    //from = from.toString().replace(/\s/g,'').toLowerCase();
    from = from.toString().replace(/^\s*|\s*$/g,'').replace(/\s+/g,' ').toLowerCase();

    if(!from) return;

    //проверим наличие свойств у 'trans-to'
    if('value' in to){
        to.value= get_translate();
        return;
    };
    if('innerHTML' in to){
        to.innerHTML= get_translate();
        return;
    };

    function get_translate(){
        for(var i=0; i&lt;vcb.length; i++) {
            if(!direction){ //прямой перевод
                if(vcb[i][0].toLowerCase() == from)
                    return vcb[i][1];
            }else{//обратныйй перевод
                if(vcb[i][1].toLowerCase() == from)
                    return vcb[i][0];
            };
        };//for
        return 'Нет в словаре';
    };
};