---
title: "secretInformationAccessAwsRoleFinding resource type"
description: "*View AWS identities that have privileges to read, modify, or delete secret information."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# secretInformationAccessAwsRoleFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View AWS identities that have privileges to read, modify, or delete secret information.


Inherits from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List secretInformationAccessAwsRoleFinding objects](../api/secretinformationaccessawsrolefinding-list.md)|[secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) collection|Get a list of the [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) objects and their properties.|
|[Get secretInformationAccessAwsRoleFinding](../api/secretinformationaccessawsrolefinding-get.md)|[secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md)|Read the properties and relationships of a [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|Defines the last time the identity in this finding executed an authorization system action. Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`. Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).|
|secretInformationWebServices|awsSecretInformationWebServices|*WS secret stores which can be accessed by the user, role, resource or serverless function Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).The possible values are: `secretsManager`, `certificateAuthority`, `cloudHsm`, `certificateManager`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system onboarded to Permissions Management. Inherited from [identityFinding](../resources/identityfinding.md). Autoexpanded by default.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.secretInformationAccessAwsRoleFinding",
  "baseType": "microsoft.graph.awsSecretInformationAccessFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.secretInformationAccessAwsRoleFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "secretInformationWebServices": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

