---
title: "authenticationAttributeCollectionInputConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authenticationAttributeCollectionInputConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attribute|String|**TODO: Add Description**|
|defaultValue|String|**TODO: Add Description**|
|editable|Boolean|**TODO: Add Description**|
|hidden|Boolean|**TODO: Add Description**|
|inputType|authenticationAttributeCollectionInputType|**TODO: Add Description**.The possible values are: `text`, `radioSingleSelect`, `checkboxMultiSelect`, `boolean`, `unknownFutureValue`.|
|label|String|**TODO: Add Description**|
|options|[authenticationAttributeCollectionOptionConfiguration](../resources/authenticationattributecollectionoptionconfiguration.md) collection|**TODO: Add Description**|
|required|Boolean|**TODO: Add Description**|
|validationRegEx|String|**TODO: Add Description**|
|writeToDirectory|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionInputConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionInputConfiguration",
  "attribute": "String",
  "label": "String",
  "inputType": "String",
  "defaultValue": "String",
  "hidden": "Boolean",
  "editable": "Boolean",
  "writeToDirectory": "Boolean",
  "required": "Boolean",
  "validationRegEx": "String",
  "options": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionOptionConfiguration"
    }
  ]
}
```

