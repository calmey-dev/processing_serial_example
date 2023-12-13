class ContainerData {
  private PVector data;
  
  ContainerData() {
    this.data = new PVector(0, 0, 0);
  }
  
  ContainerData(PVector data) {
    this.data = data;
  }
  
  public void set_range(PVector range) {
    this.data.x = range.x;
    this.data.y = range.y;
  }
  
  public PVector get_range() {
    return new PVector(this.data.x, this.data.y);
  }
  
  public float get_min() {
    return this.data.x;
  }
  
  public float get_max() {
    return this.data.y;
  }
  
  public void set_value(float new_value) {
    this.data.z = constrain_value(new_value);
  }
  
  public float get_value() {
    return this.data.z;
  }
  
  private float constrain_value(float new_value) {
    return constrain(new_value, this.get_min(), this.get_max());
  }
  
  public void map_value(ContainerData map_data) {
    float value = map(map_data.get_value(), map_data.get_min(), map_data.get_max(), this.get_min(), this.get_max());
    this.set_value(value);
  }
}
