class Object {
  private PVector pos;
  
  Object(PVector pos) {
    this.pos = pos;
  }
  
  public void set_pos(PVector new_pos) {
    this.pos = new_pos;
  }
  
  public PVector get_pos() {
    return this.pos;
  }
  
  public float get_pos_x() {
    return this.pos.x;
  }
  
  public float get_pos_y() {
    return this.pos.y;
  }
}
