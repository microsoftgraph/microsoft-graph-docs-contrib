---
title: "Manage profile source precedence settings for an organization using the Microsoft Graph API (preview)"
description: "Learn how to use Microsoft Graph APIs to configure profile source priority for an organization."
author: "rwaithera"
ms.localizationpriority: high
ms.subservice: "people"
ms.custom: scenarios:getting-started
ms.date: 05/02/2025
ms.topic: how-to
---

# Manage profile source precedence settings for an organization using the Microsoft Graph API (preview)

Profile source precedence is a feature that empowers tenant admins with control over the source of profile data for their organization's users. Profile data might originate from Microsoft Entra ID, organizational data in Microsoft 365, user profile synchronization, or other sources. When multiple sources provide overlapping data, a tenant administrator can configure the authoritative source of profile data for users in their organization.

This administrator guide explains how to configure profile source precedence in an organization using Microsoft Graph APIs. It details the steps required to add, update, and delete profile property settings. By following this guide, you can control which profile data is accurately displayed across various Microsoft 365 experiences based on the configured priorities.

The priority source URLs are arranged according to data precedence, with the first item in the collection having the highest priority.

>**Note:** The **name** property *must* be empty to differentiate it from other property-level settings in the collection that have a **name** property. Only one configuration without a name is allowed per profile property settings collection.

> [!IMPORTANT]
> Setting a new profile source as a priority changes the values of properties that users in your organization see on their profiles. 
> By default, Entra ID is the prioritized source of profile data in an organization.

## Configure profile source precedence settings using the Microsoft Graph API

You can use the [profilePropertySetting](/graph/api/resources/profilepropertysetting?view=graph-rest-beta&preserve-view=true) API to configure profile source precedence in your organization.

### Confirm your current settings

Use the [List](/graph/api/peopleadminsettings-list-profilepropertysettings?view=graph-rest-beta&preserve-view=true) operation to return the current settings for profile property settings in your organization.

The following example gets the collection of profile property settings in an organization.

```http
GET https://graph.microsoft.com/beta/admin/people/profilePropertySettings
```

If successful, this method returns a `200 OK` response code and a [profilePropertySetting](/graph/api/resources/profilepropertysetting?view=graph-rest-beta&preserve-view=true) object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "00000000-0000-0000-0000-000000000001",
      "name": null,
      "userOverridePrivacy": null,
      "allowedAudiences": null,
      "prioritizedSourceUrls": [
        "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
      ]
    }
  ]
}
```

## Add profile source precedence setting

Use the [Create](/graph/api/peopleadminsettings-post-profilepropertysettings?view=graph-rest-beta&preserve-view=true) operation to add the profile source precedence setting for your organization.

### Request

```http
POST https://graph.microsoft.com/beta/admin/people/profilePropertySettings
Content-Type: application/json

{
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

If successful, this method returns a `201 Created` response code and a [profilePropertySetting](/graph/api/resources/profilepropertysetting?view=graph-rest-beta&preserve-view=true)  object in the response body.

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "00000000-0000-0000-0000-000000000001",
  "name": null,
  "userOverridePrivacy": null,
  "allowedAudiences": null,
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

## Update profile source precedence setting

Use the [Update](/graph/api/profilepropertysetting-update?view=graph-rest-beta&preserve-view=true) operation to modify the profile source precedence setting in your organization.

### Request

```http
PATCH https://graph.microsoft.com/beta/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001
Content-Type: application/json

{
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr2')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

If successful, this method returns a `200 OK` response code and a [profilePropertySetting](/graph/api/resources/profilepropertysetting?view=graph-rest-beta&preserve-view=true) object in the response body.

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "00000000-0000-0000-0000-000000000001",
  "name": null,
  "userOverridePrivacy": null,
  "allowedAudiences": null,
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr2')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

## Remove profile source precedence setting

Use the [Delete](/graph/api/profilepropertysetting-delete?view=graph-rest-beta&preserve-view=true) operation to remove the profile source precedence setting in your organization.

### Request

```http
DELETE https://graph.microsoft.com/beta/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001
```

If successful, this method returns a `204 No Content` response code.

### Response

```http
HTTP/1.1 204 No Content
```

## Configure profile source precedence setting using the Microsoft Graph PowerShell SDK

You can use the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) to configure profile source precedence settings in your organization.

### Prerequisites

- **PowerShell module** - Install [module version 2.3.0 or higher](https://www.powershellgallery.com/packages/Microsoft.Graph).
- **.NET Framework** - Install [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework) or a higher version.

> [!NOTE]
> The PowerShell commands for profile source precedence settings are only available in beta. Switch to the beta experience before you run the following commands.

```powershell
Install-Module -Name Microsoft.Graph.Beta -MinimumVersion 2.3.0
Update-Module Microsoft.Graph.Beta
```

### Confirm your current settings

To get profile property settings configuration for an organization, use the following command.

```powershell
Get-MgBetaAdminPeopleProfilePropertySetting
```

To get the profile source precedence configuration in an organization, use the following command.

```powershell
Get-MgBetaAdminPeopleProfilePropertySetting -ProfilePropertySettingId $id
```

> [!NOTE]
> The get commands require the `PeopleSettings.Read.All` permission. To create a Microsoft Graph session with a specific required scope, use the following command and consent to the requested permissions.

```powershell
Connect-MgGraph -Scopes "PeopleSettings.Read.All"
```

### Add profile source precedence setting in your organization

You can use the Microsoft Graph PowerShell module to configure profile precedence in your organization. The new command requires the PeopleSettings.ReadWrite.All permission, and to create a Microsoft Graph session with the specific required scope, use the following command and consent to the requested permissions.

```powershell
Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
```

```powershell
$params = @{
    prioritizedSourceUrls = @(
      "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='hrPlatform1')",
	    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
    )
}

New-MgBetaAdminPeopleProfilePropertySetting -BodyParameter $params
```

### Update profile source precedence setting in your organization

You can use the Microsoft Graph PowerShell module to update the profile source precedence setting in your organization. The update command requires the PeopleSettings.ReadWrite.All permission, and to create a Microsoft Graph session with the specific required scope, use the following command and consent to the requested permissions.

```powershell
Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
```

```powershell
$params = @{
    prioritizedSourceUrls = @(
        "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
        "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr2')",
        "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
    )
}

Update-MgBetaAdminPeopleProfilePropertySetting -ProfilePropertySettingId $id -BodyParameter $params
```

### Remove profile source precedence setting in your organization

You can use the Microsoft Graph PowerShell module to remove the profile source precedence setting from your organization. The remove command requires the PeopleSettings.ReadWrite.All permission, and to create a Microsoft Graph session with the specific required scope, use the following command and consent to the requested permissions.

```powershell
Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
```

```powershell
Remove-MgBetaAdminPeopleProfilePropertySetting -ProfilePropertySettingId $id
```

## Related content
* [Manage profile source settings for an organization](/graph/profilesource-configure-settings)
* [Understand how organizational data is used and retained in Microsoft 365](/viva/orgdata-data-usage)
* [User profile synchronization](/sharepoint/user-profile-sync)
