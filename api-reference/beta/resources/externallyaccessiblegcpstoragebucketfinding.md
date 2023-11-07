---
title: "externallyAccessibleGcpStorageBucketFinding resource type"
description: "Represents the findings for externally accessible Gcp storage buckets."
author: "ashyasingh"
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
|[List externallyAccessibleGcpStorageBucketFindings](../api/externallyaccessiblegcpstoragebucketfinding-list.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) collection|Get a list of the [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects and their properties.|
|[Get externallyAccessibleGcpStorageBucketFinding](../api/externallyaccessiblegcpstoragebucketfinding-get.md)|[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md)|Read the properties and relationships of an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|gcpAccessType|Gcp resources access type.The possible values are: `public`, `subjectToObjectAcls`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|gcpEncryption|Specifies who manages encryption of Gcp storage buckets.The possible values are: `google`, `customer`, `unknownFutureValue`.|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniquenessInherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageBucket|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an authorization system|

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

