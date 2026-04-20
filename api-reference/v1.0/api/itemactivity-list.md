---
author: daspek
title: List activities
description: "List the recent activities that took place on a drive, list, item, or within an item hierarchy."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: onedrive
ms.date: 03/31/2026
---
# List activities

Namespace: microsoft.graph

List the recent [activities](../resources/itemactivity.md) that took place on a [drive](../resources/drive.md), [list](../resources/list.md), item, or within an item hierarchy.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "itemactivity_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/itemactivity-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{drive-id}/activities
GET /drives/{drive-id}/items/{item-id}/activities
GET /sites/{site-id}/lists/{list-id}/activities
GET /sites/{site-id}/lists/{list-id}/items/{item-id}/activities
```

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [itemActivity](../resources/itemactivity.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "list-itemactivity-v1" } -->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/drives/b!kjtJnMGCeEeNkZsY18PtOiNjCV0Z9s9Fqyly8jKvPEB2kal9T5pOT5y7TXClirlE/items/01BYE5RZZ3CIHERNM6RZELODVGWI5T4B76/activities
```

### Response

The following example shows the response.

<!-- { "blockType": "response", "@type": "Collection(microsoft.graph.itemActivity)", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "EJalEvjV1EgIYFQAAAAAAA==",
            "access": {},
            "activityDateTime": "2017-07-29T18:34:40Z",
            "actor": {
                "user": {
                    "displayName": "Xavier Wilke"
                }
            }
        },
        {
            "id": "cInT6/fV1EgFYFQAAAAAAA==",
            "access": {},
            "activityDateTime": "2017-07-29T16:23:35Z",
            "actor": {
                "user": {
                    "displayName": "Judith Clemons"
                }
            }
        },
        {
            "id": "EBJa0vPV1EjFX1QAAAAAAA==",
            "access": {},
            "activityDateTime": "2017-07-28T20:14:14Z",
            "actor": {
                "user": {
                    "displayName": "Misty Suarez"
                }
            }
        }
    ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Site/List sites",
  "suppressions": [
  ]
}
-->
