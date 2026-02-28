---
title: "assignmentError resource type"
description: "Represents an error that impacts synchronization of license assignments in the directory."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# assignmentError resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an error that impacts synchronization of license assignments in the directory. This error can prevent the license assignment from taking effect or from updating.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudlicensing-admincloudlicensing-list-assignmenterrors.md)|[microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md) collection|Get a list of the [assignmentError](../resources/cloudlicensing-assignmenterror.md) objects within an organization or affecting a specific user.|
|[Get](../api/cloudlicensing-assignmenterror-get.md)|[microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md)|Read the properties and relationships of an [assignmentError](../resources/cloudlicensing-assignmenterror.md) object.|
|[Get assignedTo](../api/cloudlicensing-assignmenterror-get-assignedto.md)|[directoryObject](../resources/directoryobject.md)|Get a [user](../resources/directoryobject.md) or [group](../resources/directoryobject.md) object for a given [assignmentError](../resources/cloudlicensing-assignmenterror.md) to which licenses are assigned.|
|[Get usageRight](../api/cloudlicensing-assignmenterror-get-usageright.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md)|Get a [usageRight](../resources/cloudlicensing-usageright.md) object affected by an [assignmentError](../resources/cloudlicensing-assignmenterror.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The error code associated with the assignment synchronization failure.|
|id|String|The unique identifier for the **assignmentError** that should be treated as an opaque identifier. Inherited from [entity](../resources/entity.md). Not nullable. Read-only.|
|message|String|The error message associated with the assignment synchronization failure.|
|occurrenceDateTime|DateTimeOffset|The date and time at which the error most recently occurred. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|skuId|Guid| Unique identifier (GUID) for the service SKU that is equal to the **skuId** property on the related [subscribedSku](subscribedsku.md) object. Read-only. Supports `$filter`. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedTo|[directoryObject](../resources/directoryobject.md)|The user to whom licenses are assigned. Not nullable. Read-only.|
|usageRight|[usageRight](../resources/cloudlicensing-usageright.md)|The affected **usageRight**, if one exists. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudLicensing.assignmentError",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.assignmentError",
  "code": "String",
  "id": "String (identifier)",
  "message": "String",
  "occurrenceDateTime": "String (timestamp)",
  "skuId": "Guid"
}
```
