# Microsoft Store Automatic Repair Script

This PowerShell-based `.bat` script automatically fixes common issues related to the Microsoft Store on Windows operating systems.

### Features

- **Clear Store cache**: Deletes the Microsoft Store cache to resolve glitches and sync issues.
- **Reset proxy settings**: Restores proxy settings to default in case of misconfiguration.
- **System file check and repair**: Uses DISM and SFC commands to repair the system image and fix corrupted files.
- **Re-register Microsoft Store**: Reinstalls and re-registers the Microsoft Store app and the Windows App Runtime to restore functionality.

### Usage

1. Download the `Fix_Microsoft_Store.bat` file.
2. Right-click the file and select **"Run as administrator."**
3. The script will automatically execute the repair steps.  
   If required, restart your computer to apply the changes.

### Output / Process Overview

After launching the script, your system will go through the following steps, and you’ll see outputs like the following in the terminal:

```
=== Starting Microsoft Store automatic repair... ===

1. Clearing Store cache...

2. Resetting proxy settings...

Current WinHTTP proxy settings:

    Direct access (no proxy server).


Next, DISM and SFC will be executed:

3. Running DISM and SFC...

Deployment Image Servicing and Management tool
Version: 10.0.19041.3636

Image Version: 10.0.19045.5737

[==                         3.8%                           ]  # DISM progress


When finished, the script confirms that everything has been successfully repaired:

[==========================100.0%==========================] The restore operation completed successfully.
The operation completed successfully.

Beginning system scan.  This process will take some time.

Beginning verification phase of system scan.
Verification 8% complete.
```

### Important Notes

- The script **does not modify any other system settings** — it only works with Microsoft Store and related components.
- **Administrator privileges are required** to run the script.

### Developer

Created by: **STORM**  
📧 Email: info@stormfilms.xyz
