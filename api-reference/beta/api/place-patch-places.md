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

## Operation Types

- **Create**: Places without an `id` field are treated as create operations
- **Update**: Places with an `id` field are treated as update operations

## Supported Scenarios

The following scenarios are supported:
- Bulk create: Create multiple new places in a single request
- Bulk update: Update multiple existing places in a single request
- Mixed operations: Combine create and update operations in one request

All requests require the `OData-Version: 4.01` header.

## Concurrency

- Maximum allowed concurrent bulk operations: 3
- Operations exceeding this limit are rejected with a `429 Too Many Requests` response and the following error message: "There are already {activeJobCount} active bulk upsert operations and the concurrency limit has been reached. Wait for at least one existing operation to complete before starting a new one."

## Data Retention

- Completed operation results are retained for 15 days
- Operations can be queried using the returned operation ID during the retention period

## Rate Limiting

- API-level throttling will be enforced at 1 call per second
- This limit applies per tenant
- Exceeding the rate limit results in HTTP 429 (Too Many Requests) responses

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

## Examples

### Example 1: Create a single building

#### Request

The following example shows a request to create a single building.

<!-- {
  "blockType": "request",
  "name": "create_single_building"
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
            "displayName": "Building 1"
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
Location: https://graph.microsoft.com/beta/places/getOperation(id='882a6bfd-45d1-4d4b-a382-6db80a249b61')
```

### Example 2: Create a single floor with existing parent building

#### Request

The following example shows a request to create a floor under an existing building.

<!-- {
  "blockType": "request",
  "name": "create_floor_with_parentid"
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
            "@odata.type": "microsoft.graph.floor",
            "displayName": "Floor 1",
            "parentId": "871047d0-5702-4d80-9b96-0fc2cbaf1a71"
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
Location: https://graph.microsoft.com/beta/places/getOperation(id='982b7cfd-56e2-5e5c-b493-7ec91a350c72')
```

### Example 3: Create multiple independent places of different types

#### Request

The following example shows a request to create multiple independent places of different types.

<!-- {
  "blockType": "request",
  "name": "create_independent_places"
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
            "displayName": "Building 1"
        },
        {
            "@odata.type": "microsoft.graph.floor",
            "displayName": "Floor 2"
        },
        {
            "@odata.type": "microsoft.graph.section",
            "displayName": "Section A"
        },
        {
            "@odata.type": "microsoft.graph.room",
            "displayName": "Conference Room 101"
        },
        {
            "@odata.type": "microsoft.graph.workspace",
            "displayName": "Workspace 201"
        },
        {
            "@odata.type": "microsoft.graph.desk",
            "displayName": "Desk 301"
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
Location: https://graph.microsoft.com/beta/places/getOperation(id='c15e0fgg-89h5-8h8f-e7c6-0hf14d683f05')
```

### Example 4: Mixed create and update operations

#### Request

The following example shows a request that combines create and update operations:

1. Update an existing building to set the display name to "Demo Building A" and enable Wi-Fi
2. Create a new floor "Demo Floor 1" as a child of the update   d building
3. Create a new building "Demo Building B" with a child floor "Demo Floor 1", which contains a new section "Demo Section A" with a new room "Demo Room 1" and an existing desk
4. Create a new workspace with reservable mode under an existing parent
5. Update an existing section to add a tag "test1"

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
        "test1"
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
Location: https://graph.microsoft.com/beta/places/getOperation(id='882a6bfd-45d1-4d4b-a382-6db80a249b61')
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
