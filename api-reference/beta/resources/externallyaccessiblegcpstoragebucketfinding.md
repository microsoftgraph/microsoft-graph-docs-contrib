---
title: "externallyAccessibleGcpStorageBucketFinding resource type"
description: "Represents the findings for externally accessible GCP storage buckets."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# externallyAccessibleGcpStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get insights into the GCP storage buckets that are accessible externally. 

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externallyAccessibleGcpStorageBucketFinding objects](../api/externallyaccessiblegcpstoragebucketfinding-list.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) collection|Get a list of the [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects and their properties.|
|[Get externallyAccessibleGcpStorageBucketFinding](../api/externallyaccessiblegcpstoragebucketfinding-get.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md)|Read the properties and relationships of an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|gcpAccessType|GCP resources access type. The possible values are: `public`, `subjectToObjectAcls`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|gcpEncryption|Specifies who manages encryption of GCP storage buckets.The possible values are: `google`, `customer`, `unknownFutureValue`.|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageBucket|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an GCP authorization system.|

## JSON representation
The following JSON representation shows the resource type.
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

