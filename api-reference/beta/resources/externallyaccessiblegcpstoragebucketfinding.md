---
title: "externallyAccessibleGcpStorageBucketFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# externallyAccessibleGcpStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externallyAccessibleGcpStorageBucketFindings](../api/externallyaccessiblegcpstoragebucketfinding-list.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) collection|Get a list of the [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects and their properties.|
|[Get externallyAccessibleGcpStorageBucketFinding](../api/externallyaccessiblegcpstoragebucketfinding-get.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md)|Read the properties and relationships of an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object.|
|[Update externallyAccessibleGcpStorageBucketFinding](../api/externallyaccessiblegcpstoragebucketfinding-update.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md)|Update the properties of an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object.|
|[Delete externallyAccessibleGcpStorageBucketFinding](../api/externallyaccessiblegcpstoragebucketfinding-delete.md)|None|Delete an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object.|
|[List authorizationSystemResource](../api/externallyaccessiblegcpstoragebucketfinding-list-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the storageBucket navigation property.|
|[Add authorizationSystemResource](../api/externallyaccessiblegcpstoragebucketfinding-post-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add storageBucket by posting to the storageBucket collection.|
|[Remove authorizationSystemResource](../api/externallyaccessiblegcpstoragebucketfinding-delete-storagebucket.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

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
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externallyAccessibleGcpStorageBucketFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externallyAccessibleGcpStorageBucketFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String",
  "encryptionManagedBy": "String"
}
```

