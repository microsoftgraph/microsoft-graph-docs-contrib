---
title: "List teamsApp"
description: "List Teams apps published in the tenant app catalog"
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List teamsApp

Namespace: microsoft.graph

List [apps](../resources/teamsapp.md) published in the Microsoft Teams app catalog.This includes apps from the Microsoft Teams store, as well as apps from your organization's app catalog (the tenant app catalog). To get apps from your organization's app catalog only, specify `Organization` as the **distributionMethod** in the [teamsCatalogApp](../resources/teamsapp.md) resource.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference).

> **Note:** Only global administrators can call this API.

| Permission Type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:------------------------------------|
| Delegated (work or school account)     | AppCatalog.Read.All, AppCatalog.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported                       |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /appCatalogs/teamsApps
```

## Optional query parameters

This method supports the `$filter`, `$select`, and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header        | Value                     |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

None.

> **Note:** You can filter on any of the fields of the [teamsCatalogApp](../resources/teamsapp.md) object to shorten the list of results. You can use any of the following filter operations: Equal, not-equal, and, or, and not.

## Response

If successful, this method returns a `200 OK` response code and a list of [teamsCatalogApp](../resources/teamsapp.md) objects in the response body.

## Examples

### Example 1: List all applications

The following example lists all applications that are specific to your tenant.

#### Request

<!-- {
  "blockType": "request",
  "name": "list_teamsapp"
}-->

```http
GET https://graph.microsoft.com/v1.0/appCatalogs/teamsApp?$filter=distributionMethod eq 'organization'
```

<!-- markdownlint-disable MD024 -->

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true,
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "externalId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod": "Organization"
    }
  ]
}
```

### Example 2: List applications with a given ID

The following example lists applications with a given ID.

#### Request

<!-- {
  "blockType": "request",
  "name": "list_teamsapp"
}-->

```http
GET https://graph.microsoft.com/v1.0/appCatalogs/teamsApps?$filter=id%20eq%20'b1c5353a-7aca-41b3-830f-27d5218fe0e5'
```

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true,
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "externalId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod": "Organization"
    }
  ]
}
```

### Example 3: List applications and their progress in the review approval pipeline

#### Request

<!-- {
  "blockType": "request",
  "name": "list_teamsapp"
}-->

```http
GET https://graph.microsoft.com/v1.0/appCatalogs/teamsApps?$expand=appDefinitions
```

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#appCatalogs/teamsApps(appDefinitions())",
    "@odata.count": 2,
    "value": [
        {
            "id": "2fa70d49-4f85-47e0-b873-b1afddcee9e0",
            "externalId": "55cbeb0e-e7be-4ab3-b9bf-ef919406a846",
            "displayName": "Q&A Tracker",
            "distributionMethod": "organization",
            "appDefinitions": [
                {
                    "@odata.etag": "W/"08D1694BD49A0F11",
                    "id": "MmZhNzBkNDktNGY4NS00N2UwLWI4NzMtYjFhZmRkY2VlOWUwIyMxLjAuMTA=",
                    "teamsAppId": "2fa70d49-4f85-47e0-b873-b1afddcee9e0",
                    "displayName": "Q&A Tracker",
                    "version": "1.0.10",
                    "azureADAppId": "a651cc7d-ec54-4fb2-9d0e-2c58dc830b0b",
                    "requiredResourceSpecificApplicationPermissions":[
                        "ChannelMessage.Read.Group",
                        "Channel.Create.Group",
                        "Tab.ReadWrite.Group"
                    ],
                    "publishingState": "published",
                },
                {
                    "@odata.etag": "W/"1234235436"
                    "id": "MGQ4MjBlY2QtZGVmMi00Mjk3LWFkYWQtNzgwNTZjZGU3Yzc4IyMxLjAuMA==",
                    "teamsAppId": "2fa70d49-4f85-47e0-b873-b1afddcee9e0",
                    "displayName": "Q&A Tracker",
                    "version": "1.0.11",
                    "azureADAppId": "a651cc7d-ec54-4fb2-9d0e-2c58dc830b0b",
                    "requiredResourceSpecificApplicationPermissions":[
                        "ChannelMessage.Read.Group",
                        "Channel.Create.Group",
                        "Tab.ReadWrite.Group",
                        "Member.Read.Group"
                    ],
                    "publishingState": "submitted",
                    "lastModifiedDateTime": "2020-02-10 22:48:33.841",
                }
            ]
        }
```
