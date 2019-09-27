---
title: "conditionalAccessGrantControls resource type"
description: "Represents grant controls that must be fulfilled to pass the policy."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# conditionalAccessGrantControls resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents grant controls that must be fulfilled to pass the policy.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| operator | String | Defines the relationship of the grant controls. Possible values: `AND`, `OR`. |
| builtInControls | conditionalAccessGrantControl collection | List of values of built-in controls specified by the policy. Possible values: `Block`, `Mfa`, `CompliantDevice`, `DomainJoinedDevice`, `ApprovedApplication`, `CompliantApplication` |
| customAuthenticationFactors | String collection | List of custom controls IDs specified by the policy. |
| termsOfUse | String collection | List of terms of use specified by the policy. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "operator",
    "builtInControls",
    "customAuthenticationFactors",
    "termsOfUse"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessGrantControls",
  "baseType": null
}-->

```json
{
  "builtInControls": ["String"],
  "customAuthenticationFactors": ["String"],
  "operator": "String",
  "termsOfUse": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessGrantControls resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->