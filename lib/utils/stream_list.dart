class Streams{
  final String image_dest;
  final String title;
  final String subtitle;
  final String cat;


  Streams(this.image_dest, this.title , this.subtitle , this.cat);
  
}

var stream1 = Streams("assets/fortnite.jpg", "Highlight - Raptor Fortnite", "Semi - Final", "Fortnite");
var stream2 = Streams("assets/beefboss.jpg", "Ogre Cup competition", "Final", "Fortnite");
var stream3 = Streams("assets/csgo.jpg", "CS GO", "Semi - Finals", "CS:GO");
var stream4 = Streams("assets/csgo2.jpg", "CS GO Rupture Moments", "Semi - Finals", "CS:GO");
var stream5 = Streams("assets/valorant.jpg", "Valorant Cup", "Semi - Finals", "Valorant");
var stream6 = Streams("assets/valorant2.jpg", "Best of Omen", "Semi- Finals", "Valorant");


List<Streams> ActiveStreams = [stream1,stream2,stream3, stream4 ,stream5 , stream6];