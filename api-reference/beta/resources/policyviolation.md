---
title: "policyViolation Resource"
description: "Details for PolicyViolation Resource Type"
author: "clearab"
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# policyViolation Resource

Details for policyViolation Resource type.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| [policyTip](policytip.md) | chatMessagePolicyViolationPolicyTip | The policy tip for the DLP violation. See the following table for details about the structure |
| [verdictDetails](../resources/enums.md#verdictdetails-values) | chatMessagePolicyViolationVerdictDetailsTypes| Indicates the details of the allowed sender actions based on the verdict of the DLP app for the message processed. Possible values are None (0), AllowFalsePositiveOverride (1), AllowOverridewithoutJustification (2), AllowOverridewithJustification (4). |
| [dlpAction](../resources/enums.md#dlpaction-values) | chatMessagePolicyViolationDlpActionTypes| Indicates the action taken by DLP app on the message with sensitive content. Possible values are None (0),  NotifySender (1), BlockAccess (2), BlockAccessExternal (4). |
| [userAction](useraction.md) | chatMessagePolicyViolationUserActionTypes | Indicates the action taken by user on the message with sensitive content after DLP has blocked the message. Possible values are None (0), Override (1) and ReportFalsePositive (2). When the DLP app is updating the message for blocking sensitive content, userAction is not required in the request payload. |
| justificationText | String | Justification text provided by the sender of message. When the DLP app is updating the message for blocking sensitive content, justificationText is not required in the request payload. |
