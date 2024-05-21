---
title: "awsExternalSystemAccessFinding resource type"
description: "Represents findings related to external accounts that are able to access a given AWS account."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsExternalSystemAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings related to external accounts that are able to access a given AWS account.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsExternalSystemAccessFinding objects](../api/awsexternalsystemaccessfinding-list.md)|[awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) collection|Get a list of the [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) objects and their properties.|
|[Get awsExternalSystemAccessFinding](../api/awsexternalsystemaccessfinding-get.md)|[awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md)|Read the properties and relationships of an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessMethods|externalSystemAccessMethods|Specifies if the system can be accessed directly, via role chaining, or both. The possible values are: `direct`, `roleChaining`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|systemWithAccessId|string|The account ID for the external system that is able to access the given system.|
|systemWithAccess|[authorizationSystemInfo](../resources/authorizationsysteminfo.md)|The external system that is able to access the given system.|
|trustedIdentityCount|Int32|The number of identities in the external system that are trusted, if not all. Supports `$orderby`.|
|trustsAllIdentities|Boolean|Flag that determines if all identities in the external system are trusted, or only a subset.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|affectedSystem|[authorizationSystem](../resources/authorizationsystem.md)|The system that can be accessed from an external system. Supports `$orderby` (`affectedSystem/authorizationSystemName`) and `$filter` as follows: `$filter=affectedSystem/authorizationSystemId IN ['authorizationSystemIds']`|

## JSON representation
The following JSON representation shows the resource type.
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

