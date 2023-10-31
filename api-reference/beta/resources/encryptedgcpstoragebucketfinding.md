---
title: "encryptedGcpStorageBucketFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# encryptedGcpStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List encryptedGcpStorageBucketFindings](../api/encryptedgcpstoragebucketfinding-list.md)|[encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) collection|Get a list of the [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) objects and their properties.|
|[Get encryptedGcpStorageBucketFinding](../api/encryptedgcpstoragebucketfinding-get.md)|[encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md)|Read the properties and relationships of an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object.|
|[Update encryptedGcpStorageBucketFinding](../api/encryptedgcpstoragebucketfinding-update.md)|[encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md)|Update the properties of an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object.|
|[Delete encryptedGcpStorageBucketFinding](../api/encryptedgcpstoragebucketfinding-delete.md)|None|Delete an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object.|
|[List authorizationSystemResource](../api/encryptedgcpstoragebucketfinding-list-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the storageBucket navigation property.|
|[Add authorizationSystemResource](../api/encryptedgcpstoragebucketfinding-post-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add storageBucket by posting to the storageBucket collection.|
|[Remove authorizationSystemResource](../api/encryptedgcpstoragebucketfinding-delete-storagebucket.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|gcpAccessType|**TODO: Add Description**.The possible values are: `public`, `subjectToObjectAcls`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|gcpEncryption|**TODO: Add Description**.The possible values are: `google`, `customer`, `unknownFutureValue`.|
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
  "@odata.type": "microsoft.graph.encryptedGcpStorageBucketFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.encryptedGcpStorageBucketFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String",
  "encryptionManagedBy": "String"
}
```

