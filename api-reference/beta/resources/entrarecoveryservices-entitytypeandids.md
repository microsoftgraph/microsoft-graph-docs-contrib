---
title: "entityTypeAndIds resource type"
description: "Specifies an entity type and a list of entity IDs to scope recovery operations."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# entityTypeAndIds resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies an entity type and a list of entity IDs to scope recovery operations. Used within [recoveryJobEntityNameAndIdsFilter](entrarecoveryservices-recoveryjobentitynameandidsfilter.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entityIds|String collection|The list of entity IDs for the specified entity type.|
|entityType|[microsoft.graph.entraRecoveryServices.resourceTypeName](../resources/enums-entrarecoveryservices.md)|The type of directory entity. The possible values are: `user`, `group`, `conditionalAccessPolicy`, `namedLocationPolicy`, `authenticationMethodPolicy`, `authorizationPolicy`, `authenticationStrengthPolicy`, `application`, `servicePrincipal`, `unknownFutureValue`, `oAuth2PermissionGrant`, `appRoleAssignment`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `oAuth2PermissionGrant`, `appRoleAssignment`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entraRecoveryServices.entityTypeAndIds"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.entityTypeAndIds",
  "entityType": "String",
  "entityIds": [
    "String"
  ]
}
```
