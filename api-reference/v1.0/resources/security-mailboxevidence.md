---
title: "mailboxEvidence resource type"
description: "Represents a mailbox that is reported in the alert as evidence."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# mailboxEvidence resource type

Namespace: microsoft.graph.security

Represents a mailbox that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name associated with the mailbox.|
|primaryAddress|String|The primary email address of the mailbox.|
|upn|String|The user principal name of the mailbox.|
|userAccount|[microsoft.graph.security.userAccount](../resources/security-useraccount.md)|The user account of the mailbox.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mailboxEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mailboxEvidence",
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
  "displayName": "String",
  "primaryAddress": "String",
  "upn": "String",
  "userAccount": {"@odata.type": "microsoft.graph.security.userAccount"}
}
```
