---
title: "secretInformationAccessAwsResourceFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# secretInformationAccessAwsResourceFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List secretInformationAccessAwsResourceFindings](../api/secretinformationaccessawsresourcefinding-list.md)|[secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) collection|Get a list of the [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) objects and their properties.|
|[Get secretInformationAccessAwsResourceFinding](../api/secretinformationaccessawsresourcefinding-get.md)|[secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md)|Read the properties and relationships of a [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) object.|
|[Update secretInformationAccessAwsResourceFinding](../api/secretinformationaccessawsresourcefinding-update.md)|[secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md)|Update the properties of a [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) object.|
|[Delete secretInformationAccessAwsResourceFinding](../api/secretinformationaccessawsresourcefinding-delete.md)|None|Delete a [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) object.|
|[List authorizationSystemIdentity](../api/secretinformationaccessawsresourcefinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/secretinformationaccessawsresourcefinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/secretinformationaccessawsresourcefinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description** Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).|
|secretInformationWebServices|awsSecretInformationWebServices|**TODO: Add Description** Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).The possible values are: `secretsManager`, `certificateAuthority`, `cloudHsm`, `certificateManager`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.secretInformationAccessAwsResourceFinding",
  "baseType": "microsoft.graph.awsSecretInformationAccessFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.secretInformationAccessAwsResourceFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "secretInformationWebServices": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

