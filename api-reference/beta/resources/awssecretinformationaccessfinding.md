---
title: "awsSecretInformationAccessFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsSecretInformationAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsSecretInformationAccessFindings](../api/awssecretinformationaccessfinding-list.md)|[awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) collection|Get a list of the [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) objects and their properties.|
|[Get awsSecretInformationAccessFinding](../api/awssecretinformationaccessfinding-get.md)|[awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md)|Read the properties and relationships of an [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) object.|
|[Update awsSecretInformationAccessFinding](../api/awssecretinformationaccessfinding-update.md)|[awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md)|Update the properties of an [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) object.|
|[Delete awsSecretInformationAccessFinding](../api/awssecretinformationaccessfinding-delete.md)|None|Delete an [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) object.|
|[List authorizationSystemIdentity](../api/awssecretinformationaccessfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/awssecretinformationaccessfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/awssecretinformationaccessfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description**|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|
|secretInformationWebServices|awsSecretInformationWebServices|**TODO: Add Description**.The possible values are: `secretsManager`, `certificateAuthority`, `cloudHsm`, `certificateManager`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsSecretInformationAccessFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsSecretInformationAccessFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "secretInformationWebServices": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

