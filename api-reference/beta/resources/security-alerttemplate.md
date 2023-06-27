---
title: "alertTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# alertTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|impactedAssets|[microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md) collection|**TODO: Add Description**|
|mitreTechniques|String collection|**TODO: Add Description**|
|recommendedActions|String|**TODO: Add Description**|
|severity|microsoft.graph.security.alertSeverity|**TODO: Add Description**.The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|title|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.alertTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.alertTemplate",
  "title": "String",
  "description": "String",
  "severity": "String",
  "category": "String",
  "recommendedActions": "String",
  "mitreTechniques": [
    "String"
  ],
  "impactedAssets": [
    {
      "@odata.type": "microsoft.graph.security.impactedUserAsset"
    }
  ]
}
```

