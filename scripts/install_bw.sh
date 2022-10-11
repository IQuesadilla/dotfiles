#!/bin/bash

wget https://addons.mozilla.org/firefox/downloads/file/4002564/bitwarden_password_manager-2022.9.1.xpi

mv bitwarden_password_manager-2022.9.1.xpi $(echo ~/.mozilla/firefox/*.default-release)/extensions/{$(unzip -p bitwarden_password_manager-2022.9.1.xpi manifest.json | grep \"id\" | sed 's/.*{//;s/}.*//')}.xpi
