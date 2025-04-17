# Nyx2 Metin2 Launcher

A custom Metin2 launcher built in C++ and digitally signed using a self-signed certificate.  
This project includes a batch script for automated build and signing.  
Designed to minimize false-positive detections in VirusTotal and avoid SmartScreen blocking in Windows Defender.

## Build and Sign
** After setting up the post-build event, run the build process in Visual Studio. The build will complete, and the executable will be signed automatically with the provided self-signed certificate (certificat.pfx), reducing the risk of detection as a false-positive by antivirus software. **

## Features

- ✅ Built in C++ (Visual Studio)
- 🔐 Digitally signed with a self-signed certificate
- 🛡️ Optimized to reduce false-positive detections
- 🚀 Ready for public launcher release
- 
- **Self-Signed Certificate**: Automatically generates a signed executable using your own certificate (`certificat.pfx`).
- **Reduces False Positives**: The signing process aims to prevent detection by antivirus software, such as **Windows Defender** and **VirusTotal**.
- **Post-Build Event**: After the build, the executable is automatically signed to ensure it is ready for deployment without manual intervention.

## Usage

1. Open `Metin2Launcher.sln` in Visual Studio.
2. Modify and customize the launcher as needed.
3. Run `build-launcher.bat` to build and sign the executable.

🛠️ How to Create a Self-Signed Certificate
If you don't already have a self-signed certificate, you can generate one using PowerShell or MakeCert. Here’s a basic example of how to do it in PowerShell:

Hitsukaya Launcher Clean Build

### Steps:

### **Install Necessary Tools**

Before proceeding with building and signing the launcher, you need to install the following tools:

- **Visual Studio**: Make sure you have **Visual Studio** installed with the **Desktop development with C++** workload enabled.
- **Windows SDK**: The `signtool` utility comes with the Windows SDK. If you don't have it installed, you can download it from the [Windows SDK page](https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk/).
  
To ensure that the `signtool` command works, the path to the `signtool.exe` should be included in your **System Environment Variables** or referenced directly in your build scripts. You can find `signtool.exe` in the directory where the Windows SDK is installed, typically:

- `C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\x64\signtool.exe` (adjust the version number as necessary).

1. **Generate Certificate** (PowerShell):
  - Change the location
    
  ```powershell
  $cert = New-SelfSignedCertificate -Type CodeSigningCert -Subject "CN=Hitsukaya" -CertStoreLocation "Cert:\CurrentUser\My"
  $pwd = ConvertTo-SecureString -String "nyx2" -Force -AsPlainText
  Export-PfxCertificate -Cert $cert -FilePath "C:\Users\Hitsukaya\Desktop\certifcate--launcher\certificat.pfx" -Password $pwd
  ```
  
2. **Sign the Executable** (using signtool):

  - Change the location
    
  ```bash
  signtool sign /f "C:\Users\Hitsukaya\Desktop\certifcate-launcher\certificat.pfx" /p nyx123 /tr http://timestamp.digicert.com /td sha256 /fd sha256 "C:\Users\Hitsukaya\Desktop\certifcate-launcher\Metin2Release.exe"
  ```
  
3. **Verify the Signature**:

  - Change the location
  ```bash
  signtool verify /pa /v "C:\Users\Hitsukaya\Desktop\certifcate-launcher\Metin2Release.exe"
  ```
  
4. **Upload to VirusTotal** for testing:
  
  - Upload your signed executable to [VirusTotal](https://www.virustotal.com) and check if the detection rate is 0/72 or as low as possible.


$cert = New-SelfSignedCertificate -Type CodeSigning -Subject "CN=Hitsukaya" -KeySpec Signature
Export-PfxCertificate -Cert $cert -FilePath "C:\path\to\certificat.pfx" -Password (ConvertTo-SecureString 

## Note

**False-positive detections in VirusTotal or Windows Defender can happen with custom launchers.  
To reduce these:**

- Always sign your `.exe` file using `signtool`.
- Avoid using obfuscators or packers.
- Upload a clean version for reputation building.
- False-positive detections in VirusTotal or Windows Defender can happen with custom launchers.
- To reduce these:

- Always sign your .exe file using signtool.

- Avoid using obfuscators or packers.

- Upload a clean version for reputation building.

## License

Released under the [MIT License](LICENSE).

---

**Created with ❤️ by Valentaizar Hitsukaya**
