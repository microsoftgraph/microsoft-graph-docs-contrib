---
title: "chatMessagePolicyViolationPolicyTip resource type"
description: "Represents the properties of a policy tip on a chatMessagePolicyViolation object. Policy tips provide the sender with information about the policy violation."
author: "clearab"
doc_type: resourcePageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# chatMessagePolicyTip Resource

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a policy tip on a [chatMessagePolicyViolation](chatmessagepolicyviolation.md) object. Policy tips provide the sender with information about the policy violation.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|complianceUrl|string|General policy tip text for the end user. This needs to be localized to the sender's language.|
|generalText|string|Optional URL that provides additional help on the policy tip.|
|matchedConditionDescriptions|string collection|An array that contains a description of each sensitive data condition that has been matched in the given message.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.chatMessagePolicyViolationPolicyTip"
}-->
```json
{
  "complianceUrl": "string",
  "generalText": "string",
  "matchedConditionDescriptions": ["string 1", "string 2"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "policy violation policy tip resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
