---
title: "crossTenantIdentitySyncPolicyPartner resource type"
description: "Defines the cross-tenant policy for synchronization of users from a partner tenant."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Partner user sync settings
ms.date: 07/22/2024
---

# crossTenantIdentitySyncPolicyPartner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the cross-tenant policy for synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.

Inherits from [policyDeletableItem](../resources/policydeletableitem.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/crosstenantaccesspolicyconfigurationpartner-put-identitysynchronization.md)|None|Create a cross-tenant user synchronization policy for a partner-specific configuration.|
|[Get](../api/crosstenantidentitysyncpolicypartner-get.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Get the user synchronization policy of a partner-specific configuration.|
|[Update](../api/crosstenantidentitysyncpolicypartner-update.md)|None|Update the user synchronization policy of a partner-specific configuration.|
|[Delete](../api/crosstenantidentitysyncpolicypartner-delete.md)|None|Delete the user synchronization policy for a partner-specific configuration.|
| [List deleted policies](../api/policydeletableitem-list.md) | [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) collection| List all deleted partner-specific configuration policies. |
| [Get deleted policy](../api/policydeletableitem-get.md) | [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) | Get a single deleted partner-specific configuration policy. |
| [Permanently delete deleted policy](../api/policydeletableitem-delete.md) | None | Permanently delete a deleted partner-specific configuration policy. |
|[Restore deleted policy](../api/crosstenantidentitysyncpolicypartner-restore.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Restore the user synchronization policy for a partner-specific configuration.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Shows the last date and time the policy was deleted.|
|displayName|String|Display name for the cross-tenant user synchronization policy. Use the name of the partner Microsoft Entra tenant to easily identify the policy. Optional.|
|groupSyncInbound|[crossTenantGroupSyncInbound](../resources/crosstenantgroupsyncinbound.md)|Defines whether groups can be synchronized from a partner tenant. Key.|
|tenantId|String|Tenant identifier for the partner Microsoft Entra organization. Read-only.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Defines whether users can be synchronized from the partner tenant. Key. |

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "externalCloudAuthorizedApplicationId": "String",
  "groupSyncInbound": {"@odata.type": "microsoft.graph.crossTenantGroupSyncInbound"},
  "tenantId": "String (identifier)",
  "userSyncInbound": {"@odata.type": "microsoft.graph.crossTenantUserSyncInbound"}
}
```
