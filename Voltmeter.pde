class Voltmeter extends Object {
  private ContainerData raw_data = new ContainerData(); //Min, max, constrained value
  private ContainerData voltage = new ContainerData();
  private ContainerData angle = new ContainerData();
  
  private VBackground bg;
  private Scale scale;
  private Title title;
  private Arrow arrow;
  private Title volts;
  
  Voltmeter(PVector pos, PVector raw_data_range, PVector voltage_range, PVector angle_range) {
    super(pos);
    this.raw_data.set_range(raw_data_range);
    this.voltage.set_range(voltage_range);
    this.angle.set_range(angle_range);
    
    bg = new VBackground(this.get_pos(), 600, color(230, 253, 255));
    scale = new Scale(this.get_pos(), angle_range, 450);
    arrow = new Arrow(this.get_pos(), angle_range, 500);
    PVector title_pos = new PVector(0, 25).add(this.get_pos());
    title = new Title(title_pos, "Voltage");
    PVector volts_pos = new PVector(0, 125).add(this.get_pos());
    volts = new Title(volts_pos, "Raw");
  }

  public void display(float raw_data) {
    this.raw_data.set_value(raw_data);
    this.voltage.map_value(this.raw_data);
    this.angle.map_value(this.voltage);
    this.bg.display();
    this.scale.display();
    this.title.display();
    this.arrow.display(angle.get_value());
    
    this.volts.set_text(nf(this.voltage.get_value(), 1, 2));
    this.volts.display();
  }
}
