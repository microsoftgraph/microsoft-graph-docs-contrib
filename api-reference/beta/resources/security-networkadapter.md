description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# networkAdapter resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-sensorsettings-list-networkadapters.md)|[microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) collection|Get a list of the [microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) objects and their properties.|
|[Create](../api/security-sensorsettings-post-networkadapters.md)|[microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md)|Create a new [microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) object.|
|[Get](../api/security-networkadapter-get.md)|[microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md)|Read the properties and relationships of a [microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) object.|
|[Update](../api/security-networkadapter-update.md)|[microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md)|Update the properties of a [microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) object.|
|[Delete](../api/security-sensorsettings-delete-networkadapters.md)|None|Delete a [microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.networkAdapter",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.networkAdapter",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "name": "String"
}
```