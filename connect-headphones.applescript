tell application "System Events" to tell process "SystemUIServer"
  set bt to (first menu bar item whose description is "Bluetooth") of menu bar 1
  click bt
  tell (first menu item whose title is "MDR-ZX770BN") of menu of bt
    click
    tell menu 1
      if exists menu item "Connect"
        click menu item "Connect"
        return "Connecting..."
      else
        click bt  -- close main dropdown to clean up after ourselves
        return "No connect button; is it already connected?"
      end if
    end tell
  end tell
end tell
