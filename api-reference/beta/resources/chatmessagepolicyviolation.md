---
title: "chatMessagePolicyViolation resource type"
description: "Represents a policy violation on a chat message. Policy violations are typically set by a Data Loss Prevention (DLP) application or provider."
author: "clearab"
doc_type: resourcePageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# chatMessagePolicyViolation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy violation on a chat message. 
Policy violations are typically set by a data loss prevention (DLP) application which watches for messages that contain data that users aren't supposed to send.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|dlpAction|**chatMessagePolicyViolationDlpActionType**|The action taken by the DLP provider on the message with sensitive content. Possible values are: <li>None</li><li>NotifySender</li><li>BlockAccess</li><li>BlockAccessExternal</li>|
|justificationText|string|Justification text provided by the sender of the message. Typical usage: When the messages first sent there is no justificationText. Then the DLP app flags the violation and sends it back to the sender, who then provides the justificationText if required by the policy that caused the verdict.|
|policyTip|[chatMessagePolicyViolationPolicyTip](chatmessagepolicyviolationpolicytip.md)|The policy tip for the DLP Violation is text to explain to the sender why the message was flagged as a violation or was blocked. |
|userAction|**chatMessagePolicyViolationUserActionType**|Indicates the action taken by the user on a message blocked by the DLP provider. Possible values are: <li>None</li><li>Override</li><li>ReportFalsePositive</li>When the DLP provider is updating the message for blocking sensitive content, userAction is not required.|
|verdictDetails|**chatMessagePolicyViolationVerdictDetailsType**|Indicates the details of the allowed sender actions based on the verdict of the DLP provider for the message processed. Possible values include: <li>None</li><li>AllowFalsePositiveOverride</li><li>AllowOverrideWithoutJustification</li><li>AllowOverrideWithJustification</li>AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userAction",
    "justificationText"
  ],
  "@odata.type": "microsoft.graph.chatMessagePolicyViolation"
}-->

```json
{
  "dlpAction": "string",
  "justificationText": "string",
  "policyTip": {"@odata.type": "microsoft.graph.chatMessagePolicyViolationPolicyTip"},
  "userAction": "string",
  "verdictDetails": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chat message policy violation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
