---
title: "Working with the Bulk Upsert Places in Microsoft Graph"
description: "Learn how to use the bulk upsert API to create and update multiple places efficiently in Microsoft Graph."
author: "Dongjing-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
---

# Working with the Bulk Upsert Places in Microsoft Graph

The bulk upsert API allows you to efficiently create and update multiple [places](/graph/api/resources/place?view=graph-rest-beta) in a single asynchronous operation. This article provides guidance on using this API effectively.

## Prerequisites

- All requests require the `OData-Version: 4.01` header.
- Assigned mode isn't supported in bulk upsert yet.

## Supported scenarios

The bulk upsert API supports the following operations:

- **Create multiple independent places** - Add multiple buildings, floors, rooms, desks, or workspaces in one request.
- **Create places with hierarchy** - Create new child places under an existing place using the `children@delta` property.
- **Update multiple independent places** - Modify properties of multiple existing places simultaneously.
- **Update place hierarchy** - Move existing places to different parents, including newly created parents.
- **Combinations of operations** - Mix create and update operations in a single request.

## Understanding the request payload

When constructing your bulk upsert request, keep these concepts in mind:

### Create vs. update operations

- **Create**: Places without an `id` property are created as new entities.
- **Update**: Places with an `id` property are updated based on that identifier.

### Place hierarchy

Use the `children@delta` property to create or update child places within a parent place. The `parentId` property is automatically set for child places.

> [!NOTE]
> It isn't supported to update an existing child place under an existing parent place using the `children@delta` property. Update them separately as independent places.

## Data retention

Operation results are retained for 15 days from creation. After this period, the operation details are no longer available through the [Get operation](/graph/api/place-getoperation?view=graph-rest-beta) API.

## Concurrency limits

### Job-level concurrency

Only three concurrent bulk upsert operations are allowed at the tenant level. If there are already three operations created or in progress, another PATCH API call is rejected with a `429 Too Many Requests` status code.

### API-level throttling

The bulk upsert API has a throttling limit of three calls per second per tenant.

## Example scenarios

### Scenario 1: Create a building with floors

```http
PATCH https://graph.microsoft.com/beta/places
Content-Type: application/json
OData-Version: 4.01

{
  "@context": "#$delta",
  "value": [
    {
      "@odata.type": "microsoft.graph.building",
      "displayName": "Building 1",
      "children@delta": [
        {
          "@odata.type": "microsoft.graph.floor",
          "displayName": "Floor 1"
        },
        {
          "@odata.type": "microsoft.graph.floor",
          "displayName": "Floor 2"
        }
      ]
    }
  ]
}
```

### Scenario 2: Update existing places

```http
PATCH https://graph.microsoft.com/beta/places
Content-Type: application/json
OData-Version: 4.01

{
  "@context": "#$delta",
  "value": [
    {
      "@odata.type": "microsoft.graph.room",
      "id": "room-id-1",
      "displayName": "Updated Room Name",
      "capacity": 10
    },
    {
      "@odata.type": "microsoft.graph.desk",
      "id": "desk-id-1",
      "tags": ["hot-desk", "standing"]
    }
  ]
}
```

### Scenario 3: Move a place to a new parent

```http
PATCH https://graph.microsoft.com/beta/places
Content-Type: application/json
OData-Version: 4.01

{
  "@context": "#$delta",
  "value": [
    {
      "@odata.type": "microsoft.graph.room",
      "id": "room-id-1",
      "parentId": "new-floor-id"
    }
  ]
}
```

## Monitoring operation status

After initiating a bulk upsert operation, monitor its progress:

1. The API returns a `202 Accepted` response with a `Location` header containing the operation URL.
2. Use the [Get operation](/graph/api/place-getoperation?view=graph-rest-beta) API to check the status.
3. The operation status can be: `notStarted`, `running`, `succeeded`, or `failed`.

## Related content

- [place resource type](/graph/api/resources/place?view=graph-rest-beta)
- [Bulk upsert API reference](/graph/api/place-patch-places?view=graph-rest-beta)
- [Get operation API reference](/graph/api/place-getoperation?view=graph-rest-beta)
- [List operations API reference](/graph/api/place-listoperations?view=graph-rest-beta)
