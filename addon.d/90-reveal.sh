#!/sbin/sh
# 
# /system/addon.d/90-reveal.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
build.prop
build.prop.bak
etc/audio_effects.conf
etc/audio_effects.conf.bak
etc/audio_policy.conf
etc/audio_policy.conf.bak
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file "$S"/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file "$S"/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac


