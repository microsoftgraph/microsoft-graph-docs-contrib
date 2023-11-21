---
title: "encryptedAwsStorageBucketFinding resource type"
description: "Represents the findings for AWS encrypted storage buckets."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# encryptedAwsStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for AWS encrypted storage buckets.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List encryptedAwsStorageBucketFinding objects](../api/encryptedawsstoragebucketfinding-list.md)|[encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) collection|Get a list of the [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) objects and their properties.|
|[Get encryptedAwsStorageBucketFinding](../api/encryptedawsstoragebucketfinding-get.md)|[encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md)|Read the properties and relationships of an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|awsAccessType|Aws resources access type. The possible values are: `public`, `restricted`, `crossAccount`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageBucket|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an AWS authorization system.|

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

