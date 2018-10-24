# DHBW Gradifier
![alt text](https://api.travis-ci.org/mariuskiessling/dhbw-gradifier.svg?branch=latest "Build status badge")

This simple Go tool fetches all published grades from Dualis and sends you an email when new grades get published. If you don't know what Dualis is you can definitely call yourself happy. Dualis is the grade management system that is used at the DHBW Stuttgart. This project is one reason never to touch the web interface again.

**Please note**: This is my first attempt at writing Go code. Therefore please take the code with a grain of salt.

## :rocket: Running the Gradifier
1. Download the three files that are required for execution:
  - Your binary file (more precompiled binary files are available on the [release page](https://github.com/mariuskiessling/dhbw-gradifier/releases/tag/latest)):
    - [:apple: MacOS (32-Bit)](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/darwin_386_dhbw-gradifier)
    - [:apple: MacOS (64-Bit)](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/darwin_amd64_dhbw-gradifier)
    - [:penguin: Linux (32-Bit)](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/linux_386_dhbw-gradifier)
    - [:penguin:: Linux (64-Bit)](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/linux_amd64_dhbw-gradifier)
    - [:computer: Windows (32-Bit)](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/windows_386_dhbw-gradifier.exe)
    - [:computer: Windows (64-Bit)](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/windows_amd64_dhbw-gradifier.exe)

    _The binaries are not signed. You might have to explicitly allow running an unsigned piece of software._
  - The config file: [:floppy_disk: Download](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/config.json)
  - The mail notification template: [:floppy_disk: Download](https://github.com/mariuskiessling/dhbw-gradifier/releases/download/latest/notification.tpl)
2. Open the `config.json` in your favorite editor and enter all required information. The update interval should not be greater than 29 minutes because the lifetime of a Dualis session is 30 minutes.
3. If you are on Linux or MacOS you have to enable execution for the downloaded binary file. Run `chmod +x PLATFORM_ARCH_dhbw-gradifier`.
3. Run the binary file. You should receive an initial mail containing all grades published to date. This mail is sent after the first update interval is over.

## :mailbox: Configuring a mail server
If you don't have a personal mail server or don't want to use a public one like Gmail, you can use the one provided by the university.

When using the mail server provided by the DHBW, you have to enter the following information in your `config.json`:

```
"SMTPHost": "lehre-mail.dhbw-stuttgart.de",
"SMTPPort": 587,
"SMTPUsername": "itXXXXX",
"SMTPPassword": "XXXXXXXXXXXXX",
```
