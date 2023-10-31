---
title: "secretInformationAccessAwsServerlessFunctionFinding resource type"
description: "View AWS identities that have privileges to read, modify, or delete secret information."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# secretInformationAccessAwsServerlessFunctionFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View AWS identities that have privileges to read, modify, or delete secret information.


Inherits from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List secretInformationAccessAwsServerlessFunctionFindings](../api/secretinformationaccessawsserverlessfunctionfinding-list.md)|[secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) collection|Get a list of the [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) objects and their properties.|
|[Get secretInformationAccessAwsServerlessFunctionFinding](../api/secretinformationaccessawsserverlessfunctionfinding-get.md)|[secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md)|Read the properties and relationships of a [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset| Inherited from [finding](../resources/finding.md).|
|id|String| Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding accessed a secret store Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).|
|secretInformationWebServices|awsSecretInformationWebServices|*WS secret stores which can be accessed by the user, role, resource or serverless function Inherited from [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md).The possible values are: `secretsManager`, `certificateAuthority`, `cloudHsm`, `certificateManager`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization systemInherited from [microsoft.graph.awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md)|

## JSON representation
The following JSON representation shows the resource type.
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

