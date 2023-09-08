---
title: "secretInformationAccessAwsServerlessFunctionFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# secretInformationAccessAwsServerlessFunctionFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List secretInformationAccessAwsServerlessFunctionFindings](../api/secretinformationaccessawsserverlessfunctionfinding-list.md)|[secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) collection|Get a list of the [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) objects and their properties.|
|[Get secretInformationAccessAwsServerlessFunctionFinding](../api/secretinformationaccessawsserverlessfunctionfinding-get.md)|[secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md)|Read the properties and relationships of a [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) object.|
|[Update secretInformationAccessAwsServerlessFunctionFinding](../api/secretinformationaccessawsserverlessfunctionfinding-update.md)|[secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md)|Update the properties of a [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) object.|
|[Delete secretInformationAccessAwsServerlessFunctionFinding](../api/secretinformationaccessawsserverlessfunctionfinding-delete.md)|None|Delete a [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) object.|
|[List authorizationSystemIdentity](../api/secretinformationaccessawsserverlessfunctionfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/secretinformationaccessawsserverlessfunctionfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/secretinformationaccessawsserverlessfunctionfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

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
  "@odata.type": "microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding",
  "baseType": "microsoft.graph.awsSecretInformationAccessFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "secretInformationWebServices": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

