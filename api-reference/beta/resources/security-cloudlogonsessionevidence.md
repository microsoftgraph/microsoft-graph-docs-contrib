---
title: "cloudLogonSessionEvidence resource type"
description: "Represents a cloud sign-in session created by an account."
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 06/01/2024
---

# cloudLogonSessionEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud sign-in session created by an account.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property  | Type |Description|
|:----------|:-------|:---|
| sessionId | String| The session ID for the account reported in the alert. | 
| account | [microsoft.graph.security.userEvidence](security-userevidence.md) | The account associated with the sign-in session. |
| protocol  | String| The authentication protocol that is used in this session, if known. |
| deviceName| String| The friendly name of the device, if known.  |
| operatingSystem  | String| The operating system that the device is running, if known. |
| browser| String | The browser that is used for the sign-in, if known. |
| userAgent  | String | The user agent that is used for the sign-in, if known. |
| startUtcDateTime | DateTime| The session start time, if known.  |
| previousLogonDateTime | DateTime| The previous sign-in time for this account, if known.  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cloudLogonSessionEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cloudLogonSessionEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "url": "String",
  "SessionId": "String",
  "Account": "microsoft.graph.security.userEvidence",
  "Protocol": "String",
  "DeviceName": "String",
  "OperatingSystem": "String",
  "Browser": "String",
  "UserAgent": "String",
  "StartUtcDateTime": "String (timestamp)",
  "PreviousLogonDateTime": "String (timestamp)"
}
```
