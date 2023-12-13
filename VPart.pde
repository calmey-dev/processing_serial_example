class VPart extends Object {
  protected ContainerData angle = new ContainerData();
  protected float radius;
  
  VPart(PVector pos, PVector angle_range, float radius) {
    super(pos);
    this.angle.set_range(angle_range);
    this.radius = radius;
  }
  
  public void display() {
  
  }
}
