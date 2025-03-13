---
title: "Using AppFolder in OneDrive and SharePoint"
description: "Learn how and when to use appfolder along with guidance "
author: "patrick-rodgers"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Using AppFolder in OneDrive and SharePoint

AppFolder is one of the [special folders](../api-reference/v1.0/api/drive-get-specialfolder.md) exposed through the /special path in OneDrive and SharePoint. Primarily designed as a place to store application settings in a user's OneDrive it can be applied to many scenarios. This article discusses AppFolder, security, and how you can use it in your applications.

Supported by a dedicated scope, `Files.ReadWrite.AppFolder`, you can build consistent least-privilege applications to share data across device experiences.

## Access AppFolder

To get started, you need an EntraId application consented to the Files.ReadWrite.AppFolder scope. Both application and delegated are supported as needed for your scenario.

To access an app folder, you make a Microsoft Graph call to:

```HTTP
GET {drive resource}/special/approot
```

> [!IMPORTANT]
> The name "approot" is case sensitive

The first time you request the folder it is created if it does not exist. All special folders are created within the target drive with the path `Apps/{EntraId application name}` - meaning if your application is called "My Amazing App" the resulting path within the drive is `Apps/My Amazing App`.

What you get back is a drive item representing the folder, with both the folder and specialFolder facets present as shown below (some information omitted). This means that you can perform all the expected operations to your application's folder like any other folder such as uploading files, listing children, and sharing contained files.

```JSON
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('{user id}')/drive/special/$entity",
    "id": "{folder id}",
    "lastModifiedDateTime": "2023-12-12T19:33:45Z",
    "webUrl": "https://{tenant}-my.sharepoint.com/personal/{user path}/Documents/Apps/{app name}",
    "size": 0,
    "folder": {
        "childCount": 0
    },
    "specialFolder": {
        "name": "approot"
    }
}
```

## AppFolder Advantages

Using appfolder has several benefits depending on the scenario, the main one being the ability to easily address the folder with a constant path. For example, to access a user's app folder you can always use `https://{graph}/me/special/approot`. No need to track ids or paths for individual users.

But AppFolder doesn't just work for OneDrive, you can use it with any drive resource including SharePoint libraries. In this case you need a full path to the drive, using the drive id.

```HTTP
GET drives/{drive id}/special/approot
```

Sites also have a default drive, accessible through:

```HTTP
GET sites/{site id}/drive/special/approot
```

> It is possible, though rare, that the default drive for a site may no longer exist - your application should account for this possiblity.

This call creates an `Apps` folder at the root of the library with a folder inside using your application's name.

Another key advantage of app folders is isolation. Your application's files are stored in a unique location to ensure they don't clutter up a user's OneDrive, or accidentally get deleted. Creating an appfolder allows you a safe space to keep application-specific files outside the root OneDrive folder structure, keeping things cleaner for users.

AppFolder also works across OneDrive and OneDrive Commercial, ensuring you can provide a consistent experience for all your users.

And finally, appfolder uses minimal permissions to save files, discussed in detail in the next section.

## Security

Creating secure applications is critical for building trust. Often SharePoint or OneDrive applications have broad permissions, which can be limited using [SharePoint Application Permissions](./permissions-selected-overview.md). But requires configuration and high-privledge to assign. Using AppFolder no other work is required once the application is consented to use `Files.ReadWrite.AppFolder`. The service automatically limits access to a single folder. Ensuring your application only ever has access to files within that folder.

> A user always has full control of their own OneDrive, and can add/remove files to your appfolder. If a user adds a file to the folder, your application will gain access to that file. The control is on the folder, not on individual files uploaded by your application.

And rember, `Files.ReadWrite.AppFolder` is supported in both Delegated and Application-Only calling. Using it with delegated patterns is best for accessing user files, and application patterns allow for processing of information stored in folders the application creates.

### Delegated

The most common use for AppFolder is delegated authentication to store information in user's OneDrives. This intersects the user's permissions with the application's ensuring that a user can only write to their own OneDrive, and only to the appfolder.

### Application Only

With application permissions the application can access all appfolders associated with itself. As there is no user present, the `/me/drive/special/approot` path is unavailable and you must use `/drives/{drive id}/special/approot` to access user's OneDrives.

## Other Considerations

With the use of AppFolder there are some other considerations when deciding on the right solution.

Firstly, AppFolder counts against quota - either a user's OneDrive quota or a SharePoint site's usage quota. Placing large files into the app folder may cause issues for your users. App folder is a great place to store configuration, some temp storage, or drafts.

Also, consider your expected user experience. If the user needs to access these files frequently, or interact with them outside your application, `Files.ReadWrite` or `Files.ReadWrite.All` may be better choices allowing you to present a save-as experience and letting them decide where to keep things.

And finally, keep in mind that a user can delete, edit, or replace any file within their own OneDrive. While its unlikely, your application should account for this and not blindly trust these files or expect them to always exist. In addition, applications with access to the full OneDrive can access AppFolder files, so keep in mind what types of information you are storing.

## Scenarios

There are many scenarios that can immediately benefit from using AppFolder's capabilites and least-privilege access to read/write files. We included some ideas to get you started - how will you use AppFolders? 

### User Configuration

Users access your application from Teams, SharePoint, mobile, and desktop and have the option to store preferences and settings. Using AppFolder you can easily store configuration files and access them from any device. Easily making your user's settings portable and always accessible with a known path. And you can store multiple settings files if you support different device capabilities.

### E-Signature

Electronic signing of documents can take time making it hard to persist a user access token to write the signed document back to their OneDrive. With App-Only AppFolder, you can always write back the signed document using minimal permissions to ensure the user's files remain safe.

### Private Drafts

Perhaps your application sends messages or is used to take notes or write documents. But users need a way to store drafts before sending them to their eventual destination. You can use AppFolder to story fragments and drafts easily on a per-user basis, providing cross-device access to ensure consistency and user delight.

## Summary

AppFolder is a flexible and robust way to store files while maintaining minimal permissions. Providing a consistent path and cross-device accessibility AppFolder is a great option for storing your application's files in a secure and efficient way. Supporting both application-only and delegated authentication patterns you have flexibility in your design, backed by the full capabilities of Microsoft Graph and M365.
