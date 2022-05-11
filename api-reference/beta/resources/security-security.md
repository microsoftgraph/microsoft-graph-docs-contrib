---
title: "security resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securities](../api/user-list-security.md)|[microsoft.graph.security.security](../resources/security-security.md) collection|Get a list of the [security](../resources/security-security.md) objects and their properties.|
|[Create security](../api/user-post-security.md)|[microsoft.graph.security.security](../resources/security-security.md)|Create a new [security](../resources/security-security.md) object.|
|[Get security](../api/security-security-get.md)|[microsoft.graph.security.security](../resources/security-security.md)|Read the properties and relationships of a [security](../resources/security-security.md) object.|
|[Update security](../api/security-security-update.md)|[microsoft.graph.security.security](../resources/security-security.md)|Update the properties of a [security](../resources/security-security.md) object.|
|[Delete security](../api/user-delete-security.md)|None|Deletes a [security](../resources/security-security.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|informationProtection|[informationProtection](../resources/security-informationprotection.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.security",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.security",
  "id": "String (identifier)"
}
```

