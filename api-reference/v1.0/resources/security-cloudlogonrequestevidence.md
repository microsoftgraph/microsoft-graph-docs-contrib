---
title: "cloudLogonRequestEvidence resource type"
description: "Represents a cloud sign-in request for an account."
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/31/2024
---

# cloudLogonRequestEvidence resource type

Namespace: microsoft.graph.security

Represents a cloud sign-in request for an account.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property  |Type|Description|
|:----------|:---|:---|
| requestId |String|The unique identifier for the sign-in request.|

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
