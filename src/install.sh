
[ -n "$ANDROID_BUILD_TOP" ] && {
	echo "Install feature.accept_escrow_tokens in $ANDROID_BUILD_TOP"
	cp -r frameworks $ANDROID_BUILD_TOP
}
