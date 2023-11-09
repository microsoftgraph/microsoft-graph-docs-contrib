---
title: "permissionsManagement resource type"
description: "The base container for the relationships that define the requests for permissions in an authorization system that you've onboarded to Microsoft Entra Permissions Management."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base container for the relationships that define the requests for permissions in an authorization system that you've onboarded to Microsoft Entra Permissions Management.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|permissionsRequestChanges|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Represents the change events of the scheduledPermissionsRequest entity.|
|scheduledPermissionsRequest|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Represents the requests for permissions on resources in a target authorization system.|

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

