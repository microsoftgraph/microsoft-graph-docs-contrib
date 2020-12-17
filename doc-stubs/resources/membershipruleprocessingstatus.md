---
title: "membershipRuleProcessingStatus resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# membershipRuleProcessingStatus resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|errorMessage|String|**TODO: Add Description**|
|lastMembershipUpdated|DateTimeOffset|**TODO: Add Description**|
|status|MembershipRuleProcessingStatusDetails|**TODO: Add Description**. Possible values are: `NotStarted`, `Running`, `Failed`, `Succeeded`, `UnsupportedFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membershipRuleProcessingStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membershipRuleProcessingStatus",
  "errorMessage": "String",
  "lastMembershipUpdated": "String (timestamp)",
  "status": "String"
}
```

