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

Profile source configuration enhances the end-user experience, making the source of their profile data clear and understandable.

This administrator guide explains how to configure profile source settings in an organization using Microsoft Graph APIs. It details the steps required to add, update, and delete a profile source in an organization, ensuring that profile data is accurately attributed and surfaced in various Microsoft 365 experiences.

> [!IMPORTANT]
> By default, Microsoft Entra ID is the source of profile data in an organization.
> An organization administrator sets the **sourceId** property that is a readable and unique profile source identifier. The **sourceId** property isn't updateable and can be used as an [alternate key](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/alternate-key.md) when you query for a profile source. A profile source is identifiable via a system-generated key named **id**.

Admins can customize a profile source display name for multiple locales through the **localizations** property.

## Configure profile source settings using the Microsoft Graph API

You can use the [profileSource](/graph/api/resources/profilesource?view=graph-rest-beta&preserve-view=true) API to configure a profile source in your organization.

### Confirm your current settings

Use the [List](/graph/api/peopleadminsettings-list-profilesources?view=graph-rest-beta&preserve-view=true) operation to return the current settings for profile sources in your organization.

The following example gets the collection of profile sources in an organization.

``` http
GET https://graph.microsoft.com/beta/admin/people/profileSources
```

If successful, the response returns a `200 OK` response code and a [profileSource](/graph/api/resources/profilesource?view=graph-rest-beta&preserve-view=true) object in the response body.

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
      "webUrl": "https://bamboohr.contoso.com/login",
      "localizations": [
        {
          "displayName" : "HR-Platform",
          "webUrl" : "http://bamboohr.contoso.com/en-us/login",
          "languageTag" : "en-us"
        },
        {
          "displayName" : "HR-Plattform",
          "webUrl" : "http://bamboohr.contoso.com/de/login",
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

### Add a profile source

Use the [Create](/graph/api/peopleadminsettings-post-profilesources?view=graph-rest-beta&preserve-view=true) operation to add a profile source in your organization.

#### Request

``` http
POST https://graph.microsoft.com/beta/admin/people/profileSources
Content-Type: application/json

{
  "sourceId": "bamboohr1",
  "displayName": "HR Platform",
  "kind": "BambooHR",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login",
      "languageTag" : "de"
    }
  ]
}
```

If successful, this method returns a `201 Created` response code and a [profileSource](/graph/api/resources/profilesource?view=graph-rest-beta&preserve-view=true) object in the response body.

#### Response

``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id" : "27f1af7b-b166-4f5b-b994-ae135a581547",
  "sourceId": "bamboohr1",
  "kind": "BambooHR",
  "displayName": "HR Platform",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login",
      "languageTag" : "de"
    }
  ]
}
```

### Update a profile source

Use the [Update](/graph/api/profilesource-update?view=graph-rest-beta&preserve-view=true) operation to modify a profile source in your organization.

#### Request

``` http
PATCH https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='bamboohr1')
Content-Type: application/json

{
  "displayName": "BambooHR Updated",
  "localizations": [
    {
      "displayName" : "HR-Platform",
      "webUrl" : "http://bamboohr.contoso.com/en-us/login",
      "languageTag" : "en-us"
    },
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login",
      "languageTag" : "de"
    }
  ]
}
```

If successful, this method returns a `200 OK` response code and a [profileSource](/graph/api/resources/profilesource?view=graph-rest-beta&preserve-view=true) object in the response body.

#### Response

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id" : "27f1af7b-b166-4f5b-b994-ae135a581547",
  "sourceId": "bamboohr1",
  "kind": "BambooHR",
  "displayName": "BambooHR Updated",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName" : "HR-Platform",
      "webUrl" : "http://bamboohr.contoso.com/en-us/login",
      "languageTag" : "en-us"
    },
    {
      "displayName" : "HR-Plattform",
      "webUrl" : "http://bamboohr.contoso.com/de/login",
      "languageTag" : "de"
    }
  ]
}
```

### Remove a profile source

Use the [Delete](/graph/api/profilesource-delete?view=graph-rest-beta&preserve-view=true) operation to remove a profile source in your organization.

#### Request

``` http
DELETE https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='bamboohr1')
```

If successful, this method returns a `204 No Content` response code.

#### Response

``` http
HTTP/1.1 204 No Content
```

## Related content
[Manage profile source precedence settings for an organization](/graph/profilepriority-configure-profilepropertysetting)
