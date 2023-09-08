---
title: "awsExternalSystemAccessFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsExternalSystemAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsExternalSystemAccessFindings](../api/awsexternalsystemaccessfinding-list.md)|[awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) collection|Get a list of the [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) objects and their properties.|
|[Get awsExternalSystemAccessFinding](../api/awsexternalsystemaccessfinding-get.md)|[awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md)|Read the properties and relationships of an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object.|
|[Update awsExternalSystemAccessFinding](../api/awsexternalsystemaccessfinding-update.md)|[awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md)|Update the properties of an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object.|
|[Delete awsExternalSystemAccessFinding](../api/awsexternalsystemaccessfinding-delete.md)|None|Delete an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object.|
|[List authorizationSystem](../api/awsexternalsystemaccessfinding-list-affectedsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the affectedSystem navigation property.|
|[Add authorizationSystem](../api/awsexternalsystemaccessfinding-post-affectedsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add affectedSystem by posting to the affectedSystem collection.|
|[Remove authorizationSystem](../api/awsexternalsystemaccessfinding-delete-affectedsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessMethods|externalSystemAccessMethods|**TODO: Add Description**.The possible values are: `direct`, `roleChaining`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|systemWithAccess|[authorizationSystemInfo](../resources/authorizationsysteminfo.md)|**TODO: Add Description**|
|trustedIdentityCount|Int32|**TODO: Add Description**|
|trustsAllIdentities|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|affectedSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsExternalSystemAccessFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsExternalSystemAccessFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "trustsAllIdentities": "Boolean",
  "accessMethods": "String",
  "trustedIdentityCount": "Integer",
  "systemWithAccess": {
    "@odata.type": "microsoft.graph.authorizationSystemInfo"
  }
}
```

