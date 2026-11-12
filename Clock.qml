import Quickshell
import QtQuick

Text {
    text: Qt.formatDateTime(clock.date, "ddd MMM, yyyy hh:mm:ss t")
    color: "#f5e2c5"

    font {
        family: "SF Mono"
        letterSpacing: -1
        pixelSize: 15
        weight: 600
    }

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
}