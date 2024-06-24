---
title: "permissionsManagement resource type"
description: "The base container for the relationships that define the requests for permissions in an authorization system onboarded to Microsoft Entra Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base container for the relationships that define the requests for permissions in an authorization system onboarded to Microsoft Entra Permissions Management.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|permissionsRequestChanges|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Represents a change event of the scheduledPermissionsRequest entity.|
|scheduledPermissionsRequests|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Represents a permissions request that Permissions Management uses to manage permissions for an identity on resources in the authorization system. This request can be granted, rejected or canceled by identities in Permissions Management.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsManagement"
}
```

