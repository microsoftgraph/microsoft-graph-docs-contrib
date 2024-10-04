---
title: "service resource type"
description: "Represents a specific service granted by an individual usageRight."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# service resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific service granted by an individual [usageRight](../resources/cloudlicensing-usageright.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignableTo|[microsoft.graph.cloudLicensing.assigneeTypes](../resources/cloudlicensing-service.md#assigneetypes-values)|Identifies the types of directory objects to which the service can be assigned. The possible values are: `none`, `user`, `group`, `device`, `unknownFutureValue`.<br/><br/>If new values are added to this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations) in the future, you must use the `Prefer: include-unknown-enum-members` request header to get them.<br/><br/>The **assigneeTypes** property is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.|
|planId|Guid|The unique identifier of the service plan that is equal to the **servicePlanId** property on the related [servicePlanInfo](../resources/serviceplaninfo.md) objects.|
|planName|String|The name of the service plan that is equal to the **servicePlanName** property on the related [servicePlanInfo](../resources/serviceplaninfo.md) objects.|

### assigneeTypes values

| Member            | Description                                                            |
|:------------------|:-----------------------------------------------------------------------|
| none              | No flags are enabled; this service can't be assigned.                  |
| user              | If enabled, this service can be assigned directly to users.            |
| group             | If enabled, this service can be assigned to groups.                    |
| device            | If enabled, this service can be assigned directly to devices.          |
| unknownFutureValue| Evolvable enumeration sentinel value. Don't use.                       |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudLicensing.service"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.service",
  "assignableTo": "String",
  "planId": "Guid",
  "planName": "String"
}
```
