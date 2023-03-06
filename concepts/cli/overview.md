---
title: "Microsoft Graph command-line interface (CLI) overview"
description: "Learn about the features of the Microsoft Graph command-line interface that can help you derive insights and analytics, and build unique, intelligent apps."
ms.localizationpriority: medium
author: jasonjoh
---

# Microsoft Graph command-line interface (CLI) overview

The Microsoft Graph PowerShell command-line interface (CLI) acts as an API wrapper for the Microsoft Graph APIs, exposing the entire API set for use from the command line.

## Microsoft Graph CLI features & benefits

The Microsoft Graph CLI provides the following benefits:

- **Access to all Microsoft Graph APIs**: The Microsoft Graph CLI is based on Microsoft Graph API. In addition to Azure AD, the Microsoft Graph API includes APIs from other Microsoft services like SharePoint, Exchange, and Outlook, all accessed through a single endpoint with a single access token.
- **Cross-platform support**: The Microsoft Graph CLI works on all platforms including Windows, macOS, and Linux.
- **Supports modern authentication**: The Microsoft Graph CLI supports the Microsoft Authentication Library (MSAL) which offers more security.
- **Uses least privilege**: Microsoft Graph CLI permissions are not pre-authorized and users must perform one-time request for app permissions depending on their needs.
- **Open source**: Feature teams and the community can create great command-line experiences and share them with everyone.
- **Receives regular updates**: Microsoft Graph CLI commands are updated regularly to support the latest Graph API updates.

## Install the Microsoft Graph CLI

The latest release of the Microsoft Graph CLI is available on [GitHub](https://github.com/microsoftgraph/msgraph-cli/releases/latest).

### Windows[#tab/windows]

1. Download the .zip file beginning with **msgraph-cli-win-x64** from the **Assets** section of the page.
1. Extract the contents of the file into a directory.

### Windows environment setup (Optional)

1. Open **Settings**.
1. Select **About**, then **Advanced system settings**.
1. Select **Environment Variables...**.
1. Locate and select **Path**, then select **Edit**.

    > [!NOTE]
    > The **Path** variable is present in **User variables** as well as **System variables**. Updating the variable in **User variables** will only update the current user's path. Updating the variable in **System variables** will update the path for all users on the machine.

1. Add the full path to the directory containing **mgc.exe**.

### Linux[#tab/linux]

1. Download the .tar.gz file beginning with **msgraph-cli-linux-x64** from the **Assets** section of the page.
1. Extract the contents of the file into a directory.

### Linux environment setup

To update `PATH` for your current session, run the following command while in the directory containing **mgc**.

```bash
export PATH=$PATH:$(PWD)
```

Alternatively, you can update `PATH` permanently by editing your shell profile (`~/.bash-profile` or `~/.zsh-profile`). Add the following line to your profile.

```bash
export PATH=$PATH:[path-to-the-cli-folder]
```

#### Configure gnome-keyring

The following steps are required on Linux distributions that do not have a desktop environment.

1. Install **gnome-keyring** and **libsecret** with the following command.

    ```bash
    sudo apt-get install --assume-yes gnome-keyring libsecret-1-0
    ```

1. Run a **gnome-keyring** daemon process with the following commands. Replace `secure-password` with a secure password of your choosing.

    ```bash
    sudo setcap cap_ipc_lock=+ep $(which gnome-keyring-daemon)

    export DBUS_SESSION_BUS_ADDRESS=$(dbus-daemon --session --fork --print-address)

    export KEYRING_PASSWORD=secure-password

    dbus-run-session -- echo "$KEYRING_PASSWORD" | gnome-keyring-daemon --daemonize --components=secrets --unlock
    ```

    > [!NOTE]
    > The previous commands must be run every time the system restarts.

### macOS[#tab/macos]

1. Download the .tar.gz file beginning with **msgraph-cli-osx-x64** (for Intel-based Mac) or **msgraph-cli-osx-arm** (for M1 or M2-based Mac) from the **Assets** section of the page.
1. Extract the contents of the file into a directory.

### macOS environment setup

To update `PATH` for your current session, run the following command while in the directory containing **mgc**.

```bash
export PATH=$PATH:$(PWD)
```

Alternatively, you can update `PATH` permanently by editing your shell profile (`~/.bash-profile` or `~/.zsh-profile`). Add the following line to your profile.

```bash
export PATH=$PATH:[path-to-the-cli-folder]
```

---

## Get started

To perform basic tasks, see [Get started with the Microsoft Graph command-line interface (CLI)](get-started.md).

## Next steps

- If you don't have a Microsoft 365 account, you can [sign up for the Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program) to get a free developer sandbox, including a Microsoft 365 E5 developer subscription.
- If you already have access to a Microsoft 365 tenant, [Install the SDK](installation.md).
