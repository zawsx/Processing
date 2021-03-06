// # Typography.pde
// Used to generate repeated use of a string in varying font scale and color over a background.

// If using processing.js we need to preload Images and Fonts.
//
// See http://processingjs.org/reference/preload/
// and http://processingjs.org/reference/font/
// for more information.
/* @pjs font="FontFileName.ttf"; */

HColorPool colors;
HDrawablePool pool;

void setup() {
  size(1280,1280);
  H.init(this).background(#202020);
  smooth();

  colors = new HColorPool(#FFFFFF, #F7F7F7, #FFCC00, #ECECEC, #333333, #666666, #0095a8, #00616f, #FF3300, #FF6600);

//  colors = new HColorPool() // Color weighting
//    .add(#FFFFFF,9)
//    .add(#ECECEC,9)
//    .add(#CCCCCC,9)
//    .add(#333333,3)
//    .add(#0095a8,2)
//    .add(#00616f,2)
//    .add(#FF3300)
//    .add(#FF6600)
//  ;

  PFont type = createFont("Bello-Pro.otf", 24);

  pool = new HDrawablePool(100);  // The number of objects (below) to render
  // HDrawablePool() can be made pretty interesting if reduced to a small number, such as 2
  pool.autoAddToStage()
    .add (new HText( "Name", 24, type ))
    // .add (new HText( "X", 24, type )) // Additional text objects to draw.
    // .add (new HText( "y", 24, type ))
    // .add (new HText( "z", 24, type ))
    // .add (new HText( "A", 24, type ))
    // .add (new HText( "b", 24, type ))
    // .add (new HText( "c", 24, type ))

    .onCreate (
      new HCallback() {
        public void run(Object obj) {
          HText t = (HText) obj;
          t.fill( colors.getColor() ); // grab a color from the pool
          t.scale( ((int)random(10)*2) + 1 );
          t.anchorAt(H.CENTER);
          t.loc( (int)random(width), (int)random(height) );
        }
      }
    )

    .requestAll()
  ;

  H.drawStage();
  noLoop();
}

void draw() {}
