---
title: Extend PowerShell scripts that use app-only authentication with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to PowerShell scripts that use app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Extend PowerShell scripts that use app-only authentication with more Microsoft Graph APIs

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build PowerShell scripts with Microsoft Graph](powershell.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created.

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [List groups](/graph/api/group-list) API. You can use one of the examples in the API documentation, customize an API request in Graph Explorer and use the generated snippet, or use the `Find-MgGraphCommand` command to find the corresponding command.

For example, the API endpoint to list groups is `GET /groups`. You can use this information to find the corresponding PowerShell command.

```powershell
PS > Find-MgGraphCommand -Uri "/groups" -Method "GET"

   APIVersion: v1.0

Command     Module Method URI     OutputType           Permissions
-------     ------ ------ ---     ----------           -----------
Get-MgGroup Groups GET    /groups IMicrosoftGraphGroup {Directory.Read.All, Directory.ReadWrite.All, Group.Read.All, G…

   APIVersion: beta

Command     Module Method URI     OutputType            Permissions
-------     ------ ------ ---     ----------            -----------
Get-MgGroup Groups GET    /groups IMicrosoftGraphGroup1 {Directory.Read.All, Directory.ReadWrite.All, Group.Read.All, …
```

The output indicates that the `Get-MgGroup` command is the corresponding command.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, for example.

To call an API with app-only authentication (if the API supports it), add the required permission scope in the Microsoft Entra admin center. Be sure to disconnect and reconnect using app-only permission.

> [!TIP]
> Using the `-ForceRefresh` parameter with the `Connect-MgGraph` command ensures that newly configured permissions are applied.

## Run the command

Now that you're connected with the required permissions, run your chosen command.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [user (delegated) authentication](powershell.md) with the Microsoft Graph PowerShell SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.
