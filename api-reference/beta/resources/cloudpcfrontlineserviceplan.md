---
title: "cloudPcFrontLineServicePlan resource type"
description: "Entity that represents the servicePlan that can be used by up to 3 users. This servicePlan type provides an allotment of 3 Cloud PCs for the admin to provision and cannot be assigned to a specific user. This new servicePlan allows our service to create a concept of a time-share across these provisioned users, where customers can deploy a larger number of users, and Win365 will enforce a limit on active users at a given time, effectively creating an innovative way to provide the personalized experience of a Cloud PC along with the improved economics of sharing."
author: "Guoan Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcFrontLineServicePlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that represents the servicePlan that can be used by up to 3 users. This servicePlan type provides an allotment of 3 Cloud PCs for the admin to provision and cannot be assigned to a specific user. This new servicePlan allows our service to create a concept of a time-share across these provisioned users, where customers can deploy a larger number of users, and Win365 will enforce a limit on active users at a given time, effectively creating an innovative way to provide the personalized experience of a Cloud PC along with the improved economics of sharing.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcFrontLineServicePlans](../api/virtualendpoint-list-frontlineserviceplans.md)|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) collection|Get a list of the [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) objects and their properties.|
|[Get cloudPcFrontLineServicePlan](../api/cloudpcfrontlineserviceplan-get.md)|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md)|Read the properties and relationships of a [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of front-line service plan. For example: 2vCPU/8GB/128GB Front-line, 4vCPU/16GB/256GB Front-line.|
|id|String|The unique identifier (ID) of front-line service plan.|
|totalCount|Int32|Indicates the total number of front-line service plans purchased by customer.|
|usedCount|Int32|Indicates the number of service plans that have been used for the account.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcFrontLineServicePlan",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcFrontLineServicePlan",
  "id": "String (identifier)",
  "displayName": "String",
  "usedCount": "Integer",
  "totalCount": "Integer"
}
```

