

function path(str){
    let path = str.split('/');
    for (let i = 0; i<path.length; i++){
        if(!isNaN(parseInt(path[i]))){
            readings(path[i]);
        }
    }
}

path(window.location.pathname);
function readings(str) {
    $.get('/' + str + '/reading.json', function (datum) {

        console.log(datum);


        render(datum.epistle, 'epistle');

        render(datum.psalm, 'psalm');

        render(datum.oldT, 'OT');

        render(datum.newT, 'gospel');
    });
}



    function render(str, part) {
        var url = `https://cors-anywhere.herokuapp.com/https://api.esv.org/v3/passage/text/?q=${str}&include-headings=false&include-footnotes=false&include-passage-references=false&include-audio-link=false&include-short-copyright=false&output-format=plain-text`;
        $.get({
            url: url,
            headers: {'Authorization': 'Token 9b5ec76d2e68608aa79915a8076ee298575f0e3c'},
            success: function (data) {
                console.log(data);
                let html = `<h4>${bibleNames(str)}</h4>`;
                html += data;
                return $('#' + part).html(html);
            }
        });

    }



