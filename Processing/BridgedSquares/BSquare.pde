class BSquare
{
  float size;
  
  BSquare (float _size)
  {
    size = _size;
  }


  void drawBSquare(float size)
  {
    // left line
   rect(-size, 0, 1, size*2);
  
  // rect(0, 0, 1, size*2);
  
  // top line
  //rect(0, -size, size*2, 1);
  
  // right line
  rect(size, 0, 1, size*2);
  
  // bottom line
  //rect(0, size, size/2, 1);
  }



}
