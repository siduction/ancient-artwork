/*
    Copyright 2013 Harald Sitter <sitter@kde.org>

    LightDM-KDE is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    LightDM-KDE is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with LightDM-KDE.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 1.0

Item {
    width: row.width
    height: row.height

    Row {
        id: row
        spacing: 16

        ShadowText {
            text: Qt.formatDate(new Date, Qt.DefaultLocaleLongDate)
        }

        ShadowText {
            text: Qt.formatTime(new Date, Qt.DefaultLocaleShortDate)
        }
    }
}
