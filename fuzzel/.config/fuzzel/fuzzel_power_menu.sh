#!/usr/bin/env bash

# Optionen für das Menü definieren (mit passenden Sakura/Pixel-Emojis)
OPTIONS="🔒 Sperren
👋 Abmelden
🔄 Neustarten
🛑 Herunterfahren"

# Fuzzel aufrufen und Auswahl speichern
CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu --prompt="🌸 system: " --placeholder="Aktion wählen...")

# Falls abgebrochen wurde, Skript beenden
[ -z "$CHOICE" ] && exit 0

# Nur das erste Wort (bzw. die Aktion ohne Emoji) extrahieren
ACTION=$(echo "$CHOICE" | awk '{print $2}')

# Aktion ausführen
case "$ACTION" in
    "Sperren")
        # Falls du niri-lock oder swaylock nutzt (passe den Befehl ggf. an)
        niri msg action msg "Sperre Desktop..." || swaylock -f
        ;;
    "Abmelden")
        # Der offizielle Weg, um Niri sauber zu beenden
        niri msg action quit --skip-confirmation
        ;;
    "Neustarten")
        systemctl reboot
        ;;
    "Herunterfahren")
        systemctl poweroff
        ;;
esac

