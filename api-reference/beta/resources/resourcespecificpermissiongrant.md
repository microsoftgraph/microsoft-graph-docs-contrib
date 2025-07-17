---
title: "resourceSpecificPermissionGrant resource type"
description: "Specifies the permission that a specific Microsoft Entra app has."
author: "AkJo"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/04/2024
---

# resourceSpecificPermissionGrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Declares the permission that has been granted to a specific Microsoft Entra app for an instance of a resource in Microsoft Graph.

For more information about granting apps consent to access a specific instance of a resource, see [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## Methods

|  Method                                                                   |  Return Type                                                                     | Description                                                  | 
| :------------------------------------------------------------------------ | :------------------------------------------------------------------------------- | :----------------------------------------------------------- |
|[List permission grants of a chat](../api/chat-list-permissiongrants.md)   | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List resource-specific permissions that have been granted in a specific [chat](chat.md).  |
|[List permission grants of a group](../api/group-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List resource-specific permissions that have been granted in a specific [group](group.md). |
|[List permission grants of a team](../api/team-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List resource-specific permissions that have been granted in a specific [team](team.md). |
|[List permission grants of a user](../api/user-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List resource-specific permissions that have been granted to a specific [user](user.md). |

## Properties

| Property        | Type          | Description                                                                           |
| :-------------- | :------------ | :------------------------------------------------------------------------------------ |
| id              | string        | The unique identifier of the resource-specific permission grant. Read-only.           |
| deletedDateTime | dateTimeOffset| Not used.                                                                             |
| clientId        | string        | ID of the Microsoft Entra app that has been granted access. Read-only.                            |
| clientAppId     | string        | ID of the service principal of the Microsoft Entra app that has been granted access. Read-only.   |
| resourceAppId   | string        | ID of the Microsoft Entra app that is hosting the resource. Read-only.                        |
| permissionType  | string        | The type of permission. Possible values are: `Application`, `Delegated`. Read-only. |
| permission      | string        | The name of the resource-specific permission. Read-only.                                                |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourceSpecificPermissionGrant"
}-->

```json
{
  "id": "string (identifier)",
  "deletedDateTime": "dateTimeOffset",
  "clientId": "string",
  "clientAppId": "string",
  "resourceAppId": "string",
  "permissionType": "string",
  "permission": "string"
}
```
