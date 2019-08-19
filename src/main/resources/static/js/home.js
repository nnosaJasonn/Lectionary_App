function determineYear() {

    var today = new Date();
    var yyyy = today.getFullYear();
    var churchYear = yyyy % 3;

    switch(churchYear){
        case 0:
            return 3;
        case 1:
            return 1;
        case 2:
            return 2;
    }
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
          let info = data.substring(data.indexOf("<div class=\"flex-column right-column\">"));
            let week = info.substring(info.indexOf("<h4>"), info.indexOf("</h4>"));
          week = week.replace("<h4>", '');
            console.log(week);
            showDay(week);
        }
    });

}



// bender();

render();

function showDay(week){
    $.get('/' + week + '/proper.json', function (data) {
        console.log(data);
       var year = determineYear();
       thisWeeksReadings(data, year)
    });
}

function thisWeeksReadings(proper, year){
    $.get('/'+proper.id+'/'+year+'/readings.json', function(data){
        console.log(data);

        let html = `<div class="card" style="width: 75%;">
  <div class="card-body">
  <h4>Readings For This Coming Week</h4>
    <h5 class="card-title"><a href="">${proper.name}</a></h5>
    <!--<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>-->
    <p class="card-text"><ul>
    <li>Psalm: ${data.psalm}</li>
    <li>Old Testament: ${data.oldT}</li>
    <li>New Testament: ${data.epistle}</li>
    <li>Gospel: ${data.newT}</li>
</ul></p>
  </div>
</div>`;
        $('#collect').html(html);
    });
}