
class Stickers
{
  float m_thickness;
  float m_side_length;

  color w = color(255,255,255);
  color r = color(192,0,0);
  color g = color(0,192,0);
  color b = color(0,0,255);
  color c = color(255,128,0);
  color m = color(255,255,0);
  color y = color(255,255,255);

  Stickers()
  {
    m_thickness = .08;
    m_side_length = .9;
  }

  void draw( TurnsGraph.Node curTurn)
  {
    color c1 = w;
    color c2 = w;
    color c3 = w;
    color c4 = w;
    color c5 = w;
    color c6 = w;

    switch( curTurn.n)
    {
      case  0: c1 = r; c2 = g; c3 = b; c4 = c; c5 = m; c6 = y; break;
      case  1: c1 = r; c2 = b; c3 = m; c4 = c; c5 = y; c6 = g; break;
      case  2: c1 = y; c2 = g; c3 = r; c4 = b; c5 = m; c6 = c; break;
      case  3: c1 = g; c2 = c; c3 = b; c4 = m; c5 = r; c6 = y; break;
      case  4: c1 = r; c2 = m; c3 = y; c4 = c; c5 = g; c6 = b; break;
      case  5: c1 = g; c2 = b; c3 = r; c4 = m; c5 = y; c6 = c; break;
      case  6: c1 = b; c2 = c; c3 = m; c4 = y; c5 = r; c6 = g; break;
      case  7: c1 = y; c2 = r; c3 = m; c4 = b; c5 = c; c6 = g; break;
      case  8: c1 = c; c2 = g; c3 = y; c4 = r; c5 = m; c6 = b; break;
      case  9: c1 = y; c2 = c; c3 = g; c4 = b; c5 = r; c6 = m; break;
      case 10: c1 = c; c2 = m; c3 = b; c4 = r; c5 = g; c6 = y; break;
      case 11: c1 = r; c2 = y; c3 = g; c4 = c; c5 = b; c6 = m; break;
      case 12: c1 = b; c2 = m; c3 = r; c4 = y; c5 = g; c6 = c; break;
      case 13: c1 = m; c2 = c; c3 = y; c4 = g; c5 = r; c6 = b; break;
      case 14: c1 = g; c2 = r; c3 = y; c4 = m; c5 = c; c6 = b; break;
      case 15: c1 = c; c2 = b; c3 = g; c4 = r; c5 = y; c6 = m; break;
      case 16: c1 = c; c2 = y; c3 = m; c4 = r; c5 = b; c6 = g; break;
      case 17: c1 = m; c2 = y; c3 = r; c4 = g; c5 = b; c6 = c; break;
      case 18: c1 = b; c2 = r; c3 = g; c4 = y; c5 = c; c6 = m; break;
      case 19: c1 = g; c2 = y; c3 = c; c4 = m; c5 = b; c6 = r; break;
      case 20: c1 = m; c2 = b; c3 = c; c4 = g; c5 = y; c6 = r; break;
      case 21: c1 = y; c2 = m; c3 = c; c4 = b; c5 = g; c6 = r; break;
      case 22: c1 = b; c2 = g; c3 = c; c4 = y; c5 = m; c6 = r; break;
      case 23: c1 = m; c2 = r; c3 = b; c4 = g; c5 = c; c6 = y; break;
      default: // Unhandled case.
        println("Unhandled case: curTurn.n = " + curTurn.n);
    }
    
    pushMatrix();
      translate((1+m_thickness/2)/4,0,0);
      fill(c1);
      box((1+m_thickness/2)/2,m_side_length,m_side_length);
    popMatrix();

    pushMatrix();
      translate(0,-(1+m_thickness/2)/4,0);
      fill(c2);
      box(m_side_length,(1+m_thickness/2)/2,m_side_length);
    popMatrix();

    pushMatrix();
      translate(0,0,(1+m_thickness/2)/4);
      fill(c3);
      box(m_side_length,m_side_length,(1+m_thickness/2)/2);
    popMatrix();

    pushMatrix();
      translate(-(1+m_thickness/2)/4,0,0);
      //fill(color(255-red(c1),255-green(c1),255-blue(c1)));
      fill(c4);
      box((1+m_thickness/2)/2,m_side_length,m_side_length);
    popMatrix();

    pushMatrix();
      translate(0, (1+m_thickness/2)/4,0);
      //fill(color(255-red(c2),255-green(c2),255-blue(c2)));
      fill(c5);
      box(m_side_length,(1+m_thickness/2)/2,m_side_length);
    popMatrix();

    pushMatrix();
      translate(0,0,-(1+m_thickness/2)/4);
      //fill(color(255-red(c3),255-green(c3),255-blue(c3)));
      fill(c6);
      box(m_side_length,m_side_length,(1+m_thickness/2)/2);
    popMatrix();
  }
}



