class GameView {
  Flashcard flashcard;
  boolean showingAnswer;
  String currentCardText;

  GameView() {
  }

  void setNumber(int number, int total) {
    this.currentCardText = number + "/" + total;
  }

  void setCard(Flashcard card) {
    this.flashcard = card;
  }

  void render() {
    background(#B8803D);

    float cardWidth = 540;
    float cardHeight = 320;


    fill(255);
    rectMode(CENTER);
    rect(width / 2, height / 2, cardWidth, cardHeight);

    fill(showingAnswer ? #2185B8 : 0);

    final int textSize = 24;
    textSize(textSize); //skrifstørrelse
    textLeading(textSize*1.2); //Linjeafstand
    textAlign(LEFT, CENTER);

    text(this.showingAnswer ? this.flashcard.getBack() : this.flashcard.getFront(), width/2, height/2, cardWidth - 100, cardHeight - 50);

    fill(0);
    textAlign(CENTER);
    text(this.currentCardText, width/2, 28);
    
    if (showingAnswer) {
      textAlign(LEFT);
      fill(255, 0, 0);
      text("< Forkert", width/2 - 200, height*0.8);
      textAlign(RIGHT);
      fill(0, 255, 0);
      text("Rigtig >", width/2 + 200, height*0.8);
    }
  }

  void update(double deltaTime) {
  }
}
