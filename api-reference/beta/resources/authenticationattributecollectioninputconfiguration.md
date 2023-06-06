---
title: "authenticationAttributeCollectionInputConfiguration resource type"
description: "Represents the configuration of attributes being collected on an attribute collection page that is part of a self-service user flow for external identities."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationAttributeCollectionInputConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the display configuration of attributes being collected on an attribute collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attribute|String|The built-in or custom attribute for which a value is being collected.|
|defaultValue|String|The default value of the attribute displayed to the end user.|
|editable|Boolean|Whether the attribute is editable by the end user. |
|hidden|Boolean|Whether the attribute is displayed to the end user.|
|inputType|authenticationAttributeCollectionInputType|The type of input field. The possible values are: `text`, `radioSingleSelect`, `checkboxMultiSelect`, `boolean`, `checkboxSingleSelect`, `unknownFutureValue`.|
|label|String|The label of the attribute field that will be displayed to end user, unless overridden.|
|options|[authenticationAttributeCollectionOptionConfiguration](../resources/authenticationattributecollectionoptionconfiguration.md) collection|The option values for certain multiple-option input types.|
|required|Boolean|Whether the field is required.|
|validationRegEx|String|The regex for the value of the field.|
|writeToDirectory|Boolean|Whether the value collected will be stored.|

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

