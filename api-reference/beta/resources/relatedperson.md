---
title: "relatedPerson resource type"
description: "relatedPerson resource type"
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 06/11/2024
---

# relatedPerson resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about people related to information within a given entity in a [profile](profile.md) for a user.

## Properties

| Property        | Type        | Description                                                                                                                                                                                                                                     |
|:----------------|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|displayName      |String       | Name of the person.                                                                                                                                                                                                                             |
|relationship     |String       | Possible values are: `manager`, `colleague`, `directReport`, `dotLineReport`, `assistant`, `dotLineManager`, `alternateContact`, `friend`, `spouse`, `sibling`, `child`, `parent`, `sponsor`, `emergencyContact`, `other`, `unknownFutureValue`.|
|userId           |String       | The user's directory object ID (Microsoft Entra ID or CID).                                                                                                                                                                                       |
|userPrincipalName|String       | Email address or reference to person within the organization.                                                                                                                                                                                       |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.relatedPerson",
  "baseType": null
}-->

```json
{
  "displayName": "String",
  "relationship": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "relatedPerson resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

