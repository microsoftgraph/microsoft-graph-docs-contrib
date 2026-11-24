---
title: "resourcePolicyAssignment resource type"
description: "Represents the assignment of a resource policy definition version to a scope, including parameter values and enforcement settings."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the assignment of a resource policy definition version to a scope, including parameter values and enforcement settings.

An assignment targets a specific definition version through **assignedPolicy**. To move the assignment to another version, update **assignedPolicy.version** on its **policyDefinitionReference** value. The service validates **params** against the referenced definition's **paramsSchema**.

Assignments default to `doNotEnforce`. A policy can report `deny` without blocking a request when enforcement is disabled.

Assignment responses include an `@odata.etag` annotation. For an update, retrieve the current assignment and supply that value in the `If-Match` request header. A stale ETag causes `412 Precondition Failed`; retrieve the latest assignment before retrying. [Upsert](../api/resourcepolicyassignment-upsert.md) uses `Prefer: create-if-missing` to create or update an assignment.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/resourcepolicyroot-list-assignments.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md) collection|List the policy assignments.|
|[Create](../api/resourcepolicyassignment-create.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md)|Assign a policy definition version.|
|[Get](../api/resourcepolicyassignment-get.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md)|Read an active or deleted assignment.|
|[Update](../api/resourcepolicyassignment-update.md)|None|Update an assignment.|
|[Upsert](../api/resourcepolicyassignment-upsert.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md)|Create an assignment, or update it with no response body if it exists.|
|[Delete](../api/resourcepolicyassignment-delete.md)|None|Delete an active assignment.|
|[Permanently delete](../api/resourcepolicydeletableroot-delete-assignments.md)|None|Permanently delete an assignment.|
|[Restore](../api/resourcepolicyassignment-restore.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md)|Restore a deleted assignment.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedPolicy|[assignedPolicyReference](../resources/assignedpolicyreference.md)|The reference to the policy definition and version to assign. Supply a [policyDefinitionReference](../resources/policydefinitionreference.md) and its `@odata.type` discriminator.|
|createdDateTime|DateTimeOffset|The date and time the object was created, in ISO 8601 format and UTC. Read-only. Supports `$filter` (`le`, `gt`).|
|deletedDateTime|DateTimeOffset|The date and time the object was deleted, in ISO 8601 format and UTC. Null for an active object. Read-only.|
|enforcementMode|[enforcementMode](../resources/enums.md#enforcementmode-values)|Controls whether the assignment's effect is applied. `doNotEnforce`, the default, evaluates and records the result without applying the effect. `enforce` applies the effect. The possible values are: `doNotEnforce`, `enforce`, `unknownFutureValue`.|
|isEnabled|Boolean|Indicates whether the assignment is evaluated. The default is `true`. Supports `$filter` (`eq`).|
|lastModifiedDateTime|DateTimeOffset|The date and time the object was last modified, in ISO 8601 format and UTC. Read-only. Supports `$filter` (`le`, `gt`).|
|params|[Json](../resources/json.md)|The JSON parameter values for the assignment. Values are validated against the referenced definition's **paramsSchema**; declared defaults are applied.|
|scope|String|The scope of the assignment. Currently, only tenant-wide scope (`/`) is supported. The default is `/`.|
|uniqueName|String|The user-supplied, immutable unique name and primary key. Required on creation. Must start with an ASCII letter, contain only ASCII letters, digits, or underscores, and have at most 128 characters. The prefixes `microsoft` and `ms` (including `msft`) are reserved, regardless of case. This is the assignment's name, not the referenced definition's name.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "uniqueName",
  "@odata.type": "microsoft.graph.resourcePolicyAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyAssignment",
  "uniqueName": "String (identifier)",
  "isEnabled": "Boolean",
  "scope": "String",
  "enforcementMode": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "assignedPolicy": {
    "@odata.type": "microsoft.graph.assignedPolicyReference"
  },
  "params": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
