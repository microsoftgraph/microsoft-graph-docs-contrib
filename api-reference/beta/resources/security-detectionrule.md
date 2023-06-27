---
title: "detectionRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# detectionRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List detectionRules](../api/security-detectionrule-list.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) collection|Get a list of the [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) objects and their properties.|
|[Get detectionRule](../api/security-detectionrule-get.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)|Read the properties and relationships of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object.|
|[Update detectionRule](../api/security-detectionrule-update.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)|Update the properties of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object.|
|[Delete detectionRule](../api/security-detectionrule-delete.md)|None|Delete a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).|
|detectionAction|[microsoft.graph.security.detectionAction](../resources/security-detectionaction.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).|
|lastModifiedBy|String|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md).|
|lastRunDetails|[microsoft.graph.security.runDetails](../resources/security-rundetails.md)|**TODO: Add Description**|
|queryCondition|[microsoft.graph.security.queryCondition](../resources/security-querycondition.md)|**TODO: Add Description**|
|schedule|[microsoft.graph.security.ruleSchedule](../resources/security-ruleschedule.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.detectionRule",
  "baseType": "microsoft.graph.security.protectionRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "String (identifier)",
  "displayName": "String",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "queryCondition": {
    "@odata.type": "microsoft.graph.security.queryCondition"
  },
  "schedule": {
    "@odata.type": "microsoft.graph.security.ruleSchedule"
  },
  "lastRunDetails": {
    "@odata.type": "microsoft.graph.security.runDetails"
  },
  "detectionAction": {
    "@odata.type": "microsoft.graph.security.detectionAction"
  }
}
```

