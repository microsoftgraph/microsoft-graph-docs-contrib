---
title: "informationBarrier resource type"
description: "Represents informationBarrier of a fileStorageContainer."
author: "daili"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# fileStorageContainerSettings resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)] 

Represents the information barrier of a [fileStorageContainer](../resources/filestoragecontainer.md) object.

## Properties
| Property             | Type               | Description                              |
|:---------------------|:-------------------|:-----------------------------------------|
| `mode`               | informationBarrierMode            | Enum indicating the information barrier mode, currently supporting Open, OwnerModerated and Explicit. |
| `segmentIds` | `Collection(Guid)` | The list of segment IDs associated with the container. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.informationBarrier",
}-->

```json
{
  "mode": { "@odata.type": "#microsoft.graph.informationBarrierMode" },
  "segmentIds": "Collection(Guid)"
}
```

## Information Barriers for fileStorageContainer
### Information Barriers on Container Creation
For tenants that have Information Barriers(IB) enabled, IB will be automatically stamped on the containers at creation time based on the authentication context and user context defined as following:
- For app-only auth, the container will be provisioned to the default IB mode - Open, with no IB segments for the container.
  - The creating user can specify IB mode and segments in the payload.
- For delegated auth where a user context is present, the container will be provisioned based on the user's IB settings:
  - Container creating user has a single IB segment:
    - The container will be in IB mode Explicit.
    - The container's IB segments will be the sum of the user's IB segments and other compatible segments in the tenant.
  - Container creating user has multiple IB segments:
    - The container will be in IB mode OwnerModerated.
    - The container's IB segments will be empty.
  - Container creating user has no IB segment:
    - The container will be in IB mode Open.
    - The container's IB segments will be empty.

### Updating Information Barriers
- Admins can update Information Barriers via Update fileStorageContainerAPI.
- Container owner and container principal owner can only add segments to a container that already has associated segments. They can't create segments, change the policies for a segment, associate segments with non-segmented sites, or remove segments.
- Existing containers do not get their IB mode and segment automatically updated due to updates of the creating user's IB settings. 

### Disabling Information Barriers
If Information Barriers are disabled for the tenant, all IB access enforcement will stop, but existing IB settings on containers will be retained. If Information Barriers are re-enabled, enforcement will resume based on the existing settings.

### Explicit Select
This property needs to be explicitly selected to be returned. i.e. `?$select=informationBarrier`
