---
title: "Using app folder in OneDrive and SharePoint"
description: "Learn how and when to use app folder along with guidance "
author: "patrick-rodgers"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
doc_type: conceptualPageType
ms.date: 03/14/2025
---

# Using app folder in OneDrive and SharePoint

The *App Folder* is one of the [special folders](../api-reference/v1.0/api/drive-get-specialfolder.md) exposed through the `/special` path in OneDrive and SharePoint. Primarily designed as a place to store application settings in a user's OneDrive, it can be applied to many scenarios. This article discusses the App Folder, security, and how you can use it in your applications.

Supported by a dedicated scope, `Files.ReadWrite.AppFolder`, you can build consistent least-privilege applications to share data across device experiences.

## Access app folder

To get started, you need a Microsoft Entra ID application consented to the `Files.ReadWrite.AppFolder` scope. Both application and delegated are supported as needed for your scenario.

To access an app folder, you make a Microsoft Graph call to:

```HTTP
GET /{drive resource}/special/approot
```

> [!IMPORTANT]
> The name `approot` is case sensitive.

The first time you request the folder, it's created if it doesn't exist. All special folders are created within the target drive with the path `Apps/{EntraId application name}`, which means that if your application is called "My Amazing App", the resulting path within the drive is `Apps/My Amazing App`.

The response is a drive item that represents the folder, with both the folder and specialFolder facets present. This allows you to perform all expected operations on the folder of your application, including uploading files, listing children, and sharing contained files.

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

## App folder advantages

By using an app folder, you gain several benefits depending on the scenario, with the main advantage being the ability to easily access the folder via a constant path. For example, to access a user's app folder, you can always use `https://{graph}/me/special/approot`, without the need to track IDs or paths for individual users.

App folder doesn't just work for OneDrive; you can also use it with any drive resource, including SharePoint libraries. In this case, you need a full path to the drive, using the drive ID.

```http
GET /drives/{drive id}/special/approot
```

Sites also have a default drive. Use the following request URL to access it.

```http
GET /sites/{site id}/drive/special/approot
```

> [!NOTE] 
> It's possible, however rare, that the default drive for a site may no longer exist. Your application should account for this possibility.

This previous request creates an `Apps` folder at the root of the library with a folder inside using your the name of your application.

Another key advantage of app folders is isolation. The files of your application are stored in a unique location to ensure they don't clutter up a user's OneDrive, or accidentally get deleted. Creating an app folder allows you a safe space to keep application-specific files outside the root OneDrive folder structure, keeping things cleaner for users.

App folder also works across OneDrive and OneDrive Commercial, ensuring you can provide a consistent experience for all your users.

And finally, app folder uses minimal permissions to save files, discussed in detail in the next section.

## Security

Creating secure applications is critical for building trust. Often SharePoint or OneDrive applications have broad permissions, which can be limited using [SharePoint Application Permissions](./permissions-selected-overview.md). But requires configuration and high-privledge to assign. Using AppFolder no other work is required once the application is consented to use `Files.ReadWrite.AppFolder`. The service automatically limits access to a single folder. Ensuring your application only ever has access to files within that folder.

> [!NOTE]
> A user always has full control of their own OneDrive, and can add or remove files to your app folder. If a user adds a file to the folder, your application gains access to that file. The control is on the folder, not on individual files uploaded by your application.

And rember, `Files.ReadWrite.AppFolder` is supported in both delegated and application-only calling. Using it with delegated patterns is best for accessing user files, and application patterns allow for processing of information stored in folders the application creates.

### Delegated

The most common use for AppFolder is delegated authentication to store information in user's OneDrives. This intersects the user's permissions with the application's ensuring that a user can only write to their own OneDrive, and only to the appfolder.

### Application only

With application permissions the application can access all appfolders associated with itself. As there is no user present, the `/me/drive/special/approot` path is unavailable and you must use `/drives/{drive id}/special/approot` to access user's OneDrives.

## Other considerations

With the use of the app folder, you have some other considerations to keep in mind when you decide on the right solution.

Firstly, the app folder counts against quota—either a user's OneDrive quota or the usage quota of a SharePoint site. Placing large files in the app folder may cause issues for your users. The app folder is ideal for storing configuration files, temporary storage, or drafts.

Next, consider your expected user experience. If users need to access these files frequently or interact with them outside your application, `Files.ReadWrite` or `Files.ReadWrite.All` may be better options, allowing you to present a save-as experience and giving users the ability to choose where to store their files.

Finally, remember that a user can delete, edit, or replace any file within their own OneDrive. Although it's unlikely, your application should account for this possibility and not blindly trust these files or expect them to always exist. Applications with access to the full OneDrive can also access the app folder files; be mindful of the types of information you're storing.

## Scenarios

Many scenarios can immediately benefit from using the capabilities of the app folder and least-privilege access to read/write files. We've included some ideas to get you started - how will you use AppFolders?

### User configuration

Users access your application from Teams, SharePoint, mobile, and desktop and need to store preferences and settings. Using the app folder you can easily store configuration files and access them from any device. Easily making your user's settings portable and always accessible with a known path. You can also store multiple settings files if you support different device capabilities.

### E-signature

Electronic signing of documents can take time, making it difficult to persist a user access token to write the signed document back to their OneDrive. With the app-only app folder, you can always write the signed document back using minimal permissions to ensure the user's files remain safe.

### Private drafts

Perhaps your application sends messages or is used for taking notes or writing documents; however, users need a way to store drafts before sending them to their eventual destination. You can use the app folder to store fragments and drafts easily on a per-user basis, providing cross-device access to ensure consistency and user satisfaction.

## Summary

The app folder is a flexible and robust way to store files, without compromising on minimal permissions. Providing a consistent path and cross-device accessibility, the app folder is a great option for storing the files of your application in a secure and efficient way. Supporting both application-only and delegated authentication patterns, it provides flexibility in your design, backed by the full capabilities of Microsoft Graph and Microsoft 365.
