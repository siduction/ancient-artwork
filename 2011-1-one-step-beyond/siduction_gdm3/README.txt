Was muß gemacht werden um das gdm3 Aussehen zu ändern.

1. Das Wallpaper sollte unter /usr/share/images/desktop-base/siduction-onestepbeyond.svg abgelegt werden.
2. Das Icon sollte unter /usr/share/icons/gnome/scalable/actions/logo-siduction.svg abgelegt werden.
3. Dann den Icon-cache aktualisieren 'gtk-update-icon-cache -f -t /usr/share/icons/gnome'
4. /usr/share/gdm/greeter-settings/xy_desktop-base.gschema.override wie folgt ändern:
	
	[org.gnome.desktop.background]
	picture-uri='file:///usr/share/images/desktop-base/logo-siduction.svg'
	picture-options='zoom'
	
5. Das Logo in /usr/share/gdm/greeter-config/20_debian eintragen

	# These are the options for the greeter session that can be set 
	# through GConf. Any GConf setting that is used by the greeter 
	# session can be set here.
	#
	# Most options should be set through GSettings now, but some
	# applications, including the greeter itself, still use GConf.


	# Greeter options
	/apps/gdm/simple-greeter/logo_icon_name 	logo-siduction

	# Some other possible options
	#/apps/gdm/simple-greeter/banner_message_enable		true
	#/apps/gdm/simple-greeter/banner_message_text		Welcome
	#/apps/gdm/simple-greeter/disable_restart_buttons	false
	#/apps/gdm/simple-greeter/disable_user_list		false

	# The lower panel doesn't work with the compositor
	/apps/metacity/general/compositing_manager		false

	# Prevent the power management icon from showing up
	/apps/gnome-power-manager/ui/icon_policy		never
	
6. Mit dem Befehl 'invoke-rc.d gdm3 reload' die Sache dingfest machen.

Zu Bedenken ist, daß es das Wallpaper in drei größen gibt.
Normaler weise werden die mit hilfe eines Makefiles in png's in die jeweiligen
Resolutionen gewandelt.

Dieser Makefile liegt als Makefile.txt bei.

Ich denke das GDM3 auch png bilder lesen kann, das Logo würde ich als svg belassen,
da es dann automatisch sich der jeweiliegen Größe anpasst.
Bei den Wallpapers würde es zu Verzerrungen kommen.
Oder es muß eine Möglichkeit gefunden werden, die die jeweiligen Bilder.svg
genauso wie die Bilder.png in den entsprechenden größen automatisch ein zu binden.

Wie die GdmGreeterTheme.desktop auszusehen hat und ob diese benötigt wird, kann ich nicht sagen.
Ich habe sie aber dazu gelegt.
