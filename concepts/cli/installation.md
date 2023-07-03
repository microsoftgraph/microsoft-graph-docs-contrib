---
title: "Install the Microsoft Graph command-line interface (CLI)"
description: "Learn how to install the Microsoft Graph command-line interface (CLI)."
ms.localizationpriority: medium
author: jasonjoh
---

# Install the Microsoft Graph command-line interface (CLI)

<!-- markdownlint-disable MD051 -->

The Microsoft Graph command-line interface (CLI) is published on [GitHub](https://github.com/microsoftgraph/msgraph-cli/releases/latest).

[!INCLUDE [cli-preview](../../includes/cli-preview.md)]

## Installation

### [Windows](#tab/windows)

1. Download the .zip file beginning with **msgraph-cli-win-x64** from the **Assets** section of the page.
1. Extract the contents of the file into a directory.

### Windows environment setup (Optional)

1. Open **Settings**.
1. Select **About**, then **Advanced system settings**.
1. Select **Environment Variables...**.
1. Locate and select **Path**, then select **Edit**.

    > [!NOTE]
    > The **Path** variable is present in **User variables** as well as **System variables**. Updating the variable in **User variables** will only update the current user's path. Updating the variable in **System variables** will update the path for all users on the computer.

1. Add the full path to the directory containing **mgc.exe**.

### [Linux](#tab/linux)

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

### [macOS](#tab/macos)

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

### Verify installation

After the installation is completed, you can verify the installed version with the following command.

```bash
mgc --version
```

The version in the output should match the latest version published on TBD. Now you're ready to use the SDK.

## Updating the CLI

To update the CLI, download a newer version and extract into the directory containing the older version.

## Uninstalling the CLI

Delete the files from their location.

## Next steps

To learn how to perform basic tasks with the Microsoft Graph CLI, see [Get started with the Microsoft Graph command-line interface (CLI)](get-started.md).
