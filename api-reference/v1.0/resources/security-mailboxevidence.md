---
title: "mailboxEvidence resource type"
description: "A mailbox that is reported in the alert as evidence."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# mailboxEvidence resource type

Namespace: microsoft.graph.security

A mailbox that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name associated with the mailbox.|
|primaryAddress|String|The primary email address of the mailbox.|
|userAccount|[microsoft.graph.security.userAccount](../resources/security-useraccount.md)|The user account of the mailbox.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mailboxEvidence"
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
  "primaryAddress": "String",
  "displayName": "String",
  "userAccount": {
    "@odata.type": "microsoft.graph.security.userAccount"
  }
}
```