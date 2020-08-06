---
title: "Publish an application to Teams app catalog"
description: "Publish an application to Teams app catalog. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Publish apps to your organization's app catalog

Namespace: microsoft.graph

Publish an [app](../resources/teamsapp.md) to the Microsoft Teams apps catalog.
Specifically, this API publishes the app to your organization's catalog (the tenant app catalog). 
The created resource will have the **distributionMethod** property value set to `organization`.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)|
|:----------------------------------     |:-------------|
| Delegated (work or school account)     | AppCatalog.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (work or school account) | App.Catalog.Submit </br>Allows an app to submit apps to the organization's app catalog as well as cancel past submissions that have not been published.</br> &#119821;&#119822;&#119827;&#119812;: non-admin users can submit apps for review by including the  `requiresReview=true` query parameter during submissions. |
| Delegated (personal Microsoft account) | Not supported|
| Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /appCatalogs/teamsApps
```

```http
POST /appCatalogs/teamsApps?requiresReview:{boolean}
```

> [!NOTE]
> This API consumes a Teams app package zip file as the request body and uploads a new Teams app to the organization's app catalog.

## Optional query parameter

|Property|Type|Description|
|----|----|----|
|requiresReview| boolean | This optional query parameter triggers the app review process.  Whether a user can submit an app without triggering the review process is determined by role. If a user with admin privileges does not set `requiresReview` or it is set to `false`, the app will be considered approved and will instantly publish.|

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/zip. Required. |

## Request body

In the request body, include a Teams zip manifest payload. For details, see [Create an app package](/microsoftteams/platform/concepts/apps/apps-package).
You can't create an app for an organization that has the same manifest ID as another app in that organization.

## Response

If successful, this method returns a `200 OK` response code and a [teamsCatalogApp](../resources/teamsapp.md) object.

## Examples

### Example 1: Publish an app to an organization's app catalog 

#### Request

```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```

<!-- markdownlint-disable MD024 -->

#### Response

```http

HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "externalId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "organization"
}
```

### Example 2: Upload a new application for review to an organization's app catalog

#### Request

```http
POST https://graph.microsoft.com/beta/appCatalogs/teamsApps?requiresReview=true
Content-type: application/zip
Content-length: 244
```

#### Response

```http
HTTP/1.1 201 Created
Location: https://graph.microsoft.com/beta/appCatalogs/teamsApps/e3e29acb-8c79-412b-b746-e6c39ff4cd22

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#appCatalogs/teamsApps/$entity",
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "externalId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "organization"
}
```
