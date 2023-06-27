---
title: "protectionRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# protectionRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List protectionRules](../api/security-protectionrule-list.md)|[microsoft.graph.security.protectionRule](../resources/security-protectionrule.md) collection|Get a list of the [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md) objects and their properties.|
|[Get protectionRule](../api/security-protectionrule-get.md)|[microsoft.graph.security.protectionRule](../resources/security-protectionrule.md)|Read the properties and relationships of a [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md) object.|
|[Update protectionRule](../api/security-protectionrule-update.md)|[microsoft.graph.security.protectionRule](../resources/security-protectionrule.md)|Update the properties of a [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md) object.|
|[Delete protectionRule](../api/security-protectionrule-delete.md)|None|Delete a [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description**|
|lastModifiedBy|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.protectionRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.protectionRule",
  "id": "String (identifier)",
  "displayName": "String",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String"
}
```

