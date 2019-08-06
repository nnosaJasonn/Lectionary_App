$.get('/reading.json', function(data){

    console.log(data);
    data.forEach(function(datum){
        render(datum.epistle);
    })

    // let str = data;
    // str = str.substring(str.indexOf('<div class="bibletext">'));
    // str = str.substring(0, str.indexOf('</div>'));
    // str = str.replace('<a', '<!--<a');
    // str = str.replace('</a>', '</a>-->');
    // console.log(str);
    //
    // $('#bible').html(str);
    // $('#bible a').html('');
});

function render(str) {
    $.get(`https://cors-anywhere.herokuapp.com/http://bible.oremus.org/?${str}`, function(data){
        console.log(data);
        let string = data;
        string = string.substring(string.indexOf('<div class="bibletext">'));
        string = string.substring(0, string.indexOf('</div>'));
        string = string.replace('<a', '<!--<a');
        string = string.replace('</a>', '</a>-->');
        console.log(string);
        $('#epistle').html(string);
        return str;

    });
}


function cardify(input) {
    let str = input;
    str = str.substring(str.indexOf('<div class="bibletext">'));
    str = str.substring(0, str.indexOf('</div>'));
    str = str.replace('<a', '<!--<a');
    str = str.replace('</a>', '</a>-->');
    return str;

}