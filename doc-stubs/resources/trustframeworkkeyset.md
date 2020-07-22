---
title: "trustFrameworkKeySet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# trustFrameworkKeySet resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trustFrameworkKeySets](../api/trustframeworkkeyset-list.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md) collection|Get a list of the [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) objects and their properties.|
|[Create trustFrameworkKeySet](../api/trustframeworkkeyset-create.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Create a new [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Get trustFrameworkKeySet](../api/trustframeworkkeyset-get.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Read the properties and relationships of a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Update trustFrameworkKeySet](../api/trustframeworkkeyset-update.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Update the properties of a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Delete trustFrameworkKeySet](../api/trustframeworkkeyset-delete.md)|None|Deletes a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[generateKey](../api/trustframeworkkeyset-generatekey.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|**TODO: Add Description**|
|[uploadSecret](../api/trustframeworkkeyset-uploadsecret.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|**TODO: Add Description**|
|[getActiveKey](../api/trustframeworkkeyset-getactivekey.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|**TODO: Add Description**|
|[uploadCertificate](../api/trustframeworkkeyset-uploadcertificate.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|**TODO: Add Description**|
|[uploadPkcs12](../api/trustframeworkkeyset-uploadpkcs12.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|keys|[trustFrameworkKey](../resources/trustframeworkkey.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trustFrameworkKeySet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustFrameworkKeySet",
  "id": "String (identifier)",
  "keys": [
    {
      "@odata.type": "microsoft.graph.trustFrameworkKey"
    }
  ]
}
```

