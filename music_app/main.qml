import QtQuick 2.15
import QtQuick.Window 2.15
import QtMultimedia 5.15
//import com.company.PlayerController 1.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Song player")
    Rectangle{
        id:topbar
        anchors{
            top:parent.top
            left:parent.left
            right:parent.right
        }
        height:50
        color:"#5F8575"
    }
    Rectangle{
        id:mainSection
        anchors{
            top:topbar.bottom
            bottom:bottombar.top
            left:parent.left
            right:parent.right
        }
        color:"#1e1e1e"
        AudioInfoBox{
            id:firstSong
            anchors{
                verticalCenter: parent.verticalCenter
                left:parent.left
                right: parent.right
                margins:20
            }
            songIndex: 0
            title:"Fat El Maad"
            authorName:"Umm Kulthum"
            imageSource:"assets/images/UmmKulthom.jpg"
        }

        AudioInfoBox{
            id:secondSong
            anchors{
                verticalCenter: parent.verticalCenter
                left:parent.left
                right: parent.right
                margins:20
            }
            songIndex: 1
            title:"Laialeena"
            authorName:"Warda"
            imageSource:"assets/images/Warda.jpg"
        }

        AudioInfoBox{
            id:thirdSong
            anchors{
                verticalCenter: parent.verticalCenter
                left:parent.left
                right: parent.right
                margins:20
            }
            songIndex: 2
            title:"Ana Lak Ala Toul"
            authorName:"Abdel Halim Hafez"
            imageSource:"assets/images/AbdelHaliem.jpg"
        }
    }
    Rectangle{
        id:bottombar
        anchors{
            bottom:parent.bottom
            left:parent.left
            right:parent.right
        }
        height:100
        color:"#333333"

        Row{
            anchors.centerIn: parent
            spacing: 20
            ImageButton{
                id:previousButton
                width: 64
                height: 64
                source: "assets/icons/8207890_back_direction_previous_multimedia_arrows_icon.png"
                onClicked: playercontrollerCPP.switchToPreviousSong()
            }
            ImageButton{
                id:playPauseButton
                width:64
                height: 64
                source: playercontrollerCPP.playing?"assets/icons/8207892_pause_multimedia_stop_ui_icon.png": "assets/icons/8201381_square_stop_multimedia_ui_icon.png"
                onClicked: playercontrollerCPP.playPause()
            }
            ImageButton{

                id:nextButton
                width: 64
                height: 64
                source: "assets/icons/8207891_next_arrows_multimedia_skip_ui_icon.png"
                onClicked: playercontrollerCPP.switchToNextSong()
            }
        }
    }

    /* QtObject{
        id:PlayerController

        property int currentSongIndex: 0
        property int songCount: 3
        property bool playing : false

        function playPause(){
            playing=!playing
        }
        function switchToPreviousSong(){
            if(currentSongIndex > 0){
                currentSongIndex --
            }else{
                currentSongIndex= songCount -1
            }
        }
        function switchToNextSong(){
            if(currentSongIndex+1 >= songCount){
                currentSongIndex =0
            }else{
                currentSongIndex++
            }
        }
    }*/

}