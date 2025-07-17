---
title: "collaborationRoot resource type"
description: "An abstract type that enables read and other actions on collaborative entities in Microsoft Defender."
author: "MishraSoumyaMS"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# collaborationRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that enables read and other actions on collaborative entities in Microsoft Defender.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| **Analyzed email** |
|[List](../api/security-collaborationroot-list-analyzedemails.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|Get a list of [analyzedEmail](../resources/security-analyzedemail.md) objects and their properties.|
|[Get](../api/security-analyzedemail-get.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md)|Read the properties and relationships of an [analyzedEmail](../resources/security-analyzedemail.md) object.|
|[Remediate](../api/security-analyzedemail-remediate.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md)|Remove a potential threat from end users' mailboxes.|

## Properties
None.
## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|analyzedEmails|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|Contains metadata for analyzed emails.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.collaborationRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.collaborationRoot"
}
```

