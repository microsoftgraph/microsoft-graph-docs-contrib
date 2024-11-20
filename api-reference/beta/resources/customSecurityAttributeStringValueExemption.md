---
title: "customSecurityAttributeStringValueExemption resource type"
description: "Configuration object to configure a custom security attribute string value exemption for a restriction on application management policies."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/17/2024
---

# customSecurityAttributeStringValueExemption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure a custom security attribute exemption for a restriction on application management policies.

Inherits from [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md).

<!-- The direct access methods are not functional in the underlying Service. Excluding them until they are operational.
## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/customsecurityattributestringvalueexemption-list.md)|[customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md) collection|Get a list of the [customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md) objects and their properties.|
|[Get](../api/customsecurityattributestringvalueexemption-get.md)|[customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md)|Read the properties and relationships of a [customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md) object.|
|[Update](../api/customsecurityattributestringvalueexemption-update.md)|[customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md)|Update the properties of a [customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md) object.|
|[Delete](../api/customsecurityattributestringvalueexemption-delete.md)|None|Delete a [customSecurityAttributeStringValueExemption](../resources/customsecurityattributestringvalueexemption.md) object.|
-->

## Properties
| Property                  | Type                                           | Description                 |
| :-------------------------| :--------------------------------------------- | :-------------------------- |
| id                        | string                                         | Unique identifier with combination of the custom security attribute set name and attribute name. , `AttributeSetName_AttributeName`. Inherited from [entity](../resources/entity.md). |
| operator                  | customSecurityAttributeComparisonOperator      | Inherited from [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md).The possible values are: `equals`, `unknownFutureValue`. If `equals`, the customSecurityAttributeExemption value is compared to match the custom security attribute value for the exemption to be applied. The comparison is case sensitive. |
| value                     | string                                         | Value representing custom security attribute value to compare against while evaluating the exemption. |

## Relationships
Inherits from [customSecurityAttributeExemption](customSecurityAttributeExemption.md).

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customSecurityAttributeStringValueExemption",
  "baseType": "microsoft.graph.customSecurityAttributeExemption",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customSecurityAttributeStringValueExemption",
  "id": "String (identifier)",
  "operator": "String",
  "value": "String"
}
```
