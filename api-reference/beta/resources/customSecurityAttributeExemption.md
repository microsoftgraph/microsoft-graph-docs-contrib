---
title: "customSecurityAttributeExemption resource type"
description: "Configuration object to configure a custom security attribute exemption for a restriction on application management policies."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customSecurityAttributeExemption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure a custom security attribute exemption for a restriction on application management policies.

## Properties
| Property                  | Type                                           | Description                 |
| :-------------------------| :--------------------------------------------- | :-------------------------- |
| id                        | string                                         | Unique identifier with combination of the custom security attrbiute set name and attribute name. e.g. `AttributeSetName_AttributeName` |
| operator                  | customSecurityAttributeComparisonOperator      | If `equals`, the customSecurityAttributeExemption value will be compared to match custom security attribute value for the exemption to be applied.|

## Relationships
Inherited by [customSecurityAttributeStringValueExemption](customSecurityAttributeStringValueExemption.md).

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
  "operator": "String"
}
```
