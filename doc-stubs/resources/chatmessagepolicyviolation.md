---
title: "chatMessagePolicyViolation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# chatMessagePolicyViolation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dlpAction|chatMessagePolicyViolationDlpActionTypes|**TODO: Add Description**. Possible values are: `none`, `notifySender`, `blockAccess`, `blockAccessExternal`.|
|justificationText|String|**TODO: Add Description**|
|policyTip|[chatMessagePolicyViolationPolicyTip](../resources/chatmessagepolicyviolationpolicytip.md)|**TODO: Add Description**|
|userAction|chatMessagePolicyViolationUserActionTypes|**TODO: Add Description**. Possible values are: `none`, `override`, `reportFalsePositive`.|
|verdictDetails|chatMessagePolicyViolationVerdictDetailsTypes|**TODO: Add Description**. Possible values are: `none`, `allowFalsePositiveOverride`, `allowOverrideWithoutJustification`, `allowOverrideWithJustification`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessagePolicyViolation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessagePolicyViolation",
  "dlpAction": "String",
  "justificationText": "String",
  "policyTip": {
    "@odata.type": "microsoft.graph.chatMessagePolicyViolationPolicyTip"
  },
  "userAction": "String",
  "verdictDetails": "String"
}
```

