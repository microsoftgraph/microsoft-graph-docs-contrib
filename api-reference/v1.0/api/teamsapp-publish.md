---
title: "Create teamsApp"
description: "Publish an application to Teams app catalog. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create teamsApp

Namespace: microsoft.graph

Publish an [app](../resources/teamsapp.md) to the Microsoft Teams apps catalog.Specifically, this API publishes the app to your organization's catalog (the tenant app catalog).
The created resource will have the **distributionMethod** property value set to `organization`.

The  _**appCatalogs/teamsApps?requiresReview:boolean**_ API consumes a zip file as the request body and uploads a new Teams App to the Teams App catalog. The optional `requiresReview`  is used to trigger the app review process. If the `requiresReview` query parameter is set to true, then the new app version is uploaded in a 'submitted' state. A user must explicitly call out if the app they are submitting requires review to trigger the review process. Whether a user can submit an app without triggering the review process is determined by a role check.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission Type                        | Permissions (from least to most privileged)|
|:----------------------------------     |:-------------|
| Delegated (work or school account)     | AppCatalog.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (work or school account) | AppCatalog.Submit|
| Delegated (personal Microsoft account) | Not supported|
| Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /appCatalogs/teamsApps
```

Use the following syntax to add an app that requires a review:

```http
POST /appCatalogs/teamsApps?requiresReview:{Boolean}
```

> [!NOTE]
> This API consumes a Teams app package zip file as the request body and uploads a new Teams app to the organization's app catalog.

## Query parameters

|Property|Type|Description|
|----|----|----|
|requiresReview| Boolean | This optional query parameter triggers the app review process. Users with admin privileges can submit apps without triggering a review. If users want to request a review before publishing, they must set  `requiresReview` to `true` . A user *with* admin privileges can opt not to set `requiresReview` or set the value to `false`  and the app will be considered approved and will publish instantly.|

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/zip. Required. |

## Request body

In the request body, include a Teams zip manifest payload. For details, see [Create an app package](/microsoftteams/platform/concepts/apps/apps-package).  
&#119821;&#119822;&#119827;&#119812;: Each app in the app catalog must have a unique manifest `id`.

## Response

If successful, this method returns a `200 OK` response code and a [teamsCatalogApp](../resources/teamsapp.md) object.

## Examples

### Example 1: Publish an app to an organization's app catalog 

#### Request

<!-- {
  "blockType": "request",
  "name": "create_teamsapp"
}-->

```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```

<!-- markdownlint-disable MD024 -->

#### Response

<!-- {
  "blockType": "response",
  "name": "create_teamsapp",
  "truncated": true
} -->

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

<!-- {
  "blockType": "request",
  "name": "create_teamsapp"
}-->

```http
POST https://graph.microsoft.com/beta/appCatalogs/teamsApps?requiresReview=true
Content-type: application/zip
Content-length: 244
```

#### Response

<!-- {
  "blockType": "response",
  "name": "create_teamsapp",
  "truncated": true
} -->

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
