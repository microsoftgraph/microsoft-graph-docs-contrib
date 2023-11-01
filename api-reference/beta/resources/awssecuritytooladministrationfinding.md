---
title: "awsSecurityToolAdministrationFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsSecurityToolAdministrationFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsSecurityToolAdministrationFindings](../api/awssecuritytooladministrationfinding-list.md)|[awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) collection|Get a list of the [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) objects and their properties.|
|[Get awsSecurityToolAdministrationFinding](../api/awssecuritytooladministrationfinding-get.md)|[awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md)|Read the properties and relationships of an [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) object.|
|[Update awsSecurityToolAdministrationFinding](../api/awssecuritytooladministrationfinding-update.md)|[awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md)|Update the properties of an [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) object.|
|[Delete awsSecurityToolAdministrationFinding](../api/awssecuritytooladministrationfinding-delete.md)|None|Delete an [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) object.|
|[List authorizationSystemIdentity](../api/awssecuritytooladministrationfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/awssecuritytooladministrationfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/awssecuritytooladministrationfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description**|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|
|securityTools|awsSecurityToolWebServices|**TODO: Add Description**.The possible values are: `macie`, `wafShield`, `cloudTrail`, `inspector`, `securityHub`, `detective`, `guardDuty`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsSecurityToolAdministrationFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsSecurityToolAdministrationFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "securityTools": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

