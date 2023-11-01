---
title: "encryptedAwsStorageBucketFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# encryptedAwsStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List encryptedAwsStorageBucketFindings](../api/encryptedawsstoragebucketfinding-list.md)|[encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) collection|Get a list of the [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) objects and their properties.|
|[Get encryptedAwsStorageBucketFinding](../api/encryptedawsstoragebucketfinding-get.md)|[encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md)|Read the properties and relationships of an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object.|
|[Update encryptedAwsStorageBucketFinding](../api/encryptedawsstoragebucketfinding-update.md)|[encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md)|Update the properties of an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object.|
|[Delete encryptedAwsStorageBucketFinding](../api/encryptedawsstoragebucketfinding-delete.md)|None|Delete an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object.|
|[List authorizationSystemResource](../api/encryptedawsstoragebucketfinding-list-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the storageBucket navigation property.|
|[Add authorizationSystemResource](../api/encryptedawsstoragebucketfinding-post-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add storageBucket by posting to the storageBucket collection.|
|[Remove authorizationSystemResource](../api/encryptedawsstoragebucketfinding-delete-storagebucket.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|awsAccessType|**TODO: Add Description**.The possible values are: `public`, `restricted`, `crossAccount`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageBucket|[authorizationSystemResource](../resources/authorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.encryptedAwsStorageBucketFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.encryptedAwsStorageBucketFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String"
}
```

