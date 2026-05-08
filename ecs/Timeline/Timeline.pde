// Gaby Orozco | 23 Feb 2026| Timeline
void setup() {
  size(950,500);
}
void draw() {
  background(#E7C1FF);
  drawRef();
  histEvent(100,200,"Apr 2014",true,"The Teen Explainer Program launches at NHMU as a small pilot with 12 teens to build youth involvement in science communication.");
  histEvent(230,300,"Sept 2015",false,"Teens complete their first major training series in the museums learning labs, gaining skills in communication and science literacy.");
  histEvent(345,200,"June 2016",true,"Explainers begin leading hands on demonstrations in NHMU galleries, helping visitors engage with fossils, minerals, and ecosystems.");
  histEvent(450,300,"Oct 2017",false,"Teens expand into community STEM outreach, representing the museum at local schools and events to broaden public science access.");
  histEvent(555,200,"Aug 2019",true,"Leadership is added, allowing returning teens to mentor newcomers and help design educational activities."); 
  histEvent(680,300,"Mar 2020",false,"The program shifts online during the pandemic, with teens creating virtual demos, Q&As, and digital science content.");
  histEvent(775,200,"July 2021",true,"A hybrid model emerges as teens return onsite while continuing to produce online educational materials for wider reach.");
  histEvent(875,300,"May 2024",false,"NHMU celebrates the programs 10 year anniversary with a showcase where teens present demos and highlight their impact.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(36);
  text("Teen explainers: Timeline",width/2,70);
  textSize(20);
  text("by Gaby Orozco",width/2,90);
  strokeWeight(5);
  line(50,250,900,250);
  textSize(16);
  text("2014",50,275);
  text("2024",900,275);
  strokeWeight(2);
  line(50,245,50,255);
  line(900,245,900,255);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top== true) {
     line(x,y,x-15,y+50);
  } else {
    line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#E8D7F2);
  strokeWeight(2);
  rect(x,y,100,30,10);
  fill(#350752);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail,width/2,350);
  }  
}
