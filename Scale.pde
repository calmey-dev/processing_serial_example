class Scale extends VPart {
  private int steps = 10;
  private boolean has_arc = true;
  
  Scale(PVector pos, PVector angle_range, float radius) {
    super(pos, angle_range, radius);
  }
  
  public void display() {
    strokeWeight(10);
    noFill();
    arc(this.get_pos_x(), this.get_pos_y(), this.radius, this.radius, this.angle.get_min()-HALF_PI, this.angle.get_max()-HALF_PI);
    
    float all_angle = abs(this.angle.get_min()) + abs(this.angle.get_max());
    
    for(int i = 0; i <= this.steps; i++) {
      float current_angle = (all_angle/this.steps) * i + this.angle.get_min();
      PVector line_pos = this.get_pos().copy().add(new PVector(this.radius/2 * cos(current_angle-HALF_PI), this.radius/2 * sin(current_angle-HALF_PI)));
      line(line_pos.x, line_pos.y, line_pos.x + 35*sin(current_angle), line_pos.y-35*cos(current_angle));
    }
  }
  
  public void set_steps(int steps) {
    this.steps = steps;
  }
  
  public int get_steps() {
    return this.steps;
  }
  
  public void disable_arc() {
    this.has_arc = false;
  }
  
  public void enable_arc() {
    this.has_arc = true;
  }
  
}
