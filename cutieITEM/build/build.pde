// cutieITEM © 01/31/2014, Douglas Dollars
// Work for the @thinkITEM Twitter persona takeover

// Idea: take the iconic thinkITEM brand, merge it with my use of generative art
// and my love of recognizing everyone’s cuteness, and make a LOT of images for people

HDrawablePool pool;
HDrawablePool pool2;
HColorPool colorsHearts;
HColorPool colorsText;
HRect blankoutSquare;

void setup(){
  size(800,1000);
  H.init(this).background(#FFFFFF);
  smooth();
  PFont type = createFont("Bello-Pro.otf", 120);

  // COLORING
  colorsHearts = new HColorPool(
    #F87879,#F01819,#FFE7E8,#FFE6E7,#FFE5E6,#FEE3E4,#FFE4E5,#FEE2E3,#FFE2E3,#FEE1E2,#FEE0E1,#FFE0E1,#FEDFE0,#FEDEDF,#FEDDDE,#FEDCDD,#FEDBDC,#FEDADB,#FED9DA,#FED8D9,#FDD3D4,#FDD2D3,#FDD1D2,#FDD0D1,#FCCDCE,#FCCCCD,#FCCBCC,#FDCCCD,#FCCACB,#FDCACB,#FCC7C8,#FCC6C7,#FBB5B6,#FAB4B5,#FBB4B5,#FAB1B2,#FAB0B1,#FBB0B1,#F9A5A6,#F9A4A5,#F9A1A2,#F9A0A1,#F99FA0,#F99E9F,#F99B9C,#F89A9B,#F99A9B,#F8999A,#F89899,#F99899,#F89798,#F89697,#F89596,#F89495,#F89394,#F89293,#F89192,#FFE9E9,#FFE8E8,#FFE7E7,#FFE6E6,#FFE5E5,#FFE4E4,#FFE3E3,#FEE4E4,#FFE2E2,#FEE3E3,#FFE1E1,#FEE2E2,#FFE0E0,#FEE1E1,#FFDFDF,#FEE0E0,#FEDFDF,#FEDEDE,#FEDDDD,#FEDCDC,#FEDBDB,#FEDADA,#FED9D9,#FED8D8,#FED7D7,#FDD8D8,#FED6D6,#FED5D5,#FDD6D6,#FED4D4,#FDD5D5,#FDD4D4,#FDD3D3,#FDD2D2,#FDD1D1,#FDD0D0,#FDCFCF,#FDCECE,#FDCDCD,#FDCCCC,#FCCDCD,#FCCCCC,#FDCBCB,#FDCACA,#FCCBCB,#FCCACA,#FCC9C9,#FCC8C8,#FCC7C7,#FCC6C6,#FCC5C5,#FCC4C4,#FCC3C3,#FCC2C2,#FCC1C1,#FCC0C0,#FCBFBF,#FCBEBE,#FBBEBE,#FCBDBD,#FBBDBD,#FCBCBC,#FCBBBB,#FBBCBC,#FCBABA,#FBBBBB,#FBBABA,#FBB9B9,#FBB8B8,#FBB7B7,#FBB6B6,#FBB5B5,#FBB4B4,#FAB5B5,#FAB4B4,#FBB3B3,#FBB1B1,#FAB2B2,#FAB1B1,#FBB0B0,#FAB0B0,#FAAFAF,#FAAEAE,#FAADAD,#FAACAC,#FAABAB,#FAAAAA,#F9AAAA,#FAA9A9,#F9A9A9,#FAA8A8,#F9A8A8,#F9A7A7,#FAA6A6,#F9A6A6,#F9A5A5,#F9A4A4,#F9A3A3,#F9A2A2,#F9A1A1,#F9A0A0,#F99F9F,#F99E9E,#F99D9D,#F99C9C,#F99B9B,#F99A9A,#F89B9B,#F89A9A,#F99999,#F99898,#F89999,#F99797,#F89898,#F89797,#F89696,#F89595,#F89494,#F89393,#F89292,#F89191,#F79191,#F89291,#F89392,#F89493,#F89594,#F89695,#F89796,#F99998,#F89897,#F89998,#F99B9A,#F89A99,#F89B9A,#F99C9B,#F99E9D,#F99F9E,#F9A09F,#F9A1A0,#F9A2A1,#F9A4A3,#F9A5A4,#F9A6A5,#F9A8A7,#FAAAA9,#F9AAA9,#FAACAB,#FAAEAD,#FBB1B0,#FAB0AF,#FAB1B0,#FAB2B1,#FBB5B4,#FAB4B3,#FBB6B5,#FAB5B4,#FBB8B7,#FBBAB9,#FCBCBB,#FBBCBB,#FCBEBD,#FBBEBD,#FBC0BF,#FCC2C1,#FCC4C3,#FCC6C5,#FCC7C6,#FCC8C7,#FDCBCA,#FCCAC9,#FCCBCA,#FDCDCC,#FCCCCB,#FDCECD,#FCCDCC,#FDD0CF,#FDD1D0,#FDD2D1,#FDD3D2,#FDD4D3,#FED6D5,#FDD6D5,#FED9D8,#FDD8D7,#FEDAD9,#FEDBDA,#FEDCDB,#FEDDDC,#FEDEDD,#FEDFDE,#FFE1E0,#FEE0DF,#FEE1E0,#FFE3E2,#FEE2E1,#FEE3E2,#FFE5E4,#FEE4E3,#FFE6E5,#FFE7E6,#FFE8E7,#FFCCCC,#FECCCC,#FFCBCB,#FFCACA,#FFC9C9,#FFC8C8,#FFC7C7,#FFC6C6,#FEC5C5,#FEC4C4,#FEC3C3,#FEC2C2,#FEC1C1,#FEC0C0,#FEBFBF,#FDC0C0,#FEBEBE,#FDBEBE,#FEBDBD,#FEBCBC,#FDBDBD,#FEBBBB,#FDBCBC,#FEBABA,#FEB9B9,#FDBABA,#FDB9B9,#FEB8B8,#FDB8B8,#FDB7B7,#FEB6B6,#FDB6B6,#FEB5B5,#FDB5B5,#FDB4B4,#FDB3B3,#FDB2B2,#FDB1B1,#FDB0B0,#FDAFAF,#FDAEAE,#FCADAD,#FCACAC,#FCABAB,#FCAAAA,#FCA9A9,#FCA8A8,#FCA7A7,#FCA6A6,#FBA7A7,#FCA5A5,#FBA5A5,#FCA4A4,#FCA3A3,#FBA3A3,#FCA1A1,#FBA1A1,#FBA0A0,#FC9E9E,#FB9F9F,#FB9E9E,#FB9D9D,#FB9C9C,#FB9B9B,#FB9A9A,#FB9999,#FB9898,#FB9797,#FA9696,#FA9595,#FA9494,#FA9393,#FA9292,#FA9191,#FA9090,#FA8F8F,#FA8E8E,#F98E8E,#FA8D8D,#FA8C8C,#F98D8D,#FA8B8B,#F98C8C,#FA8A8A,#FA8989,#F98A8A,#F98989,#FA8888,#F98888,#F98787,#F98585,#F98484,#F98383,#F98282,#F98181,#F98080,#F97F7F,#F87D7D,#F87B7B,#F87979,#F87878,#F87777,#F87575,#F77575,#F87474,#F77474,#F87373,#F77373,#F87171,#F77171,#F77070,#F76F6F,#F76E6E,#F76D6D,#F76C6C,#F76B6B,#F76969,#F76767,#F66565,#F66464,#F66363,#F66161,#F66060,#F65F5F,#F65D5D,#F65B5B,#F55959,#F55757,#F55555,#F55454,#F55353,#F55151,#F55050,#F54F4F,#F44D4D,#F44B4B,#F44949,#F44848,#F44747,#F44545,#F44444,#F34545,#F44343,#F34343,#F44141,#F34141,#F34040,#F33F3F,#F33E3E,#F33D3D,#F33C3C,#F33B3B,#F33939,#F33737,#F23535,#F23434,#F23333,#F23131,#F23030,#F22F2F,#F22D2D,#F22B2B,#F12929,#F12727,#F12525,#F12323,#F12121,#ED0000,#F12020,#EE0000,#F11F1F,#EE0101,#EE0202,#EE0303,#F01D1D,#EE0404,#F01C1C,#F01B1B,#EE0505,#F01919,#EF0707,#F01818,#F01717,#EF0909,#EF1717,#F01515,#EF0B0B,#F01414,#F01313,#EF0D0D,#EF0E0E,#EF1212,#EF0F0F,#F01010,#EF1111,#F00F0F,#EF1010,#EE0201,#EF0807,#EF0C0B,#EF1716,#F12423,#F12827,#F22C2B,#F33837,#F34443,#F44847,#F44C4B,#F55857,#F65C5B,#F76867,#F77776,#F87C7B,#F9807F,#F98281,#F98786,#FA8A89,#F98A89,#F98C8B,#FA8E8D,#F98E8D,#F9908F,#FA9291,#FA9493,#FB9695,#FB9897,#FB9A99,#FB9C9B,#FB9E9D,#FCA4A3,#FBA4A3,#FCA6A5,#FCAAA9,#FCACAB,#FCAEAD,#FDB0AF,#FDB2B1,#FEB5B4,#FDB4B3,#FEB6B5,#FDB6B5,#FDB8B7,#FEBAB9,#FDBAB9,#FDBCBB,#FEBEBD,#FDBEBD,#FDC0BF,#FEC2C1,#FEC4C3,#FEC6C5,#FFC8C7,#FFCAC9,#FECCCB
  );
  colorsHearts.add(#EE0000,12); // inject some more darker hearts
  colorsHearts.add(#660000,4);

  colorsText = new HColorPool(
    #B10000,#B20000,#B20001,#B20100,#B30000,#B30001,#B30100,#B40000,#B40001,#B40100,#B50000,#B50001,#B50100,#B60000,#B60001,#B60100,#B70000,#B70001,#B70100,#B80000,#B80001,#B80100,#B90000,#B90001,#B90100,#BA0000,#BA0001,#BA0100,#BB0000,#BB0001,#BB0100,#BC0000,#BC0001,#BC0100,#BD0000,#BD0001,#BD0100,#BE0000,#BE0001,#BE0100,#BF0000,#BF0001,#BF0100,#C00000,#C00001,#C00100,#C10000,#C10001,#C10100,#C20000,#C20001,#C20100,#C30000,#C30001,#C30100,#C40000,#C40001,#C40100,#C50000,#C50001,#C50100,#C60000,#C60001,#C60100,#C70000,#C70001,#C70100,#C80000,#C80001,#C80100,#C90000,#C90001,#C90100,#CA0000,#CA0001,#CA0100,#CB0000,#CB0001,#CB0100,#CC0000,#CC0001,#CC0100,#CD0000,#CD0001,#CD0100,#CE0000,#CE0001,#CE0100,#CF0000,#CF0001,#CF0100,#D00000,#D00001,#D00100,#D10000,#D20000,#D30000,#D40000,#D50000,#D60000,#D70000,#D80000,#D90000,#DA0000,#DB0000,#DC0000,#DD0000,#DE0000,#DF0000,#E00000,#E10000,#E20000,#E30000,#E40000,#E50000,#E60000,#E70000,#E80000,#EC0000,#EE0000
  );
  colorsText.add(#FFFFFF,30); // inject some more instances of all-white 'Cutie' text

  // HEARTS
  pool = new HDrawablePool(5200);
  pool.autoAddToStage()
    .add(new HShape("icon_822.svg"),2)
    .add(new HShape("icon_1308.svg"))
    .add(new HShape("icon_5169.svg"))
    .add(new HShape("icon_15259.svg"),2)
    .add(new HShape("icon_17452.svg"))
    //.add(new HShape("icon_19821.svg"))
    //.add(new HShape("icon_25441.svg"))
    .add(new HShape("icon_29424.svg"),2)

    .layout( // HDrawablePool now has a layout attached to it
        new HShapeLayout()
        .target(
          new HImage("cutieITEM.png") // map to the cutieITEM image
        )
     )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .noStroke()
            .anchorAt(H.CENTER)
            .rotate( (int)random(72) * 5 ) // hard-locking rotation to 5 degree increments (360 degrees total)
            .size( (int)random(5,35) )
          ;
          d.randomColors(colorsHearts.fillAndStroke()); //.fillOnly();, .strokeOnly();, or .fillAndStroke(); are options
        }
      }
    )
    .requestAll();
  
  // TEXT
  pool2 = new HDrawablePool(1);
  pool2.autoAddToStage()
    .add (new HText( "Cutie", 260, type ))

    .onCreate (
      new HCallback() {
        public void run(Object obj) {
          HText t = (HText) obj;
          t.fill( colorsText.getColor() );
          t.scale( ((float)random(1,1.35)) ); // 1 - 1.35 scale
          t.anchorAt(H.CENTER);
          t.loc( (width/2), ((float)random(810,830)) ); // as we know the placement we want of the text, we can use hard coordinates, or a nice random 'range'
        }
      }
    )
    .requestAll();
}

int x = 1;
void draw() {
  setup(); // re-shake the variables
  if (x < 25) { // loop this many to output
    H.drawStage(); // render to screen
    saveFrame("cuties/thinkITEM-###.png"); // Save each frame
    x++;

      // An ugly hack, I need to learn how to blank the stage
      blankoutSquare = new HRect(); 
      blankoutSquare
        .noStroke()
        .fill(#FFFFFF)
        .size(width,height)
      ;
      H.add(blankoutSquare);

  } else {
    noLoop(); // stop the output
  }
}