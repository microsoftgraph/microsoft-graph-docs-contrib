---
title: "authorizationSystemIdentity resource type"
description: "A container representing an identity in an authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container representing an identity in an authorization system.

Inherits from [entity](../resources/entity.md).

The following resource types inherit from this object:

- [awsIdentity](../resources/awsidentity.md) resource type
- [azureIdentity](../resources/azureidentity.md) resource type
- [gcpIdentity](../resources/gcpidentity.md) resource type

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the identity. Read-only. Supports `$filter` and (`eq`,`contains`).|
|externalId|String|Unique ID of the identity within the external system. Read-only.|
|id|String|ID for the identity within Permissions Management. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)| Represents details of the source of the identity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Navigation to the authorizationSystem object|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystemIdentity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```
