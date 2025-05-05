---
title: "Manage profile source settings for an organization using the Microsoft Graph API"
description: "Learn how to use Microsoft Graph APIs to add, update, and delete settings that manage profile sources in an organization."
author: "rwaithera"
ms.localizationpriority: high
ms.subservice: "people"
ms.custom: scenarios:getting-started
ms.date: 04/30/2025
---

# Manage profile source settings for an organization using the Microsoft Graph API

Profile source configuration improves end-user experience by presenting to users the source of their profile data in an understandable way.

This administrator guide discusses configuring profile source settings in an organization using Microsoft Graph APIs. It covers the necessary steps to add, update, and delete a profile source in an organization, ensuring that profile data is accurately attributed and surfaced in various Microsoft 365 experiences. 

> [!IMPORTANT]
> By default, Microsoft Entra is the source of profile data in an organization.
An organization administrator sets the property `sourceId`, which is a readable and unique profile source identifier. `sourceId` can be used as an [alternate-key](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/alternate-key.md) when querying for a profile source. This property isn't updateable. Additionally, a profile source is identifieable via a system-generated the key named `id`.

Admins can customize a profile source display name to multiple locales by configuring the `localizations` property.

## Configure profile source settings using the Microsoft Graph API

You can use the [profileSource](/graph/api/resources/profileSource?view=graph-rest-beta&preserve-view=true) API to configure a profile source in your organization.

### Confirm your current settings

Use the [list](/graph/api/peopleadminsettings-list-profilesources?view=graph-rest-beta&preserve-view=true) operation to return the current settings for profile source in your organization.

The following example gets the collection of profile sources in an organization.

``` http
GET https://graph.microsoft.com/beta/admin/people/profileSources
```

If successful, the response returns a `200 OK` response code and a [profileSource](/graph/api/resources/profileSource?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "27f1af7b-b166-4f5b-b994-ae135a581547",
      "sourceId": "bamboohr1",
      "kind": "BambooHR",
      "displayName": "HR Platform",
      "webUrl": "https://bamboohr.contoso.com/login/",
      "localizations": [
        {
          "displayName" : "HR-Platform",
          "webUrl" : "http://bamboohr.contoso.com/en-us/login/",
          "languageTag" : "en-us"
        },
        {
          "displayName" : "HR-Plattform",
          "webUrl" : "http://bamboohr.contoso.com/de/login/",
          "languageTag" : "de"
        }
      ]
    },
    {
      "id": "520c18f8-0284-4d79-9b14-8a2d74461370",
      "sourceId": "4ce763dd-9214-4eff-af7c-da491cc3782d",
      "kind": "MSEntra",
      "displayName": "Contoso Microsoft Entra",
      "webUrl": "https://login.microsoftonline.com",
      "localizations": [
        {
          "displayName" : "Contoso Microsoft Entra",
          "webUrl" : "https://login.microsoftonline.com",
          "languageTag" : "en-us"
        }
      ]
    }
  ]
}
```

## Add a profile source

Use the [create](/graph/api/peopleadminsettings-post-profilesources?view=graph-rest-beta&preserve-view=true) operation to add a profile source in your organization.

#### Request

``` http
POST https://graph.microsoft.com/beta/admin/people/profileSources
Content-Type: application/json

{
  "sourceId": "bamboohr1",
  "displayName": "HR Platform",
  "kind": "BambooHR",
  "webUrl": "https://bamboohr.contoso.com/login/",
  "localizations": [
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login/",
      "languageTag" : "de"
    }
  ]
}
```

If successful, the response returns a `201 OK` response code and a [profileSource](/graph/api/resources/profileSource?view=graph-rest-beta&preserve-view=true)  object in the response body.

#### Response

``` http
HTTP/1.1 201 OK
Content-type: application/json

{
  "id" : "27f1af7b-b166-4f5b-b994-ae135a581547",
  "sourceId": "bamboohr1",
  "kind": "BambooHR",
  "displayName": "HR Platform",
  "webUrl": "https://bamboohr.contoso.com/login/",
  "localizations": [
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login/",
      "languageTag" : "de"
    }
  ]
}
```

## Update a profile source

Use the [update](/graph/api/profilesource-update?view=graph-rest-beta&preserve-view=true) operation to modify a profile source in your organization.

#### Request

``` http
PATCH https://graph.microsoft.com/beta/admin/people/profileSources/27f1af7b-b166-4f5b-b994-ae135a581547
Content-Type: application/json

{
  "displayName": "BambooHR Updated",
  "localizations": [
    {
      "displayName" : "HR-Platform",
      "webUrl" : "http://bamboohr.contoso.com/en-us/login/",
      "languageTag" : "en-us"
    },
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login/",
      "languageTag" : "de"
    }
  ]
}
```

If successful, the response returns a `200 OK` response code and a [profileSource](/graph/api/resources/profileSource?view=graph-rest-beta&preserve-view=true)  object in the response body.

#### Response

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id" : "27f1af7b-b166-4f5b-b994-ae135a581547",
  "sourceId": "bamboohr1",
  "kind": "BambooHR",
  "displayName": "BambooHR Updated",
  "webUrl": "https://bamboohr.contoso.com/login/",
  "localizations": [
    {
      "displayName" : "HR-Platform",
      "webUrl" : "http://bamboohr.contoso.com/en-us/login/",
      "languageTag" : "en-us"
    },
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login/",
      "languageTag" : "de"
    }
  ]
}
```

Alternatively, you can modify a profile source via its alternate key, `sourceId`.


``` http
PATCH https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='bamboohr1')
Content-Type: application/json

{
  "displayName": "BambooHR Updated",
  "localizations": [
    {
      "displayName" : "HR-Platform",
      "webUrl" : "http://bamboohr.contoso.com/en-us/login/",
      "languageTag" : "en-us"
    },
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login/",
      "languageTag" : "de"
    }
  ]
}
```


## Remove a profile source

Use the [delete](/graph/api/peopleadminsettings-delete-profilesources?view=graph-rest-beta&preserve-view=true) operation to remove a profile source in your organization.

#### Request

``` http
DELETE https://graph.microsoft.com/beta/admin/people/profileSources/27f1af7b-b166-4f5b-b994-ae135a581547
```

If successful, the response returns a `204 OK` response code.

#### Response

``` http
HTTP/1.1 204 No Content
```


Alternatively, you can remove a profile source via its alternate key, `sourceId`.

``` http
DELETE https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='bamboohr1')
```

## Configure profile source settings using the Microsoft Graph PowerShell SDK

You can use the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) to configure profile source settings in your organization.

### Prerequisites

- **PowerShell module** - Install [module version 2.3.0 or higher](https://www.powershellgallery.com/packages/Microsoft.Graph).
- **.NET Framework** - Install [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework) or a higher version.

> [!NOTE]
> The PowerShell commands for profile source settings are only available in beta. Switch to the beta experience before you run the following commands.
>
> ```powershell
>    Install-Module -Name Microsoft.Graph.Beta
>    Update-Module Microsoft.Graph.Beta  
> ```

### Confirm your current settings

To get a profile source configuration for an organization, use the following command.

```powershell
   Get-MgAdminPeopleProfileSource
```

To get a specific profile source configuration in an organization, use the following command.

```powershell
   Get-MgAdminPeopleProfileSource -SourceId $sourceId
```

> [!NOTE]
> The get commands require the `PeopleSettings.Read.All` permission. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "PeopleSettings.Read.All"
> ```

### Add a profile source in your organization

You can use the Microsoft Graph PowerShell module to make an external people data source available in your organization.

> [!NOTE]
> The new command requires the `PeopleSettings.ReadWrite.All` permission. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
> ```

Use the following command.

```powershell
$params = @{
  sourceId = "bamboohr1"
  displayName = "HR platform"
  webUrl = "http://bamboohr.contoso.com/login/"
  localizations = @(
    @{
      displayName = "HR-Plattform"
      webUrl = "http://bamboohr.contoso.com/de/login/"
      languageTag = "de"
    }
  )
}

New-MgAdminPeopleProfileSource -BodyParameter $params
```

### Update a profile source in your organization

You can use the Microsoft Graph PowerShell module to update a profile source in your organization.

> [!NOTE]
> The update command requires the `PeopleSettings.ReadWrite.All` permission. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
> ```

Use the following command, where you replace `$sourceId` with the ID of the property to be updated.

```powershell
$params = @{
  sourceId = "bamboohr1"
  displayName = "Updated HR platform"
  webUrl = "http://bamboohr.contoso.com/login/"
	localizations = @(
    @{
      displayName = "Aktualisierte HR-Plattform"
      webUrl = "http://bamboohr.contoso.com/de/login/"
      languageTag = "de"
    }
  )
}


Update-MgAdminPeopleProfileSource -SourceId $sourceId -BodyParameter $params
```

### Remove a profile source in your organization

You can use the Microsoft Graph PowerShell module to remove a profile source from your organization.

> [!NOTE]
> The remove command requires the `PeopleSettings.ReadWrite.All` permission. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
> ```

Use the following command, where you replace `$sourceId` with the ID of the property to be removed.

```powershell
 Remove-MgAdminPeopleProfileSource -SourceId $sourceId
```