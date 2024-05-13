---
title: "cloudLogonRequestEvidence resource type"
description: "A cloud logon request for an account."
ms.date: 4/30/2024
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# cloudLogonRequestEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A cloud logon request for an account.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property  |Type|Description|
|:----------|:---|:---|
| requestId |String|Unique identifier for a log-on request, while SessionId is maintained as long as same refresh token or authentication cookie is used|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cloudLogonRequestEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cloudLogonRequestEvidence",
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
  "requestId": "String"
}
```