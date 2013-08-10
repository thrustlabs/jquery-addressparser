# This is for automatically compiling .coffee to .js 
# ChromeReloadr.sh is an AppleScript that reloads the active Chrome tab
watch('src\/.*\.coffee') {|match| system "cake build; ./ChromeReloadr.sh"}

# This compiles the test cases (and reloads Chrome tab to run them), 
watch('spec\/.*\.coffee') {|match| system "cake test; ./ChromeReloadr.sh"}
