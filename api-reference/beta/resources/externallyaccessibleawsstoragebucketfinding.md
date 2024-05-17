---
title: "externallyAccessibleAwsStorageBucketFinding resource type"
description: "Get insight into the AWS S3 buckets accessible externally in your environment."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# externallyAccessibleAwsStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get insights into AWS S3 buckets that are accessible externally.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externallyAccessibleAwsStorageBucketFinding objects](../api/externallyaccessibleawsstoragebucketfinding-list.md)|[externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) collection|Get a list of the [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) objects and their properties.|
|[Get externallyAccessibleAwsStorageBucketFinding](../api/externallyaccessibleawsstoragebucketfinding-get.md)|[externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md)|Read the properties and relationships of an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|awsAccessType|Aws resources access type.The possible values are: `public`, `restricted`, `crossAccount`, `private`, `unknownFutureValue`.|
|accountsWithAccess|[accountsWithAccess](../resources/accountswithaccess.md)|Contains information on external Aws accounts that have access to a storage bucket|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageBucket|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an authorization system|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externallyAccessibleAwsStorageBucketFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externallyAccessibleAwsStorageBucketFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String",
  "accountsWithAccess": {
    "@odata.type": "microsoft.graph.accountsWithAccess"
  }
}
```

