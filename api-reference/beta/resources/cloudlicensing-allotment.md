---
title: "allotment resource type"
description: "Represents an independently manageable pool of licenses supported by a subscription."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# allotment resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an independently manageable pool of licenses supported by a subscription.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudlicensing-admincloudlicensing-list-allotments.md)|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md) collection|Get a list of the [allotment](../resources/cloudlicensing-allotment.md) objects and their properties.|
|[Get](../api/cloudlicensing-allotment-get.md)|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md)|Read the properties and relationships of an [allotment](../resources/cloudlicensing-allotment.md) object.|
|[List assignments for allotment](../api/cloudlicensing-allotment-list-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|Get a list of license [assignment](../resources/cloudlicensing-assignment.md) objects within an organization.|
|[Create assignment for allotment](../api/cloudlicensing-allotment-post-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to the **assignments** collection of an organization.|
|[List waiting members](../api/cloudlicensing-allotment-list-waitingmembers.md)|[microsoft.graph.cloudLicensing.waitingMember](../resources/cloudlicensing-waitingmember.md) collection|Get a list of over-assigned users who are in the waiting room for this allotment due to license capacity limits.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allottedUnits|Int32|The number of licenses contained within the allotment. Not nullable. Read-only.|
|assignableTo|[microsoft.graph.cloudLicensing.assigneeTypes](../resources/cloudlicensing-service.md#assigneetypes-values)|Identifies the types of directory objects to which the allotment can be assigned. The possible values are: `none`, `user`, `group`, `device`, `unknownFutureValue`. The **assigneeTypes** enum is multivalued and can contain multiple values in a comma‑separated list. Not nullable. Read-only.|
|consumedUnits|Int32|The number of licenses that are currently consumed by assignments from this allotment. Not nullable. Read-only.|
|id|String|The unique identifier for the **allotment** that should be treated as an opaque identifier. Inherited from [entity](../resources/entity.md). Not nullable. Read-only.|
|services|[microsoft.graph.cloudLicensing.service](../resources/cloudlicensing-service.md) collection| The list of services that might be enabled or disabled for assignments from this allotment. Not nullable. Read-only.|
|skuId|Guid|Unique identifier (GUID) for the service SKU that is equal to the **skuId** property on the related [subscribedSku](subscribedsku.md) object. Read-only. Supports `$filter`. |
|skuPartNumber|String| Unique SKU display name that is equal to the **skuPartNumber** on the related [subscribedSku](subscribedsku.md) object; for example, `AAD_Premium`. Read-only. |
|subscriptions| [microsoft.graph.cloudLicensing.subscription](../resources/cloudlicensing-subscription.md) collection |Basic information about the subscriptions that supports this allotment. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|The list of license assignments that consume licenses from this allotment. Not nullable.|
|waitingMembers|[microsoft.graph.cloudLicensing.waitingMember](../resources/cloudlicensing-waitingmember.md) collection|List of over-assigned users who are in the waiting room for an allotment due to license capacity limits.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudLicensing.allotment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.allotment",
  "allottedUnits": "Int32",
  "assignableTo": "String",
  "consumedUnits": "Int32",
  "id": "String (identifier)",
  "services": [{"@odata.type": "microsoft.graph.cloudLicensing.service"}],
  "skuId": "Guid",
  "skuPartNumber": "String",
  "subscriptions": [{"@odata.type": "microsoft.graph.cloudLicensing.subscription"}]
}
```

