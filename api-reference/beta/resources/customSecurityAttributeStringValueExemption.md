---
title: "customSecurityAttributeStringValueExemption resource type"
description: "Configuration object to configure a custom security attribute string value exemption for a restriction on application management policies."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customSecurityAttributeStringValueExemption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure a custom security attribute exemption for a restriction on application management policies.

## Properties
| Property                  | Type                                           | Description                 |
| :-------------------------| :--------------------------------------------- | :-------------------------- |
| id                        | string                                         | Unique identifier with combination of the custom security attrbiute set name and attribute name. e.g. `AttributeSetName_AttributeName` |
| operator                  | customSecurityAttributeComparisonOperator      | If `equals`, the customSecurityAttributeExemption value will be compared to match custom security attribute value for the exemption to be applied.|
| value                     | string                                         | Value representing custom security attribute value to compare against while evaluating the exemption .|

## Relationships
Inherits from [customSecurityAttributeExemption](customSecurityAttributeExemption.md).

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customSecurityAttributeStringValueExemption"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customSecurityAttributeStringValueExemption",
  "id": "String",
  "operator": "String",
  "value": "String"
}
```
