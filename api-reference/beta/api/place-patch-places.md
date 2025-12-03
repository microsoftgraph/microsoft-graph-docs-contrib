---
title: "Bulk upsert"
description: "Bulk upsert places in async mode."
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Bulk upsert

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Bulk upsert places in async mode.

> **Note:**
> - All requests require the `OData-Version: 4.01` header.
> - The bulk upsert API doesn't support creating or updating desks with assigned place mode.

## Supported scenarios

This API supports the following operations:

- Create multiple new places in a single request.
- Update multiple existing places in a single request.
- Create or update places with parent-child relationships using the `children@delta` property. The `parentId` property is automatically assigned for child places created within a parent structure.
- Move existing places to different parents, including newly created parents. The `parentId` property is automatically updated.

## Understand request payload

The request payload structure supports two key concepts:

1. **Create vs. Update operations**: Places without an `id` property are treated as create operations, while places with an `id` property are treated as update operations.
2. **Place hierarchy**: Use the `children@delta` property to create or update child places within a parent place. The `parentId` property is automatically assigned or updated for child places.

## Data Retention

- Operation results are retained for 15 days from creation.

## Job-level Concurrency

- Only 3 concurrent bulk upsert operations are allowed at the tenant level.
- If there are already 3 operations created or in progress, another PATCH API call is rejected with a `429 Too Many Requests` status code

## API Level Throttling

- This API has a throttling limit of 3 calls per second. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-post-places-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-patch-places-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|OData-Version|4.01. Required.|

## Request body

In the request body, supply a JSON representation of the [place](../resources/place.md) delta set.

The same properties can be specified as when you [create](../api/place-post.md) or [update](../api/place-update.md) a **place** object.

## Response

If successful, this method returns a `202 Accepted` response code and an operation ID in the `Location` response header that you can use to [get](../api/place-getoperation.md) the operation.

## Example: mixed create and update operations

#### Request

The following example combines all supported scenarios:

1. Update an existing building to set the display name to "Demo Building A" and enable Wi-Fi and create a new floor "Demo Floor 1" as a child of the updated building
2. Create a new building "Demo Building B" with a child floor "Demo Floor 1", which contains a new section "Demo Section A" with an existing desk and a new room "Demo Room 1"
3. Create a new workspace with reservable mode under an existing parent
4. Update an existing section to add a tag "CVP"

<!-- {
  "blockType": "request",
  "name": "mixed_create_update"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/places
Content-Type: application/json
OData-Version: 4.01

{
  "@context": "#$delta",
  "value": [
    {
      "@odata.type": "microsoft.graph.building",
      "id": "25e5905a-7fee-4f36-ba31-29e85c14bf18",
      "displayName": "Demo Building A",
      "hasWifi": true,
      "children@delta": [
        {
          "@odata.type": "microsoft.graph.floor",
          "displayName": "Demo Floor 1"
        }
      ]
    },
    {
      "@odata.type": "microsoft.graph.building",
      "displayName": "Demo Building B",
      "children@delta": [
        {
          "@odata.type": "microsoft.graph.floor",
          "displayName": "Demo Floor 1",
          "children@delta": [
            {
              "@odata.type": "microsoft.graph.section",
              "displayName": "Demo Section A",
              "children@delta": [
                {
                  "@odata.type": "#microsoft.graph.desk",
                  "id": "211ffb37-e880-475a-b73a-43f484609536"
                },
                {
                  "@odata.type": "#microsoft.graph.room",
                  "displayName": "Demo Room 1"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "@odata.type": "microsoft.graph.workspace",
      "parentId": "2cb2701d-0896-4c69-91bb-582d82d7c68c",
      "displayName": "Demo Workspace 1",
      "mode": {
        "@odata.type": "#microsoft.graph.reservablePlaceMode"
      }
    },
    {
      "@odata.type": "#microsoft.graph.section",
      "id": "2cb2701d-0896-4c69-91bb-582d82d7c68c",
      "tags": [
        "CVP"
      ]
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/places/getOperation(id='0f5d3cc5-d1bd-4cba-9b0e-e9ad68527ab5')
```
<!--
{
  "type": "#page.annotation",
  "description": "Bulk upsert places in async mode",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
