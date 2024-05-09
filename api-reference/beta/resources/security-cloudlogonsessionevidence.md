---
title: "cloudLogonSessionEvidence resource type"
description: "A cloud logon session by an account."
ms.date: 30/04/2024
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# cloudLogonSessionEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A cloud logon session by an account.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property              | Type                                                              |Description|
|:----------------------|:------------------------------------------------------------------|:---|
| sessionId             | String                                                            | The session id for the account reported in the alert, e.g. 177997dc-5cba-435a-abdd-2bab21926d00 | Yes     | Yes      |
| account               | [microsoft.graph.security.userEvidence](security-userevidence.md) | The Account associated with the logon session                                                   | No      | Yes      |
| protocol              | String                                                            | The auth protocol that is used in this session, if known                                        | No      | Yes      |                                                                      |        |          |
| deviceName            | String                                                            | The friendly name of the device, if known                                                       | No      | Yes      |                                                                       |        |          |
| operatingSystem       | String                                                            | The operating system that the device is running, if known                                       | No      | Yes      |                                                                  |        |          |
| browser               | String                                                            | The browser that is used for the logon, if known                                                | No      | Yes      |                                                                       |        |          |
| userAgent             | String                                                            | The user agent that is used for the logon, if known                                             | No      | Yes      |                                                                     |        |          |
| startUtcDateTime      | DateTime                                                          | The session start time, if known                                                                | No      | Yes      |                                                                      |        |          |
| previousLogonDateTime | DateTime                                                          | The previous logon time for this account, if known                                              | No      | Yes      |                                                                     |        |          |

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