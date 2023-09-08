---
title: "externallyAccessibleAwsStorageBucketFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# externallyAccessibleAwsStorageBucketFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externallyAccessibleAwsStorageBucketFindings](../api/externallyaccessibleawsstoragebucketfinding-list.md)|[externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) collection|Get a list of the [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) objects and their properties.|
|[Get externallyAccessibleAwsStorageBucketFinding](../api/externallyaccessibleawsstoragebucketfinding-get.md)|[externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md)|Read the properties and relationships of an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object.|
|[Update externallyAccessibleAwsStorageBucketFinding](../api/externallyaccessibleawsstoragebucketfinding-update.md)|[externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md)|Update the properties of an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object.|
|[Delete externallyAccessibleAwsStorageBucketFinding](../api/externallyaccessibleawsstoragebucketfinding-delete.md)|None|Delete an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object.|
|[List authorizationSystemResource](../api/externallyaccessibleawsstoragebucketfinding-list-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the storageBucket navigation property.|
|[Add authorizationSystemResource](../api/externallyaccessibleawsstoragebucketfinding-post-storagebucket.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add storageBucket by posting to the storageBucket collection.|
|[Remove authorizationSystemResource](../api/externallyaccessibleawsstoragebucketfinding-delete-storagebucket.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|awsAccessType|**TODO: Add Description**.The possible values are: `public`, `restricted`, `crossAccount`, `private`, `unknownFutureValue`.|
|accountsWithAccess|[accountsWithAccess](../resources/accountswithaccess.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
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

