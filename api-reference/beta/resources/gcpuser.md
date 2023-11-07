---
title: "gcpUser resource type"
description: "Represents the findings for GCP users."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gcpUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for GCP users.

Inherits from [gcpIdentity](../resources/gcpidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpUsers](../api/gcpuser-list.md)|[gcpUser](../resources/gcpuser.md) collection|Get a list of the [gcpUser](../resources/gcpuser.md) objects and their properties.|
|[Get gcpUser](../api/gcpuser-get.md)|[gcpUser](../resources/gcpuser.md)|Read the properties and relationships of a [gcpUser](../resources/gcpuser.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The externally displayed ID of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentityresource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpUser",
  "baseType": "microsoft.graph.gcpIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpUser",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

