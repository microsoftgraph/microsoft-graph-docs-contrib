---
title: "Information Barrier for fileStorageContainers"
description: "Manage Information Barrier for fileStorageContainers"
author: lilealdai
ms.author: daili
ms.topic: how-to
ms.localizationpriority: medium
ms.custom: scenarios:getting-started
ms.subservice: "onedrive"
ms.date: 10/22/2025
---

# Manage informationBarrier for fileStorageContainers
The [informationBarrier](/api-reference/beta/resources/informationBarrier.md) property of the [fileStorageContainer](/api-reference/beta/resources/filestoragecontainer.md) object lets you restrict two-way communication and collaboration between users.

## Stamp informationBarrier on fileStorageContainer creation
For tenants that have Information Barriers(IB) enabled, IB is automatically stamped on the containers at creation time:
- For app-only auth, the container is provisioned to the default IB mode - Open, with no IB segments.
  - The creating user can specify IB mode and segments in the payload.
- For delegated auth where a user context is present, the container is provisioned based on the user's IB settings:
  - Container creating user has a single IB segment:
    - The container's IB mode is set to Explicit.
    - The container's IB segments is set to be the sum of the user's IB segments and other compatible segments in the tenant.
  - Container creating user has multiple IB segments:
    - The container's IB mode is set to OwnerModerated.
    - The container's IB segments is empty.
  - Container creating user has no IB segment:
    - The container's IB mode is set to Open.
    - The container's IB segments is empty.

### Example
To specify informationBarrier with App-Only auth when creating a container, run the following sample request:

```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers?$select=id,displayName,informationBarrier
Content-Type: application/json

{
  "displayName": "My Application Storage Container",
  "description": "Description of My Application Storage Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "informationBarrier": {
    "mode": "Explicit",
    "segmentIds": [
      "7c94cec9-4ef6-48e4-bb99-9ff01c9b3a79"
    ]
  }
}
```

## Update informationBarrier
- Admins can update Information Barriers via Update fileStorageContainer API.
- Container owner and container principal owner can only add segments to a container that already has associated segments. They can't create segments, change the policies for a segment, associate segments with nonsegmented sites, or remove segments.
- Existing containers don't get their IB mode and segment automatically updated due to updates of the creating user's IB settings.

### Example
```http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z?$select=id,displayName,informationBarrier
Content-Type: application/json

{
  "displayName": "Updated Name",
  "description": "Updated Description",
  "informationBarrier": {
    "mode": "Explicit",
    "segmentIds": [
      "7c94cec9-4ef6-48e4-bb99-9ff01c9b3a79"      
    ]
  }
}
```

## Disable Information Barriers
If Information Barriers are disabled for the tenant, all IB access enforcement stops, but existing IB settings on containers are retained. If Information Barriers are re-enabled, enforcement resumes based on the existing settings.

## Explicit Select
Explicitly select this property to return it. i.e. `?$select=informationBarrier`
