---
title: "agentIdentity resource type"
description: "Represents an agent identity in a directory. An agent identity is a specialized type of service principal that represents automated agents or services that can perform actions on behalf of Agent Identity Blueprint or users within the Microsoft Entra ID ecosystem."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# agentIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agent identity in an Entra ID directory. An agent identity is an account used by AI agents to authenticate within the Microsoft Entra ID ecosystem.

Inherits from [servicePrincipal](../resources/serviceprincipal.md).

This resource is an open type that allows additional properties beyond those documented here.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentidentity-list.md)|[agentidentity](../resources/agentidentity.md) collection|Get a list of the agentidentity objects and their properties.|
|[Create](../api/agentidentity-post.md)|[agentidentity](../resources/agentidentity.md)|Create a new agentidentity object.|
|[Get](../api/agentidentity-get.md)|[agentIdentity](../resources/agentidentity.md)|Read the properties and relationships of [agentIdentity](../resources/agentidentity.md) object.|
|[Update](../api/agentidentity-update.md)|[agentIdentity](../resources/agentidentity.md)|Update the properties of an agentIdentity object.|
|**App role assignments**|||
|[List appRoleAssignedTo](../api/serviceprincipal-list-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the users, groups, and agent identities assigned app roles for this agent identity.|
|[List appRoleAssignments](../api/serviceprincipal-list-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the app roles that this agent identity is assigned.|
|[Create appRoleAssignment](../api/serviceprincipal-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[Delete appRoleAssignment](../api/serviceprincipal-delete-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Delete an existing appRoleAssignment object.|
|**Delegated permission grants**|||
|[List oauth2PermissionGrants](../api/serviceprincipal-list-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Get the delegated permission grants authorizing this agent identity to access an API on behalf of a signed-in user.|
|**Deleted items**|||
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted agent identities. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted agent identity. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted agent identity. |
|[Permanently delete](../api/directory-deleteditems-delete.md) | None | Permanently delete an agent identity. |
|**Directory objects**|||
|[List ownedObjects](../api/agentidentity-list-ownedobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get directory objects owned by this agent identity.|
|**Memberships**|||
|[List direct memberships](../api/agentidentity-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the groups that this agent identity is a direct member of.|
|[List transitive memberships](../api/agentidentity-list-transitivememberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the groups that this agent identity is a member of. This operation is transitive and includes the groups that this agent identity is a nested member of.|
|**Owners**|||
|[List owners](../api/agentidentity-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the owners of this agent identity.|
|[Add owners](../api/agentidentity-post-owners.md)|[directoryObject](../resources/directoryobject.md)|Add owners by posting to the owners collection.|
|[Remove owners](../api/agentidentity-delete-owners.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|**Sponsors**|||
|[List sponsors](../api/agentidentity-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|Get the sponsors for this agent identity.|
|[Add sponsors](../api/agentidentity-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentity-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties

> [!IMPORTANT]
> While this resource inherits from **servicePrincipal**, some properties are not applicable.

|Property|Type|Description|
|:---|:---|:---|
|odata.type|String| `#microsoft.graph.agentIdentity`. Distinguishes this object as an agent identity. Can be used to identify this object as an agent identity, instead of another kind of service principal. |
|accountEnabled|Boolean|`true` if the agent identity account is enabled; otherwise, `false`. If set to `false`, then no users are able to sign in to this app, even if they're assigned to it. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|agentIdentityBlueprintId|String|The **appId** of the agent identity blueprint that defines the configuration for this agent identity.|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. Returned only on `$select`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdByAppId|String|The **appId** of the application used to create the agent identity. Set internally by Microsoft Entra ID. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdDateTime|DateTimeOffset|The date and time the agent identity was created. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered Agent Identity Blueprint. The possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|displayName|String|The display name for the agent identity. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|id|String|The unique identifier for the agent identity. Inherited from [directoryObject](../resources/directoryobject.md). Key. Not nullable. Read-only. Inherited from [entity](../resources/entity.md).|
|servicePrincipalType|String|Set to __ServiceIdentity__ for all agent identities. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity. Not nullable. The value is the union of strings set here and on the associated Agent Identity Blueprint entity's **tags** property. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appRoleAssignedTo|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignments for this app or service, granted to users, groups, and other agent identities. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignment for another app or service, granted to this agent identity. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects created by this agent identity. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|Roles that this agent identity is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Delegated permission grants authorizing this agent identity to access an API on behalf of a signed-in user. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owned by this agent identity. Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|owners|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owners of this agent identity. The owners are a set of nonadmin users or agent identities who are allowed to modify this object. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The sponsors for this agent identity.|

## JSON representation
The following JSON representation shows the resource type. Only a subset of all properties are returned by default. All other properties can only be retrieved using $select.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentIdentity",
  "baseType": "microsoft.graph.servicePrincipal",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentIdentity",
  "id": "String (identifier)",
  "accountEnabled": "Boolean",
  "agentIdentityBlueprintId": "String",
  "createdByAppId": "String",
  "createdDateTime": "String (timestamp)",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "servicePrincipalType": "String",
  "tags": [
    "String"
  ]
}
```

