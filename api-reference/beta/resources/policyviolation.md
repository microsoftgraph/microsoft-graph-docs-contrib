---
title: "policyViolation resource type"
description: "Represents a policy violation. Policy violations are typically set by a Data Loss Prevention (DLP) application or provider."
author: "clearab"
doc_type: resourcePageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# policyViolation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy violation. Policy violations are typically set by a Data Loss Prevention (DLP) application or provider.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|[dlpAction](/graph/api/resources/enums?view=graph-rest-beta#dlpaction-values)|bitwise enum|The action taken by the DLP provider on the message with sensitive content. Possible values are: <li>None</li><li>NotifySender</li><li>BlockAccess</li><li>BlockAccessExternal</li>|
|justificationText|string|Justification text provided by the sender of the message. Typical usage: When the messages first sent there is no justificationText. Then the DLP app flags the violation and sends it back to the sender, who then provides the justificationText if required by the policy that caused the verdict.|
|[policyTip](policytip.md)|policyTip|The policy tip for the DLP Violation is text to explain to the sender why the message was flagged as a violation or was blocked. This contains:<li>generalText: This is the explanatory text shown to the sender of the message that got flagged.</li><li>complianceUrl: This is the URL that represents the DLP policies of the organization or a page the admin chooses to configure to provide more information about DLP policies in the organization.</li><li>matchedConditionDescription: This is the set of sensitive types that were a match during classification of the given message. Examples are: Credit Card Number, Social Security Number, etc.</li>|
|[userAction](/graph/api/resources/enums?view=graph-rest-beta#useraction-values)|bitwise enum|Indicates the action taken by the user on a message blocked by the DLP provider. Possible values are: <li>None</li><li>Override</li><li>ReportFalsePositive</li>When the DLP provider is updating the message for blocking sensitive content, userAction is not required.|
|verdictDetails|bitwise enum|Indicates the details of the allowed sender actions based on the verdict of the DLP provider for the message processed. Possible values include: <li>None</li><li>AllowFalsePositiveOverride</li><li>AllowOverrideWithoutJustification</li><li>AllowOverrideWithJustification</li>AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userAction",
    "justificationText"
  ],
  "@odata.type": "microsoft.graph.policyViolation"
}-->

```json
{
  "dlpAction": "NotifySender,BlockAccess",
  "justificationText": "string",
  "policyTip": {"@odata.type": "microsoft.graph.policyTip"},
  "userAction": "Override",
  "verdictDetails": "AllowFalsePositiveOverride,AllowOverrideWithoutJustification"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "policy violation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
