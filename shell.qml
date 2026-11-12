import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts

ShellRoot {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 35
            color: "#040e0d"

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 14
                anchors.rightMargin: 14

                RowLayout {
                    spacing: 7

                    Repeater {
                        model: Quickshell.screens

                        Text {
                            property bool isActive: Wayland.focusedWorskpace?.id === (index + 1)
                            text: index + 1
                            color: isActive ? "#3dd1b0" : "#f5e2c5"

                            font {
                                family: "SF Pro Display"
                                weight: isActive ? 600 : 400
                            }
                        }
                    }
                }

                Item {
                    Layout.fillWidth: true
                }

                RowLayout {
                    spacing: 25
                    
                    Volume {}
                    Network {}
                    Battery {}
                    Clock {}
                }
            }
        }
    }
}
