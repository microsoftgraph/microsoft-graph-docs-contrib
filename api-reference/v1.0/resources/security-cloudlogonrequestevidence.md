---
title: "cloudLogonRequestEvidence resource type"
description: "A cloud logon request for an account."
ms.date: 30/4/2024
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# cloudLogonRequestEvidence resource type

Namespace: microsoft.graph.security

A cloud logon request for an account.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property  |Type|Description|
|:----------|:---|:---|
| requestId |String|Unique identifier for a log-on request, while SessionId is maintained as long as same refresh token or authentication cookie is used|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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