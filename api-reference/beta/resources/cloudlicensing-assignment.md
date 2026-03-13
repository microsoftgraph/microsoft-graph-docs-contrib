---
title: "assignment resource type"
description: "Represents a license assignment that grants a license for the product-SKU contained within an allotment directly to the assigned user or indirectly to each member of the assigned group."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# assignment resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a license assignment that grants a license for the product-SKU contained within an allotment directly to the assigned user or indirectly to each member of the assigned group. Each unique user consumes one license from each allotment to which they're directly or indirectly assigned.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudlicensing-allotment-list-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|Get a list of license [assignment](../resources/cloudlicensing-assignment.md) objects within an organization.|
|[Create](../api/cloudlicensing-admincloudlicensing-post-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to the **assignments** collection of an organization.|
|[Get](../api/cloudlicensing-assignment-get.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Read the properties and relationships of an [assignment](../resources/cloudlicensing-assignment.md) object.|
|[Update](../api/cloudlicensing-assignment-update.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Update an [assignment](../resources/cloudlicensing-assignment.md) object to enable or disable services.|
|[Delete](../api/cloudlicensing-assignment-delete.md)|None|Delete an [assignment](../resources/cloudlicensing-assignment.md) object.|
|[Create for allotment](../api/cloudlicensing-allotment-post-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to the **assignments** collection of an [allotment](../resources/cloudlicensing-allotment.md).|
|[Create for user](../api/cloudlicensing-usercloudlicensing-post-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to a [user](../resources/user.md)'s **assignments** collection.|
|[Create for group](../api/cloudlicensing-groupcloudlicensing-post-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to the **assignments** collection for a [group](../resources/group.md).|
|[Reprocess assignments](../api/cloudlicensing-assignment-reprocessassignments.md)|None|Reprocess existing license [assignments](../resources/cloudlicensing-assignment.md) for a user by calling the **reprocessAssignments** action on a user's assignments.|
|[Get assignedTo](../api/cloudlicensing-assignment-get-assignedto.md)|[directoryObject](../resources/directoryobject.md)| Get a [user](../resources/directoryobject.md) or [group](../resources/directoryobject.md) object for a given [assignment](../resources/cloudlicensing-assignment.md) to which licenses are assigned.|
|[Get allotment for assignment](../api/cloudlicensing-assignment-get-allotment.md)|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md)|Get the [allotment](../resources/cloudlicensing-allotment.md) that is the source of the licenses used in the assignment.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|disabledServicePlanIds|Guid collection|The list of disabled service plans for this **assignment**. Not nullable.|
|id|String|The unique identifier for the **assignment** that should be treated as an opaque identifier. Inherited from [entity](../resources/entity.md). Not nullable.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allotment|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md)|The allotment from which licenses are assigned. Not nullable.|
|assignedTo|[directoryObject](../resources/directoryobject.md)|The user or group to which licenses are assigned. Not nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudLicensing.assignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
  "disabledServicePlanIds": ["Guid"],
  "id": "String (identifier)"
}
```

