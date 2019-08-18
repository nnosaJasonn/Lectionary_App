var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
var yyyy = today.getFullYear();

today = mm + '/' + dd + '/' + yyyy;

if (new Date() > new Date('12/25/2018')){
    console.log(true)
} else{
    console.log('didnt work');
}

//http://calapi.inadiutorium.cz/api/v0/en/calendars/general-en/today

//api for grabbing the day in the liturgical week

//https://www.lectserve.com/?ref=public-apis maybe better


function render() {
    var url = `https://cors-anywhere.herokuapp.com/https://www.lectserve.com/?ref=public-apis`;
    $.get({
        url: url,
        // headers: {'Authorization': 'Token 9b5ec76d2e68608aa79915a8076ee298575f0e3c'},
        success: function (data) {
            console.log(data);
           let title = data.celebrations[0].title.split(' ');
           let week = title[0];
           let season = data.season;
           console.log(week);
            console.log(season);
            showDay(week, season);
        }
    });

}



bender();

render();

function showDay(week, season){
    $.get('/' + season + '/' +week+ '/proper.json', function (data) {
        console.log(data);
    });
}