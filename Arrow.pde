class Arrow extends VPart {
 private float arrow_width = 25;
 private PShape shape;
 
 Arrow(PVector pos, PVector angle_range, float radius) {
   super(pos, angle_range, radius);
   float x1 = 0 - this.arrow_width/2;
   float y1 = 0 - this.radius/2;
   float x2 = this.arrow_width;
   float y2 = this.radius - this.radius/2;
   this.shape = createShape(RECT, x1, y1, x2, y2);
   this.shape.setFill(color(0, 0, 0));
   this.shape.setStroke(false);
 }
 
 public void display(float angle) {
   this.shape.resetMatrix();
   this.angle.set_value(angle);
   this.shape.rotate(this.angle.get_value());
   shape(shape, this.get_pos_x(), this.get_pos_y());
 }
}
