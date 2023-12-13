class VBackground extends Object {
  private float diameter;
  private color bg_color;
  private PShape shape;
  
  VBackground(PVector pos, float diameter, color bg_color) {
    super(pos);
    this.diameter = diameter;
    this.bg_color = bg_color;
    this.shape = createShape(ELLIPSE, 0, 0, diameter, diameter);
    this.shape.setFill(this.bg_color);
    this.shape.setStroke(false);
  }
  
  public void display() {
    shape(this.shape, this.get_pos_x(), this.get_pos_y());
  }
}
