---
title: "cloud licensing service resource type"
description: "Represents a specific service conferred by an individual usageRight."
author: "patrick-starrin"
ms.localizationpriority: medium
doc_type: resourcePageType
---

# service resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the service plan granted with a usageRight. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignableTo|[assigneeTypes](../resources/cloudlicensing-assigneetypes.md) enum|Identifies the types of directory objects to which the service can be assigned. The possible values are: <br/>`none` - This service plan cannot be assigned<br/>`user` - The service plan is assignable to a user object<br/>`group` - The service plan is assignable to a group object<br/>`device` - The service plan is assignable to a device object<br/>`unknownFutureValue`<br/><br/>If new values are added to this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations) in the future, note that you must use the `Prefer: include-unknown-enum-members` request header to get them.<br/><br/>**assigneeTypes** is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.|
|planId|Guid|The unique identifier of the service plan. Equal to the **servicePlanId** property on the related [servicePlanInfo](../resources/serviceplaninfo.md) objects.|
|planName|String|The name of the service plan. Equal to the **servicePlanName** property on the related [servicePlanInfo](../resources/serviceplaninfo.md) objects.|

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
  "assignableTo": "#microsoft.graph.cloudLicensing.assigneeTypes",
  "planId": "Guid",
  "planName": "String"
}
```
