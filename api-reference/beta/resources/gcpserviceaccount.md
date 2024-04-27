---
title: "gcpServiceAccount resource type"
description: "Represents GCP service accounts."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# gcpServiceAccount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents GCP service accounts.

Inherits from [gcpIdentity](../resources/gcpidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpServiceAccounts](../api/gcpassociatedidentities-list-serviceaccounts.md)|[gcpServiceAccount](../resources/gcpserviceaccount.md) collection|Get a list of the [gcpServiceAccount](../resources/gcpserviceaccount.md) objects and their properties.|
|[Get gcpServiceAccount](../api/gcpserviceaccount-get.md)|[gcpServiceAccount](../resources/gcpserviceaccount.md)|Read the properties and relationships of a [gcpServiceAccount](../resources/gcpserviceaccount.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` and (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The ID for the service account as defined by GCP. Supports `$filter` and `eq`. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|The ID for the service account in Permissions Management. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpServiceAccount",
  "baseType": "microsoft.graph.gcpIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpServiceAccount",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

