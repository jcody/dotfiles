#!/bin/bash

# Configure Terminal.app appearance settings
# This script sets up Terminal.app with custom appearance preferences

PROFILE_NAME="Pro"

# Set Terminal.app preferences
defaults write com.apple.Terminal "Default Window Settings" -string "$PROFILE_NAME"
defaults write com.apple.Terminal "Startup Window Settings" -string "$PROFILE_NAME"

# Configure the profile with custom settings
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "BackgroundColor" -string "0.000000 0.000000 0.000000"
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "BackgroundBlur" -int 0
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "Font" -string "Monaco-14"
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "FontAntialias" -bool false

###
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "FontBold" -bool true
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "BlinkText" -bool true
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "UseBrightBold" -bool false

defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "ShowWindowSettingsNameInTitle" -bool false
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "shellExitAction" -int 2
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "useOptionAsMetaKey" -bool true
defaults write com.apple.Terminal "$PROFILE_NAME" -dict-add "Bell" -int 0

# Additional useful Terminal settings
defaults write com.apple.Terminal "AutoMarkPromptLines" -int 0
defaults write com.apple.Terminal "SecureKeyboardEntry" -bool false
