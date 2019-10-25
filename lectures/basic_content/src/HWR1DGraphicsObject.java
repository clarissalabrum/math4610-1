/*
 *******************************************************************************
 * Author: Joe Koebbe,
 *         Department of Mathematics and Statistics
 *         Utah State University
 *         Last-Modification: March 2018
 *
 * Object Name: HWR1DGraphicsObject
 *
 * Purpose: This object will do graphics for the HWR codes.
 *
 * Programming Language: Java
 *
 * Remarks:
 *
 * 1. 
 *
 *******************************************************************************
 */
//
// import java packages for the object
// -----------------------------------
//
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
import java.awt.font.FontRenderContext;
import java.awt.geom.*;
import java.awt.image.*;
import java.io.*;
import java.net.URL;
import javax.imageio.ImageIO;
import javax.swing.*;
import javax.swing.event.*;
//
// define the class for making objects
// -----------------------------------
//
public class HWR1DGraphicsObject extends Object {
  //
  // variables
  // ---------
  //
  public void paint(Graphics g) {
    Graphics2D g2 = (Graphics2D) g;
    g2.draw(new Line2D.Double(0.0, 0.0, 1.0, 1.0));
    g2.draw(new Rectangle2D.Double(0.0, 0.0, 1.0, 1.0));
    g2.draw(new Rectangle2D.Double(0.0, 0.0, 1.0, 1.0));
// draw GeneralPath (polygon)
    int x1Points[] = {0, 100, 0, 100};
    int y1Points[] = {0, 50, 50, 0};
    GeneralPath polygon = new GeneralPath(GeneralPath.WIND_EVEN_ODD,
                                          x1Points.length);
    polygon.moveTo(x1Points[0], y1Points[0]);
    for (int index = 1; index < x1Points.length; index++) {
        polygon.lineTo(x1Points[index], y1Points[index]);
    };
    polygon.closePath();
    g2.draw(polygon);

    final float dash1[] = {10.0f};
    final BasicStroke dashed =
    new BasicStroke(1.0f,
                    BasicStroke.CAP_BUTT,
                    BasicStroke.JOIN_MITER,
                    10.0f, dash1, 0.0f);
    g2.setStroke(dashed);
    g2.draw(new RoundRectangle2D.Double(0, 0,
                                   1.0,
                                   1.0,
                                   10, 10));
// load an image
//BufferedImage img = null;
//try {
//    img = ImageIO.read(new File("strawberry.jpg"));
//} catch (IOException e) {
//}
  }
  //
  // test some things
  
  //
  // start by setting up a place to draw on
  // --------------------------------------
  //
  
  //
  // initialization method for the applet feature
  // --------------------------------------------
  //
  public void init() {
    /* Turn off metal's use of bold fonts */
    UIManager.put("swing.boldMetal", Boolean.FALSE);
  }
  //
  // start method for the applet
  // ---------------------------
  //
  public void start() {
    //initComponents(); 
  }
  //
  // method to draw a string on a graphics context at a certain location
  // -------------------------------------------------------------------
  //
  public static void drawTextString(Graphics g, String s, int x, int y) {
    g.drawString(s, x, y);
  }
  //
  // method to draw an image on a graphics context at a certain location
  // -------------------------------------------------------------------
  //
  public static void drawTextString(Graphics g,
                                    Image img,
                                    int xorg,
                                    int yorg,
                                    int w,
                                    int h,
                                    int iorg,
                                    int jorg,
                                    int ih,
                                    int iw) {
    g.drawImage(img, xorg, yorg, w, h, iorg, jorg, iw, ih, null);
  }
  //
  // local variables for the object
  // 
  public BufferedImage bfImage = null;
  //
  // setup variables for the graphics
  // --------------------------------
  //
  boolean plotPoints = true;
  int width = 640;
  int height = 480;
  //
  // set an offset for the plotting region
  // -------------------------------------
  //
  int ix = 10;
  int jy = 10;
  //public void initComponents() {
  //  setLayout(new BorderLayout());
  //  JPanel p = new JPanel();
  //  p.add(new JLabel("Temperature:"));
  //  JSlider tempSlider = new JSlider(20, 100, 65);
  //  tempSlider.setMinorTickSpacing(5);
  //  tempSlider.setMajorTickSpacing(20);
  //  tempSlider.setPaintTicks(true);
  //  tempSlider.setPaintLabels(true);
  //  tempSlider.addChangeListener(this);
  //  p.add(tempSlider);
  //  add("North", p);
  //    
  //  painter = new WeatherPainter();
  //  painter.sun = loadImage("sun");
  //  painter.cloud = loadImage("cloud");
  //  painter.rain = loadImage("rain");
  //  painter.snow = loadImage("snow");
  //  painter.setTemperature(65);
  //  p.add("Center", painter);
  //}
  //
    
  public static void main(String[] args) {
    //
    // set up a frame to plot results within
    // -------------------------------------
    //
    JFrame f = new JFrame("HWR 1D Graphics Application");
    //
    // this sets the default behavior to close the application upon exit
    // -----------------------------------------------------------------
    //
    f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    //
    // define the applet where the GUI will be included
    // ------------------------------------------------
    //
    JApplet ap = new WeatherWizard();
    ap.init();
    ap.start();
    //
    // add the applet to the frame before displaying the gui
    // -----------------------------------------------------
    //
    f.add("Center", ap);
    f.pack();
    f.setVisible(true);
    //
  }

}


//public class WeatherWizard extends JApplet implements ChangeListener {
//    
//    WeatherPainter painter;
//    
//    
//    private BufferedImage loadImage(String name) {
//        String imgFileName = "images/weather-"+name+".png";
//        URL url = WeatherWizard.class.getResource(imgFileName);
//        BufferedImage img = null;
//        try {
//            img =  ImageIO.read(url);
//        } catch (Exception e) {
//        }
//        return img;
//    }
//    
//    
//    public void stateChanged(ChangeEvent e) {
//        JSlider slider = (JSlider)e.getSource();
//        painter.setTemperature(slider.getValue());
//    }
//}
//
//class WeatherPainter extends Component {
//    
//    int temperature = 65;
//    
//    String[] conditions = { "Snow", "Rain", "Cloud", "Sun"};
//    BufferedImage snow = null;
//    BufferedImage rain = null;
//    BufferedImage cloud = null;
//    BufferedImage sun = null;
//    Color textColor = Color.yellow;
//    String condStr = "";
//    String feels = "";
//    
//    Composite alpha0 = null, alpha1 = null;
//    BufferedImage img0 = null, img1 = null;
//    
//    void setTemperature(int temp) {
//        temperature = temp;
//        repaint();
//    }
//    
//    public Dimension getPreferredSize(){
//        return new Dimension(450, 125);
//    }
//    
//    void setupText(String s1, String s2) {
//        if (temperature <= 32) {
//            textColor = Color.blue;
//            feels = "Freezing";
//        } else if (temperature <= 50) {
//            textColor = Color.green;
//            feels = "Cold";
//        } else if (temperature <= 65) {
//            textColor = Color.yellow;
//            feels = "Cool";
//        } else if (temperature <= 75) {
//            textColor = Color.orange;
//            feels = "Warm";
//        } else {
//            textColor = Color.red;
//            feels = "Hot";
//        }
//        condStr = s1;
//        if (s2 != null) {
//            condStr += "/" + s2;
//        }
//    }
//    
//    void setupImages(BufferedImage i0) {
//        alpha0 = null;
//        alpha1 = null;
//        img0   = i0;
//        img1   = null;
//    }
//    
//    void setupImages(int min, int max, BufferedImage i0, BufferedImage i1) {
//        float alpha = (max-temperature)/(float)(max-min);
//        alpha0 = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha);
//        alpha1 = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1-alpha);
//        img0 = i0;
//        img1 = i1;
//        
//    }
//    
//    void setupWeatherReport() {
//        if (temperature <= 32) {
//            setupImages(snow);
//            setupText("Snow", null);
//        } else if (temperature <= 40) {
//            setupImages(32, 40, snow, rain);
//            setupText("Snow", "Rain");
//        } else if (temperature <= 50) {
//            setupImages(rain);
//            setupText("Rain", null);
//        } else if (temperature <= 58) {
//            setupImages(50, 58, rain, cloud);
//            setupText("Rain", "Cloud");
//        }  else if (temperature <= 65) {
//            setupImages(cloud);
//            setupText("Cloud", null);
//        }  else if (temperature <= 75) {
//            setupImages(65, 75, cloud, sun);
//            setupText("Cloud", "Sun");
//        } else {
//            setupImages(sun);
//            setupText("Sun", null);
//        }
//    }
//    
//    public void paint(Graphics g) {
//        Graphics2D g2 = (Graphics2D) g;
//        Dimension size = getSize();
//        Composite origComposite;
//        
//        setupWeatherReport();
//        
//        origComposite = g2.getComposite();
//        if (alpha0 != null) g2.setComposite(alpha0);
//        g2.drawImage(img0,
//                0, 0, size.width, size.height,
//                0, 0, img0.getWidth(null), img0.getHeight(null),
//                null);
//        if (img1 != null) {
//            if (alpha1 != null) g2.setComposite(alpha1);
//            g2.drawImage(img1,
//                    0, 0, size.width, size.height,
//                    0, 0, img1.getWidth(null), img1.getHeight(null),
//                    null);
//        }
//        g2.setComposite(origComposite);
//        
//        // Freezing, Cold, Cool, Warm, Hot,
//        // Blue, Green, Yellow, Orange, Red
//        Font font = new Font("Serif", Font.PLAIN, 36);
 //       g.setFont(font);
 //       
//        String tempString = feels + " " + temperature+"F";
//        FontRenderContext frc = ((Graphics2D)g).getFontRenderContext();
//        Rectangle2D boundsTemp = font.getStringBounds(tempString, frc);
//        Rectangle2D boundsCond = font.getStringBounds(condStr, frc);
//        int wText = Math.max((int)boundsTemp.getWidth(), (int)boundsCond.getWidth());
//        int hText = (int)boundsTemp.getHeight() + (int)boundsCond.getHeight();
//        int rX = (size.width-wText)/2;
//        int rY = (size.height-hText)/2;
//        
//        g.setColor(Color.LIGHT_GRAY);
//        g2.fillRect(rX, rY, wText, hText);
//        
//        g.setColor(textColor);
//        int xTextTemp = rX-(int)boundsTemp.getX();
//        int yTextTemp = rY-(int)boundsTemp.getY();
//        g.drawString(tempString, xTextTemp, yTextTemp);
//        
//        int xTextCond = rX-(int)boundsCond.getX();
//        int yTextCond = rY-(int)boundsCond.getY() + (int)boundsTemp.getHeight();
//        g.drawString(condStr, xTextCond, yTextCond);
//        
//    }
//}
