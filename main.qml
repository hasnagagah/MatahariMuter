import QtQuick 2.6
import QtQuick.Window 2.2

Window
 {
  visible : true
  width   : 640
  height  : 480
  title   : qsTr("Matahari Muter")

  Rectangle{
            width     : 100
            height    : 100
            x         :  50
            y         :  50
            color     : "blue"
            transform : Rotation{ //object kotak diputer object anak rotation
                                 origin.x : 25
                                 origin.y : 25
                                 angle    : 45
                                }
            Image{
                  width            : 100
                  height           : 100
                  fillMode         : Image.Stretch
                  anchors.centerIn : parent
                  source           : "AwanPutih.png"
                 }
           }

  Image{
        id     : contohImage //id untuk dipanggil lagi
        source : "matahari.png"
        width  : 300
        height : 300
        anchors.alignWhenCentered : parent
        RotationAnimation on rotation{
                                      loops : Animation.Infinite
                                      from  :  0
                                      to    : 25
                                     }
       }

  //Dalam sebaris x, load image 4 jenis
  Row{
      x       : 10
      y       : 10
      spacing : 10

      Image{
            source    : "rocket.png"
            width     : 110
            height    : 110
            transform : Rotation
                         {
                          origin.x : 30; origin.y : 30; axis{x : 0; y : 1; z : 0} angle : 118
                         }
           }

      Image{
            source    : "rocket.png"
            width     : 50
            height    : 50
            transform : Rotation{origin.x : 30; origin.y : 30; axis{x : 0; y : 1; z : 0} angle : 36}
           }

      Image{
            source    : "matahari.png"
            transform : Rotation{origin.x : 30; origin.y : 30; axis{x : 0; y : 1; z : 0} angle : 54}
           }

      Image{
                  source    : "AwanPutih.png"
                  transform : Rotation{origin.x : 30; origin.y : 30; axis{x : 0; y : 1; z : 0} angle :  2}
                  //angle ga bisa lebih gede dari 70, find why ?
           }
     }
 }


//Task

//show image
//image rotate n looping
//imae move kiri kanan, kanan kiri
//image move atas bawah, bawah atas
//playAudio()
