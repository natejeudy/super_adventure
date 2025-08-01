public class Sprite {
 PImage image;
 float center_x, center_y;
 float change_x, change_y;
 float w,h;
 
 /* Section 5: We will be writing our own constructor
 
 Create the Sprite constructor passing in the arguments in order:
 
 (String filename, float scale, float x, float y)
 
 Inside the constructor include this code
 
   image = loadImage(filename);
   w = image.width * scale;
   h = image.height * scale;
   center_x = x;
   center_y = y;
   change_x = 0;
   change_y = 0;
 
 */
public Sprite (String filename, float scale, float x, float y){
image = loadImage(filename);
   w = image.width * scale;
   h = image.height * scale;
   center_x = x;
   center_y = y;
   change_x = 0;
   change_y = 0;
}
 /*------------------------*/
 
public Sprite(String filename, float scale) {
  this(filename,scale,0,0); 
 }
 
  public Sprite(PImage img, float scale) {
 
   image = img;
   w = image.width * scale;
   h = image.height * scale;
   center_x = 0;
   center_y = 0;
   change_x = 0;
   change_y = 0;
 }
 
 public void display() {
  image(image,center_x,center_y,w,h);
 }
 
 public void update() {
  center_x += change_x;
  center_y += change_y;
 }
 
 /*Section 5: Will be writing getters and setters*/
 public float getLeft() {
  return center_x - w/2; 
 }
 
  public float getRight() {
  return center_x + w/2; 
 }
  public float getTop() {
  return center_y - h/2; 
 }
  public float getBottom() {
  return center_y + h/2; 
 }
 
 //Setters
 void setLeft(float newLeft) {
   center_x = newLeft + w/2;
 }
 
  void setRight(float newRight) {
   center_x = newRight - w/2;
 }
  void setTop(float newTop) {
   center_y = newTop + h/2;
 }
  void setBottom(float newBottom) {
   center_y = newBottom - h/2;
 }
  
}
