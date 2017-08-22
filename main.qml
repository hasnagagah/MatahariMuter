import QtQuick 2.8
import QtQuick.Window 2.2

Window
{
 visible : true
 width   : 640
 height  : 480
 title   : qsTr("Rectangle In Rectangle")

 MainForm{
          anchors.fill        : parent
          mouseArea.onClicked :
           {
            console.log(
                        qsTr('screen di-tap response ' + textEdit.text)
                       )
           }
         }

 Rectangle{
           width  : 200
           height : 200
           color  : "red"

           Rectangle{
                     x      : 100
                     y      : 100
                     width  : 100
                     height : 100
                     color  : "blue"

                     Rectangle{
                               width  : 50
                               height : 50
                               color  : "green"
                              }
          }
 }
}
