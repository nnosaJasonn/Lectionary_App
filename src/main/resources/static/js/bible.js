function bibleNames(str){

    str = str.split(" ");
    let book;
    if (!isNaN(parseInt(str[0]))) {
        str[1] = longify(str[1]);
        return str.join(" ");
    } else {
        str[0] = longify(str[0]);
        return str.join(" ");
    }


}

function longify(book){
    switch(book.toLowerCase()){

        case "gen":
            return "Genesis";
        case "ex":
            return "Exodus";
        case "lev":
            return "Leviticus";
        case "num":
            return "Numbers";
        case "deut":
            return "Deuteronomy";
        case "josh":
            return "Joshua";
        case "judg":
            return "Judges";
        case "ruth":
            return "Ruth";
        case "sam":
            return "Samuel";
        case "neh":
            return "Nehemiah";
        case "Judith":
            return "Judith";
        case "job":
            return "Job";
        case "ps":
            return "Psalm";
        case "eccl":
            return "ecclesiastes";
        case "canticle":
            return "Canticles";
        case "wis":
            return "Wisdom of Solomon";
        case "isa":
            return "Isaiah";
        case "jer":
            return "Jeremiah";
        case "dan":
            return "Daniel";
        case "hos":
            return "Hosea";
        case "joel":
            return "Joel";
        case "amos":
            return "Amos";
        case "jon":
            return "Jonah";
        case "mic":
            return "Micah";
        case "hab":
            return "Habukkuk";
        case "zeph":
            return "Zephaniah";
        case "zech":
            return "Zechariah";
        case "mal":
            return "Malachi";
        case "mt":
            return "Matthew";
        case "mk":
            return "Mark";
        case "lk":
            return "Luke";
        case "jn":
            return "John;";
        case "acts":
            return "Acts";
        case "rom":
            return "Romans";
        case "cor":
            return "Corinthians";
        case "gal":
            return "Galatians";
        case "eph":
            return "Ephesians";
        case "phil":
            return "Philippians";
        case "col":
            return "Colossians";
        case "thess":
            return "Thessalonians";
        case "tim":
            return "Timothy";
        case "titus":
            return "Titus";
        case "heb":
            return "Hebrews";
        case "pet":
            return "Peter";
        case "rev":
            return "Revelation";
        default:
            return book;
    }
}