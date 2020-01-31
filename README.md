# AOSP: Accept Escrow Tokens

For secured users, the filesystem is encrypted in the Android system. The synthetic key for the filesystem is itself encrypted using the secret of the user in general. That's why you need to enter your PIN or Pattern after a reboot of your phone.

Android allows the synthetic password to be additionally encrypted using "escrow tokens". This feature is disabled in general except for automotive builds (the trust agent needs the escrow token in this case) and managed profiles and can also be enabled using a device policy manager.

This patch defines a new system feature `PackageManager.ACCEPT_ESCROW_TOKENS`. If enabled, the system accepts escrow tokens.


### Installation

To install the patch, ensure that version numbers matches, zip everthing under `src` and unzip it on your target system in an empty folder. Ensure that you have [setup your android build](https://github.com/notalexa/aosp_gettingstarted/systemsetups/build.md) and call
<pre>
. install.sh
</pre>
in your folder. This project modifies the API which has to be updated. To build the system again, use
<pre>
update-api ; m
</pre>
The patch also defines a target `feature.accept_escrow_tokens`, which can be used as a required target in your `Android.bp`, if your app needs to unlock a users file system using escrow tokens.

