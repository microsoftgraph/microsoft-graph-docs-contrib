---
title: "Working with the Places upsert places API in Microsoft Graph"
description: "Learn how to use the upsert places API to create and update multiple places efficiently in Microsoft Graph."
author: "Dongjing-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
ms.topic: article
---

# Working with the Places upsert places API in Microsoft Graph

The [upsert places](/graph/api/place-patch-places?view=graph-rest-beta&preserve-view=true) API allows you to efficiently create and update multiple [places](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) in a single asynchronous operation.

## Supported scenarios

The following scenarios are supported when using the **upsert places** API:

- Create multiple independent places.
- Create places with hierarchy, including new child places under an existing place.
- Update multiple independent places.
- Update the hierarchy of places, including moving an existing place under a new place.

## Understand request payload

The following considerations apply when performing bulk create or update operations on places:

- Create vs. update: Places without an **id** property are created and places with an **id** property are updated by ID.
- Place hierarchy: Use the **children@delta** property to create or update children places within a parent place. The **parentId** property is automatically set for children places.
- Assigned mode isn't supported in upsert places yet.
- It isn't supported to update an existing child place under an existing parent place using **children@delta** property. They should be updated separately.

## Job-level concurrency

Job-level concurrency limits the number of upsert places operations that can run simultaneously within a tenant.

- Only three concurrent upsert places operations are allowed at the tenant level.
- If three operations are already created or in progress, another `PATCH` API call is rejected with a `429 Too Many Requests` response code.

## Related content

- [place resource type](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true)
- [Upsert places](/graph/api/place-patch-places?view=graph-rest-beta&preserve-view=true)
- [Get operation](/graph/api/place-getoperation?view=graph-rest-beta&preserve-view=true)
- [List operations](/graph/api/place-listoperations?view=graph-rest-beta&preserve-view=true)

