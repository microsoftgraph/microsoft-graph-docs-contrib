---
title: "Working with the Bulk Upsert Places in Microsoft Graph"
description: "Learn how to use the bulk upsert API to create and update multiple places efficiently in Microsoft Graph."
author: "Dongjing-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
---

# Working with the Bulk Upsert Places in Microsoft Graph

The bulk upsert API allows you to efficiently create and update multiple [places](/graph/api/resources/place?view=graph-rest-beta) in a single asynchronous operation.

## Supported scenarios

- Create multiple independent places.
- Create places with hierarchy, including new child places under an existing place.
- Update multiple independent places.
- Update the hierarchy of places, including the move an existing place under a new place.

## Understand request payload

- Create vs. Update: Places without an **id** property are created and places with an **id** property are updated by ID.
- Place hierarchy: Use the **children@delta** property to create or update children places within a parent place. The **parentId** property is automatically set for children places.
- Assigned mode isn't supported in bulk upsert yet.
- It isn't supported to update an existing child place under an existing parent place using **children@delta** property. They should be updated separately.

## Job-level Concurrency

- Only three concurrent bulk upsert operations are allowed at the tenant level.
- If there are already three operations created or in progress, another PATCH API call is rejected with a `429 Too Many Requests` status code

## Related content

- [Place resource type](/graph/api/resources/place?view=graph-rest-beta)
- [Bulk upsert API reference](/graph/api/place-patch-places?view=graph-rest-beta)
- [Get operation API reference](/graph/api/place-getoperation?view=graph-rest-beta)
- [List operations API reference](/graph/api/place-listoperations?view=graph-rest-beta)

