//SF

// widget
class Widget
{
  int x, y, width, height, cRad, txtX, txtY;
  String label;
  int event;
  color widgetColor, labelColor, borderColor;
  PFont widgetFont;
  boolean isMouseOnButton;


  Widget(int x, int y, int width, int height, String label,
    color widgetColor, PFont widgetFont, int event, color borderColor, int cRad, int txtX, int txtY)
  {
    this.x=x;
    this.y=y;
    this.width = width;
    this.height= height;
    this.label=label;
    this.event=event;
    this.widgetColor=widgetColor;
    this.widgetFont=widgetFont;
    this.borderColor = borderColor;
    this.cRad = cRad;
    this.txtX = txtX;
    this.txtY = txtY;
  
}
  void draw()
  {
    noStroke();
    fill(widgetColor);
    rect(x, y, width, height, cRad);

    fill(labelColor);
    textFont(stdFont);
    text(label, txtX, txtY);
  }

  int getEvent(int mouseX, int mouseY)
  {
    if (mouseX>x && mouseX < x+width && mouseY >y && mouseY <y+height)
    {
      return event;
    }
    return EVENT_NULL;
  }


  void mouseOnButton(int mouseX, int mouseY)
  {
    if (mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height)
    {
      isMouseOnButton = true;
      labelColor = color (255);
      stroke(borderColor);
    }
    else
    {
      isMouseOnButton = false;

      labelColor = color (0);
      stroke(borderColor);
    }
  }

}
