class Title extends Object {
  private String text;
  private PVector start_pos;
  private PVector end_pos;
  
  Title(PVector pos, String text) {
    super(pos);
    this.text = text; 
    PVector operation_vector = new PVector(150, 0); 
    this.start_pos = this.get_pos().copy().sub(operation_vector);
    this.end_pos = this.get_pos().copy().add(operation_vector);
  }
  
  public void display() {
    fill(0);
    textSize(96);
    text(this.text, this.start_pos.x, this.start_pos.y, this.end_pos.x, this.end_pos.y);
  }
  
  public void set_text(String text) {
    this.text = text;
  }
  
}
