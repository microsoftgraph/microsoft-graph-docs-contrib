---
title: "Install the Microsoft Graph PowerShell SDK"
description: "Provides instructions for installing the Microsoft Graph PowerShell SDK."
ms.localizationpriority: medium
author: jasonjoh
---

# Install the Microsoft Graph PowerShell SDK

> [!NOTE]
> Installing the main module of the SDK will install all 38 sub modules. Consider only installing the necessary modules, including `Microsoft.Graph.Authentication`.

The Microsoft Graph PowerShell SDK is published on the [PowerShell Gallery](https://www.powershellgallery.com/packages/Microsoft.Graph). You can install the SDK in PowerShell Core or Windows PowerShell using the following command.

```powershell
Install-Module Microsoft.Graph -Scope CurrentUser
```

Optionally, you can change the scope of the installation using the `-Scope` parameter. This requires admin permissions.

```powershell
Install-Module Microsoft.Graph -Scope AllUsers
```

> [!IMPORTANT]
> Installing the SDK in one version of PowerShell does not install it for the other. Be sure to run the installation command inside the version of PowerShell you intend to use it in.

## Supported PowerShell versions

PowerShell 7 and later is the recommended PowerShell version for use withe the Microsoft Graph PowerShell SDK on all platforms. There are no additional prerequisites to use the SDK with PowerShell 7 or later.

The following prerequisites must be met to use the Microsoft Graph PowerShell SDK with Windows PowerShell.

- Upgrade to [PowerShell 5.1 or later](/powershell/scripting/windows-powershell/install/installing-windows-powershell#upgrading-existing-windows-powershell)
- Install [.NET Framework 4.7.2 or later](/dotnet/framework/install/)
- Update **PowerShellGet** to the latest version using `Install-Module PowerShellGet -Force`

## Verify installation

After the installation completes, you can verify the installed version with the following command.

```powershell
Get-InstalledModule Microsoft.Graph
```

The version in the output should match the latest version published on the PowerShell Gallery. Now you're ready to use the SDK.

> [!div class="nextstepaction"]
> [Get started with the Microsoft Graph PowerShell SDK](get-started.md)

## Updating the SDK

You can update the SDK and all of its dependencies using the following command.

```powershell
Update-Module Microsoft.Graph
```

## Uninstalling the SDK

First, use the following command to uninstall the main module.

```powershell
Uninstall-Module Microsoft.Graph
```

Then, remove all of the dependency modules by running the following commands.

```powershell
Get-InstalledModule Microsoft.Graph.* | %{ if($_.Name -ne "Microsoft.Graph.Authentication"){ Uninstall-Module $_.Name } }
Uninstall-Module Microsoft.Graph.Authentication
```

## Provide feedback

We welcome feedback! Please provide any feedback or report any problems on the [SDK GitHub repository](https://github.com/microsoftgraph/msgraph-sdk-powershell/issues).
