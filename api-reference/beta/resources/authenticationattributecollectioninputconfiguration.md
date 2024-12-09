---
title: "authenticationAttributeCollectionInputConfiguration resource type"
description: "Represents the configuration of attributes being collected on an attribute collection page that is part of a self-service user flow for external identities."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# authenticationAttributeCollectionInputConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the display configuration of attributes being collected on an attribute collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attribute|String|The built-in or custom attribute for which a value is being collected.|
|defaultValue|String|The default value of the attribute displayed to the end user. The capability to set the default value isn't available through the Microsoft Entra admin center.|
|editable|Boolean|Defines whether the attribute is editable by the end user. |
|hidden|Boolean|Defines whether the attribute is displayed to the end user. The capability to hide isn't available through the Microsoft Entra admin center.|
|inputType|authenticationAttributeCollectionInputType|The type of input field. The possible values are: `text`, `radioSingleSelect`, `checkboxMultiSelect`, `boolean`, `checkboxSingleSelect`, `unknownFutureValue`.|
|label|String|The label of the attribute field that's displayed to end user, unless overridden.|
|options|[authenticationAttributeCollectionOptionConfiguration](../resources/authenticationattributecollectionoptionconfiguration.md) collection|The option values for certain multiple-option input types.|
|required|Boolean|Defines whether the field is required.|
|validationRegEx|String|The regex for the value of the field. For more information about the supported regexes, see [validationRegEx values for inputType objects](#validationregex-values-for-inputtype-objects). To understand how to specify regexes, see the [Regular expressions cheat sheet](https://download.microsoft.com/download/D/2/4/D240EBF6-A9BA-4E4F-A63F-AEB6DA0B921C/Regular%20expressions%20quick%20reference.pdf).|
|writeToDirectory|Boolean|Defines whether Microsoft Entra ID stores the value that it collects.|

### validationRegEx values for inputType objects

On the **Custom user attributes** page of the Microsoft Entra admin center, only the **String**, **Int**, and **Boolean** input types are available for custom user attributes. The following table lists the default validationRegEx values for these input types for custom user attributes.

<!--Use a HTTP block because the last two String types are difficult to render using code font inside a table cell. The two challenges are the inner backtick and the pipe -->

```
String - '^.*
String - ^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$
Int    - ^[0-9]+$
String - ^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$
String (email) - ^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$
Boolean - empty object
```

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

<!--
{
  "type": "#page.annotation",
  "description": "authenticationAttributeCollectionInputConfiguration resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: /resources/authenticationattributecollectioninputconfiguration.md:
          Unable to parse code block metadata.
          Unexpected character encountered while parsing value: U. Path '', line 0, position 0."
  ]
}
-->
