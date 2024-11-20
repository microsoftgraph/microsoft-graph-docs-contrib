---
title: "customSecurityAttributeExemption resource type"
description: "Configuration object to configure a custom security attribute exemption for a restriction on application management policies."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/17/2024
---

# customSecurityAttributeExemption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure a custom security attribute exemption for a restriction on application management policies.
This is an abstract type.


Inherits from [entity](../resources/entity.md).

<!-- The direct access methods are not functional in the underlying Service. Excluding them until they are operational.
## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/appmanagementpolicyactorexemptions-list-customsecurityattributes.md)|[customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) collection|Get a list of the [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) objects and their properties.|
|[Create](../api/appmanagementpolicyactorexemptions-post-customsecurityattributes.md)|[customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md)|Create a new [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) object.|
|[Get](../api/customsecurityattributeexemption-get.md)|[customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md)|Read the properties and relationships of a [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) object.|
|[Update](../api/customsecurityattributeexemption-update.md)|[customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md)|Update the properties of a [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) object.|
|[Delete](../api/appmanagementpolicyactorexemptions-delete-customsecurityattributes.md)|None|Delete a [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) object.|
-->

## Properties
| Property                  | Type                                           | Description                 |
| :-------------------------| :--------------------------------------------- | :-------------------------- |
| id                        | String                                         | Unique identifier with combination of the custom security attribute set name and attribute name. For example, `AttributeSetName_AttributeName`. Inherited from [entity](../resources/entity.md). |
| operator                  | customSecurityAttributeComparisonOperator      | The possible values are: `equals`, `unknownFutureValue`. If `equals`, the customSecurityAttributeExemption value is compared to match the custom security attribute value for the exemption to be applied. The comparison is case sensitive. |

## Relationships
Inherited by [customSecurityAttributeStringValueExemption](customSecurityAttributeStringValueExemption.md).

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customSecurityAttributeExemption",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customSecurityAttributeExemption",
  "id": "String (identifier)",
  "operator": "String"
}
```
