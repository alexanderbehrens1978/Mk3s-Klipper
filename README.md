This configuration is based on following config https://github.com/charminULTRA/Klipper-Input-Shaping-MK3S-Upgrade?tab=readme-ov-file.
As this project seems no more maintained, I made my own to correct some findings and respect some new Klipper possibilities as for instance native adaptive meshing without Kamp

I suggest to use the Mk3.5 Klipper Profiles like also described in the nice guide of charminULTRA above. As you can see there only less adaptions in the Prusaslicer Profiles are necessary
It´s not neccessary to remove in the Filamnet settings of Prusaslicer the custom Start-G-Code anymore as this config can interprete the Pressure Advance Settings there

Changes:
- New purgeline, no more in the middle of the print bed
- Nozzle supports bed heating correctly
- adaptive meshing activated
- M572 macro added to interpret the PA values from the Prusaslicer Filament Settings
- Stealth Profile introduced (with this profile in Klipper and the Prusaslicer profiles for "structural" print we are still 50% faster then with a normal Mk3s+)
- new organisation of the config files. Splitted in printer.cfg and a config folder with the rest of the files
- changed max_accel_to_decel to minimum_cruise_ratio


Prusaslicer Printer Startcode:
- M190 S0 ; Prevents prusaslicer from prepending m190 to the gcode interfering with the macro
- M109 S0 ; Prevents prusaslicer from prepending m109 to the gcode interfering with the macro
- PRINT_START EXTRUDER_TEMP=[first_layer_temperature] BED_TEMP=[first_layer_bed_temperature]

Deutsch
Diese Konfiguration basiert auf der folgenden Config https://github.com/charminULTRA/Klipper-Input-Shaping-MK3S-Upgrade?tab=readme-ov-file. Da dieses Projekt anscheinend nicht mehr gepflegt wird, habe ich meine eigene erstellt, um einige Erkenntnisse zu korrigieren und einige neue Klipper-Möglichkeiten zu berücksichtigen, wie zum Beispiel native adaptive Meshing ohne Kamp. Ich empfehle, die Mk3.5 Klipper-Profile zu verwenden, wie auch im schönen Guide von charminULTRA oben beschrieben. Wie Sie sehen können, sind nur wenige Anpassungen in den Prusaslicer-Profilen erforderlich. Es ist nicht mehr notwendig, die benutzerdefinierten Start-G-Codes in den Filamenteinstellungen von Prusaslicer zu entfernen, da diese Konfiguration die Pressure-Advance-Einstellungen dort interpretieren kann. 
Änderungen:
- Neue Purge-Linie, nicht mehr in der Mitte des Druckbetts
- Düse unterstützt die Bett-Heizung korrekt
- Adaptive Vernetzung aktiviert
- M572-Makro hinzugefügt, um die PA-Werte aus den Filament-Einstellungen des Prusaslicers zu interpretieren
- Stealth-Profil eingeführt (mit diesem Profil in Klipper und den Prusaslicer-Profilen für "strukturierte" Drucke sind wir immer noch 50 % schneller als mit einem normalen Mk3s+)
- Neue Organisation der Konfigurationsdateien. Aufgeteilt in printer.cfg und einen Konfigurationsordner mit den restlichen Dateien
- max_accel_to_decel in minimum_cruise_ratio geändert

Prusaslicer-Drucker Startcode:
- M190 S0 ; Verhindert, dass Prusaslicer M190 vor den G-Code setzt, wodurch das Makro gestört wird
- M109 S0 ; Verhindert, dass Prusaslicer M109 vor den G-Code setzt, wodurch das Makro gestört wird
- PRINT_START EXTRUDER_TEMP=[first_layer_temperature] BED_TEMP=[first_layer_bed_temperature]