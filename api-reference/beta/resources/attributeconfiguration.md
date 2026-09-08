---
title: "attributeConfiguration resource type"
description: "Defines an attribute that a progressive profiling flow can collect."
author: "Gyanendersinghgithub"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/08/2026
---

# attributeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the schema, presentation, validation, and persistence behavior for an attribute that a progressive profiling flow can collect.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|dataType|String|Required. The data type of the attribute. Possible values are `string`, `boolean`, and `int64`.|
|defaultValue|String|The default value displayed for the attribute.|
|displayName|String|The display name of the attribute.|
|editable|Boolean|Required. Indicates whether the user can edit the attribute.|
|hidden|Boolean|Required. Indicates whether the attribute is hidden from the user.|
|id|String|Required. The identifier of the built-in, custom, or extension attribute. Rules and page views reference this value.|
|inputType|authenticationAttributeCollectionInputType|Required. The input control used to collect the attribute. The possible values are: `text`, `radioSingleSelect`, `checkboxMultiSelect`, `boolean`, and `unknownFutureValue`.|
|label|String|Required. The label displayed for the attribute.|
|options|[authenticationAttributeCollectionOptionConfiguration](../resources/authenticationattributecollectionoptionconfiguration.md) collection|Required. The values that the user can select. Provide values for supported selection input types.|
|required|Boolean|Required. Indicates whether the user must provide a value.|
|userFlowAttributeType|String|The type of attribute. Possible values are `builtIn`, `custom`, and `extensionProperty`.|
|validationRegEx|String|The regular expression used to validate the value.|
|writeToDirectory|Boolean|Required. Indicates whether the collected value is written to the user object.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeConfiguration",
  "id": "String",
  "displayName": "String",
  "userFlowAttributeType": "String",
  "dataType": "String",
  "inputType": "String",
  "label": "String",
  "required": "Boolean",
  "hidden": "Boolean",
  "editable": "Boolean",
  "writeToDirectory": "Boolean",
  "defaultValue": "String",
  "validationRegEx": "String",
  "options": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionOptionConfiguration"
    }
  ]
}
```
