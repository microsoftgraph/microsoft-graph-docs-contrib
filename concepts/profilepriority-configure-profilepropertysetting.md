---
title: "Manage profile source precedence in Microsoft 365"
description: "Learn how to configure profile source precedence for people data in Microsoft 365 using Microsoft Graph APIs or PowerShell."
author: "rwaithera"
ms.localizationpriority: high
ms.subservice: "people"
ms.custom: scenarios:getting-started
ms.date: 06/08/2026
ms.topic: how-to
---

# Manage profile source precedence in Microsoft 365

Profile source precedence is a feature that empowers tenant admins with control over the source of profile data for their organization's users. Profile data might originate from Microsoft Entra ID, organizational data in Microsoft 365, Copilot connectors for people data, SharePoint, or other sources. When multiple sources provide overlapping data, a tenant administrator can configure the authoritative source of profile data for users in their organization. This capability primarily applies to HR and work position data in the user profile, which is treated as single-valued.

For more details about people data sources and source IDs, see [Manage profile source settings for an organization](/graph/profilesource-configure-settings).

The source precedence related to HR and work position data is based on a default ordering by source priority:

1. Copilot connectors for people data, if configured, including connectors to popular HR systems and custom connectors. An organization might configure more than one connection. The most recently configured connection has the highest priority. Each connection has a unique source ID defined by the admin.
1. Microsoft Entra ID. The source ID is `4ce763dd-9214-4eff-af7c-da491cc3782d`.
1. Organizational data in Microsoft 365. The source ID is `7986c642-b494-4140-8df4-f5ed125e2c67`. For details on the customer sources associated with this Microsoft 365 source, see [Organizational data in Microsoft 365](/viva/organizational-data).

Other sources of people data exist, but only the listed sources are relevant when you choose the authoritative value for HR or work position data and when you apply tenant admin source precedence configuration as described in this article.

> [!NOTE]
> * The SharePoint User Profile Application (UPA) source is relevant for a source precedence corner case. For example, if a user configures an executive assistant through the people card and the HR system defines a different executive assistant for the same user, the people card prioritizes the user-entered value when the values differ. This order can't be changed.
> * If HR or work position data is written using the profile API user source (`/me/profile` or `/users/{id | userPrincipalName}/profile` on Microsoft Graph beta, including through Graph Explorer), this data doesn't override connector or Entra ID sources. When you read the profile data using the Microsoft Graph API, the data appears in OData as a separate instance in the **workPosition** entity collection.

An administrator can change the order of the sources listed previously; for example, by giving Entra ID a higher priority than a connector or by changing the priority across multiple connector sources. The priority of customer sources behind Organizational data in Microsoft 365 is managed separately in the [Organizational data in Microsoft 365](/viva/organizational-data) platform.

## How source precedence affects people representation

Source precedence mainly affects single-value data. In this context, single-value means that one authoritative value exists for a given property in the resulting people representation. Single-value data includes work position, name data, and account data.

For single-value data, the business logic selects the value for a property from the highest-priority source that has a value. Data from lower-priority sources is ignored when a higher-priority source provides a value for the property.

> [!NOTE]
> A significant difference exists between an empty value or string and a null value, or a property that isn't part of the connector ingestion. For example, an empty string (`""`) is treated as a value and overrides a lower-priority source that has a non-empty string. This behavior enables a connector source to have full control of a given property by setting an empty string when the property isn't intended to have a value.

For multi-value data such as phones, emails, projects, or skills, source precedence only affects the ordering of data from multiple sources. Clients decide how to consume this data. The API payload can contain duplicate data from multiple sources.

## Configure source precedence using Microsoft Graph or PowerShell

An administrator can change source precedence using Microsoft Graph APIs or PowerShell. This guide describes the steps required to add or update profile property settings related to source precedence.

The priority source URLs are arranged according to data precedence, with the first item in the collection having the highest priority.

> [!NOTE]
> * When you configure source precedence using the Microsoft Graph API, use the [profilePropertySetting](/graph/api/resources/profilepropertysetting) entity type that supports tenant-level and per-property settings. Because source precedence is a tenant-level setting, you *must* omit the **name** and **displayName** properties or set them to `null` to differentiate it from property-level settings. Only one configuration without a name is allowed per profile property settings collection.
> * In **prioritizedSourceUrls**, the listed URLs can use either the `/beta` or `/v1.0` endpoint. The profile property priority configuration and the underlying data are shared across both endpoints, so specifying either endpoint has the same effect.
> * You shouldn't delete a **profilePropertySetting** that includes a source precedence configuration. Instead, patch it to a default state that contains only the Entra ID source reference. A [Delete](/graph/api/profilepropertysetting-delete) operation is supported only after the setting was patched to this default state, and it fails unless the **prioritizedSourceUrls** property contains only the Entra ID source reference.

> [!IMPORTANT]
> When you set a new profile source as a priority, the values of properties that users in your organization see on user profiles in Microsoft 365 applications change.
> By default, Entra ID is the prioritized source of profile data in an organization.

## Configure profile source precedence settings using the Microsoft Graph API

You can use the [profilePropertySetting](/graph/api/resources/profilepropertysetting) API to configure profile source precedence in your organization.

### Confirm your current settings

Use the [List](/graph/api/peopleadminsettings-list-profilepropertysettings) operation to return the current settings for profile property settings in your organization.

The following example gets the collection of profile property settings in an organization.

```http
GET https://graph.microsoft.com/v1.0/admin/people/profilePropertySettings
```

If successful, this method returns a `200 OK` response code and a [profilePropertySetting](/graph/api/resources/profilepropertysetting) object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "00000000-0000-0000-0000-000000000001",
      "name": null,
      "prioritizedSourceUrls": [
        "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
      ],
      "displayName": null
    }
  ]
}
```

## Add initial profile source precedence setting

Use the [Create](/graph/api/peopleadminsettings-post-profilepropertysettings) operation to add the profile source precedence setting for your organization. Only one source precedence setting can be created.

The following request defines the precedence order:

1. A connector instance with source ID `contosohr1`.
1. Entra ID with fixed source ID `4ce763dd-9214-4eff-af7c-da491cc3782d`.

### Request

```http
POST https://graph.microsoft.com/v1.0/admin/people/profilePropertySettings
Content-Type: application/json

{
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

If successful, this method returns a `201 Created` response code and a [profilePropertySetting](/graph/api/resources/profilepropertysetting) object in the response body.

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "00000000-0000-0000-0000-000000000001",
  "name": null,
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ],
  "displayName": null
}
```

## Update profile source precedence setting

Use the [Update](/graph/api/profilepropertysetting-update) operation to modify the profile source precedence setting in your organization.

The following example adds another connector source ID, `contosohr2`, compared to the previous create (POST) operation example.

### Request

```http
PATCH https://graph.microsoft.com/v1.0/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001
Content-Type: application/json

{
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr2')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

If successful, this method returns a `200 OK` response code and a [profilePropertySetting](/graph/api/resources/profilepropertysetting) object in the response body.

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "00000000-0000-0000-0000-000000000001",
  "name": null,
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr2')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ],
  "displayName": null
}
```

## Remove profile source precedence setting

Use the [Delete](/graph/api/profilepropertysetting-delete) operation to remove the profile source precedence setting in your organization after you patch it back to the default state that contains only the Entra ID source reference.

### Request

```http
DELETE https://graph.microsoft.com/v1.0/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001
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
