---
title: "permissionGrantPolicy resource type"
description: "Specifies the conditions under which consent can be authorized."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "psignoret"
ms.date: 05/23/2024
---

# permissionGrantPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A permission grant policy is used to specify the conditions under which consent can be granted.

A permission grant policy consists of a list of **includes** condition sets, and a list of **excludes** condition sets. For an event to match a permission grant policy, it must match *at least one* of the **includes** conditions sets, and *none* of the **excludes** condition sets.

For more information, see [Manage app consent policies](/entra/identity/enterprise-apps/manage-app-consent-policies).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List](../api/permissiongrantpolicy-list.md) | [permissionGrantPolicy](permissiongrantpolicy.md) collection | Retrieve a list of permissionGrantPolicy objects. |
|[Create](../api/permissiongrantpolicy-post-permissiongrantpolicies.md)| [permissionGrantPolicy](permissiongrantpolicy.md) | Creates a new permissionGrantPolicy object. |
|[Get](../api/permissiongrantpolicy-get.md) | [permissionGrantPolicy](permissiongrantpolicy.md) |Read properties and relationships of permissionGrantPolicy object.|
|[Update](../api/permissiongrantpolicy-update.md) | [permissionGrantPolicy](permissiongrantpolicy.md)  |Update permissionGrantPolicy object. |
|**Include condition sets**| | |
|[List includes](../api/permissiongrantpolicy-list-includes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Get the condition sets that are *included* in this permission grant policy.|
|[Create in includes](../api/permissiongrantpolicy-post-includes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) | Add a condition set that is *included* from this permission grant policy. |
|[Delete from includes](../api/permissiongrantpolicy-delete-includes.md) | None | Remove a condition set that is *excluded* from this permission grant policy.|
|**Exclude condition sets**| | |
|[List excludes](../api/permissiongrantpolicy-list-excludes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Get the condition sets that are *excluded* in this permission grant policy.|
|[Create in excludes](../api/permissiongrantpolicy-post-excludes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) | Add a condition set that is *excluded* from this permission grant policy. |
|[Delete from excludes](../api/permissiongrantpolicy-delete-excludes.md) | None | Remove a condition set that is *excluded* from this permission grant policy.|

## Properties

| Property     | Type |Description|
|:---------------|:--------|:----------|
| id | String | The unique identifier for the permission grant policy. The **id** prefix `microsoft-` is reserved for built-in permission grant policies, and may not be used in a custom permission grant policy. Only letters, numbers, hyphens (`-`) and underscores (`_`) are allowed. Key. Not nullable. Required on create. Immutable. |
| displayName | String |The display name for the permission grant policy.|
| description |String| The description for the permission grant policy.|
| includes | [permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets that are *included* in this permission grant policy. Automatically expanded on `GET`.|
| excludes |[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets that are *excluded* in this permission grant policy. Automatically expanded on `GET`.|
| includeAllPreApprovedApplications  | Boolean | Set to `true` to create all pre-approval policies in the tenant. Set to `false` to disable all pre-approval policies in the tenant. The default is `false`.|
| resourceScopeType  |String| The resource type the pre-approval policy applies to. Possible values: `team` for [groups](../resources/group.md) and [teams](../resources/team.md), `chat` for [chats](../resources/chat.md), `tenant` for all supported resources in the tenant. Required.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|includes|[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets that are *included* in this permission grant policy. This navigation is automatically expanded on GET. |
|excludes|[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets that are *excluded* in this permission grant policy. This navigation is automatically expanded on GET. |

## JSON representation

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantPolicy"
}-->

```json
{
  "id": "string (identifier)",
  "displayName": "string",
  "description": "string",
  "includes": "collection(microsoft.graph.permissionGrantConditionSet)",
  "excludes": "collection(microsoft.graph.permissionGrantConditionSet)"
}
```
