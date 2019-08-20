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
        let href = "/sunday/" + data.id;
        let html = `<div class="card" style="width: 75%;">
  <div class="card-body">
  <h4>Readings For This Coming Week</h4>
    <h5 class="card-title"><a href=${href}>${proper.name}</a></h5>
    <!--<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>-->
    <p class="card-text"><ul>
    <li>Psalm: ${bibleNames(data.psalm)}</li>
    <li>Old Testament: ${bibleNames(data.oldT)}</li>
    <li>New Testament: ${bibleNames(data.epistle)}</li>
    <li>Gospel: ${bibleNames(data.newT)}</li>
</ul></p>
  </div>
</div>`;
        $('#collect').html(html);
    });
}