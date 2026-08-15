---
title: "recoveryChangeObjectBase resource type"
description: "Represents a single object change in the context of tenant recovery."
author: "yuhko-msft"
ms.date: 06/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryChangeObjectBase resource type

Namespace: microsoft.graph.entraRecoveryServices

Represents a single object change in the context of tenant recovery. Returned by the [getChanges](../api/entrarecoveryservices-recoverypreviewjob-getchanges.md) function on preview jobs and [getFailedChanges](../api/entrarecoveryservices-recoveryjob-getfailedchanges.md) function on recovery jobs. Each instance describes the entity being modified, the type of recovery action to be performed, and the delta between the current and target states.

This resource is an open type that supports additional dynamic properties **deltaFromCurrent** and **currentState** in responses.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the changed object in its current state, used to uniquely identify the object. Supports `$filter` (`eq`, `ne`, `startswith`).|
|entityTypeName|[microsoft.graph.entraRecoveryServices.resourceTypeName](#resourcetypename-values)|The type of directory entity being modified. Supports `$filter` (`eq`, `ne`).|
|failureMessage|String|The error message if the change failed to apply. Only populated in [getFailedChanges](../api/entrarecoveryservices-recoveryjob-getfailedchanges.md) responses. `null` otherwise.|
|id|String|The unique identifier of the changed object. Supports `$filter` (`eq`, `ne`).|
|recoveryAction|[microsoft.graph.entraRecoveryServices.recoveryAction](#recoveryaction-values)|The type of recovery action to be performed on this object. Supports `$filter` (`eq`, `ne`).|

### Additional properties

In addition to the properties listed above, the following dynamic properties are included in responses:
- **deltaFromCurrent** - Contains the changes that will be applied during recovery, typed as the entity being modified (e.g., `microsoft.graph.user`).
- **currentState** - Contains the current state of the object for comparison, typed as the entity being modified.

### recoveryAction values

|Member|Description|
|:---|:---|
|softDelete|The object is soft deleted during recovery.|
|update|The object is updated during recovery.|
|restore|The object is restored during recovery.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### resourceTypeName values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to get the following members: `oAuth2PermissionGrant`, `appRoleAssignment`, `organization`.

|Member|Description|
|:---|:---|
|user|A user.|
|group|A group.|
|conditionalAccessPolicy|A Conditional Access policy.|
|namedLocationPolicy|A named location policy.|
|authenticationMethodPolicy|An authentication method policy.|
|authorizationPolicy|An authorization policy.|
|authenticationStrengthPolicy|An authentication strength policy.|
|application|An application.|
|servicePrincipal|A service principal.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|oAuth2PermissionGrant|An OAuth 2.0 permission grant.|
|appRoleAssignment|An app role assignment.|
|organization|An organization.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase",
  "id": "String (identifier)",
  "entityTypeName": "String",
  "displayName": "String",
  "recoveryAction": "String",
  "failureMessage": "String"
}
```
