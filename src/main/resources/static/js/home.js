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