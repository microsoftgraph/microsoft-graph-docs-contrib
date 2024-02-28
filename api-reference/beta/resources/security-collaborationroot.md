---
title: "collaborationRoot resource type"
description: "Represents an abstract type to read and perform actions on collaborative entities in Microsoft Defender."
author: "MishraSoumyaMS"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# collaborationRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type to read and perform actions on collaborative entities in Microsoft Defender.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| **Analyzed email** |
|[List analyzedEmails](../api/security-collaborationroot-list-analyzedemails.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|Get the analyzedEmail resources from the analyzedEmails navigation property.|
|[Get analyzedEmail](../api/security-analyzedemail-get.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md)|Get an analyzedEmail object.|
|[Remediate analyzedEmail](../api/security-analyzedemail-remediate.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md)|Remediate analyzedEmail objects.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|analyzedEmails|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|Email metadata.|

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

