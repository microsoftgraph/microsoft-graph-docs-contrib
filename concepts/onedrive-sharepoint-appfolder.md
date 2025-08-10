---
title: "Using app folder in OneDrive and SharePoint"
description: "Learn how to use the app folder in OneDrive and SharePoint for secure application settings and data storage with Microsoft Graph."
author: "patrick-rodgers"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
doc_type: conceptualPageType
ms.date: 03/14/2025
ms.topic: concept-article
---

# Using app folder in OneDrive and SharePoint

The *App Folder* is one of the [special folders](/graph/api/drive-get-specialfolder) exposed through the `/special` path in OneDrive and SharePoint. Primarily designed as a place to store application settings in a user's OneDrive, it can be applied to many scenarios. This article discusses the app folder, security, and how you can use it in your applications.

Supported by a dedicated scope, `Files.ReadWrite.AppFolder`, you can build consistent least-privilege applications to share data across device experiences.

## Access app folder

To get started, you need a Microsoft Entra ID application consented to the `Files.ReadWrite.AppFolder` scope. Both application and delegated permissions are supported as needed for your scenario.

To access an app folder, you make a Microsoft Graph call to:

```http
GET /{drive_Resource}/special/approot
```

> [!IMPORTANT]
> The name `approot` is case sensitive.

The first time you request the folder, it is created if it doesn't exist. All special folders are created within the target drive with the path `Apps/{Entra ID application name}`, which means that if your application is called "My Amazing App", the resulting path within the drive is `Apps/My Amazing App`.

The response is a [driveItem](/graph/api/resources/driveitem) that represents the folder, with both the [folder](/graph/api/resources/folder) and [specialFolder](/graph/api/resources/specialfolder) facets present. This drive item allows you to perform all expected operations on the folder of your application, including uploading files, listing children, and sharing contained files.

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('c9d6a7bd-c1e0-4cb6-bf3c-48bf6dc571ad')/drive/special/$entity",
  "id": "692b2511-cca3-487d-b972-e6487bba0aff",
  "lastModifiedDateTime": "2023-12-12T19:33:45Z",
  "webUrl": "https://contoso-my.sharepoint.com/personal/someone_contoso_com/Documents/Apps/MyApp",
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

An app folder offers several benefits, depending on the scenario, with the main advantage being the ability to easily access the folder via a constant path. For example, to access a user's app folder, you can always use `https://{graph}/me/special/approot`, without the need to track IDs or paths for individual users.

App folder doesn't just work for OneDrive; you can also use it with any drive resource, including SharePoint libraries. In this case, you need the full path to the drive, using the drive ID.

```http
GET /drives/{drive_Id}/special/approot
```

Sites also have a default drive. Use the following request URL to access it:

```http
GET /sites/{site_Id}/drive/special/approot
```

> [!NOTE] 
> It's possible, however rare, that the default drive for a site might no longer exist. Your application should account for this possibility.

The previous request creates an `Apps` folder at the root of the library with a folder inside, named after your application.

Another key advantage of app folders is isolation. The files of your application are stored in a unique location to ensure they don't clutter up a user's OneDrive or get accidentally deleted. Creating an app folder allows you a safe space to keep application-specific files outside the root OneDrive folder structure, keeping things cleaner for users.

App folder works across OneDrive for work or school and OneDrive for home, ensuring you can provide a consistent experience for all your users.

App folder also uses minimal permissions to save files, which is covered in detail in the next section.

## Security

Creating secure applications is critical for building trust. Often, SharePoint or OneDrive applications have broad permissions, which can be limited using [SharePoint application permissions](./permissions-selected-overview.md), but this limitation requires configuration and high privileges to assign. With app folder, no extra work is needed once the application is consented to use `Files.ReadWrite.AppFolder`. The service automatically limits access to a single folder, ensuring your application only has access to files within that folder.

> [!NOTE] 
> A user always has full control of their own OneDrive and can add or remove files from your app folder. If a user adds a file to the folder, your application gains access to that file. The control is on the folder, not on individual files uploaded by your application.

Also, `Files.ReadWrite.AppFolder` is supported in both delegated and application-only authentication patters. Using it with delegated patterns is ideal for accessing user files, and application patterns allow for processing information stored in folders created by the application.

### Delegated

The most common use of app folder is delegated authentication to store information in the user's OneDrive. This approach intersects the user's permissions with those of the application, ensuring that a user can only write to their own OneDrive and only to the app folder.

### Application only

With application permissions, the application can access all app folders associated with itself. Because no user is present, the `/me/drive/special/approot` path is unavailable, and you must use `/drives/{drive id}/special/approot` to access the user's OneDrive.

## Other considerations

With the use of the app folder, you have some other considerations to keep in mind when you decide on the right solution:

- The app folder counts against quota—either a user's OneDrive quota or the usage quota of a SharePoint site. Placing large files in the app folder might cause issues for your users. The app folder is ideal for storing configuration files, temporary storage, or drafts.
- Consider your expected user experience. If users need to access these files frequently or interact with them outside your application, `Files.ReadWrite` or `Files.ReadWrite.All` might be better options, allowing you to present a save-as experience and giving users the ability to choose where to store their files.
- Remember that a user can delete, edit, or replace any file within their own OneDrive. Although it's unlikely, your application should account for this possibility and not rely on these files or expect them to always exist. Applications with access to the full OneDrive can also access the app folder files; be mindful of the types of information you're storing.

## Scenarios

Many scenarios can immediately benefit from using the capabilities of the app folder and least-privilege access to read/write files. The following scenarios provide examples to get you started with app folders.

### User configuration

Users access your application from Teams, SharePoint, mobile, and desktop and need to store preferences and settings. Using the app folder you can easily store configuration files and access them from any device. Easily making your user's settings portable and always accessible with a known path. You can also store multiple settings files if you support different device capabilities.

### E-signature

Electronic signing of documents can take time, making it difficult to persist a user access token to write the signed document back to their OneDrive. With the app-only app folder, you can always write the signed document back using minimal permissions to ensure the user's files remain safe.

### Private drafts

Perhaps your application sends messages or is used for taking notes or writing documents; however, users need a way to store drafts before sending them to their eventual destination. You can use the app folder to store fragments and drafts easily on a per-user basis, providing cross-device access to ensure consistency and user satisfaction.

## Summary

The app folder is a flexible and robust way to store files, without compromising on minimal permissions. Providing a consistent path and cross-device accessibility, the app folder is a great option for storing the files of your application in a secure and efficient way. Supporting both application-only and delegated authentication patterns, it provides flexibility in your design, backed by the full capabilities of Microsoft Graph and Microsoft 365.
