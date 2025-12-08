---
title: "agentIdentityBlueprintPrincipal resource type"
description: "Represents an agent identity blueprint principal in a directory. An Agent Identity Blueprint principal is a specialized service principal that serves as the parent blueprint for creating agent identity instances within the Microsoft Entra ID ecosystem."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# agentIdentityBlueprintPrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agent identity blueprint principal in a tenant. An agent identity blueprint principal is instantiated from an [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object and is used to create [agent identities](../resources/agentidentity.md) within a Microsoft Entra ID tenant, and perform various identity management operations that affect all agent identities created.

Inherits from [servicePrincipal](../resources/serviceprincipal.md).

This resource is an open type that allows additional properties beyond those documented here.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentidentityblueprintprincipal-list.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) collection|Get a list of the agentIdentityBlueprintPrincipal objects and their properties.|
|[Create](../api/agentidentityblueprintprincipal-post.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)|Create a new agentIdentityBlueprintPrincipal object.|
|[Get](../api/agentidentityblueprintprincipal-get.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)|Read the properties and relationships of [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object.|
|[Update](../api/agentidentityblueprintprincipal-update.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)|Update the properties of an agentIdentityBlueprintPrincipal object.|
|[Delete](../api/agentidentityblueprintprincipal-delete.md)|None|Delete an agentIdentityBlueprintPrincipal object.|
|**App role assignments**|||
|[List appRoleAssignedTo](../api/serviceprincipal-list-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the users, groups, and agent identities assigned app roles for this agent identity blueprint principal.|
|[Add appRoleAssignedTo](../api/serviceprincipal-post-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md)|Assign an app role for this agent identity blueprint principal to a user, group, or service principal.|
|[Remove appRoleAssignedTo](../api/serviceprincipal-delete-approleassignedto.md)|None|Remove an app role assignment for this agent identity blueprint principal from a user, group, or service principal.|
|[List appRoleAssignments](../api/serviceprincipal-list-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the app roles that this agent identity blueprint principal is assigned.|
|[Add appRoleAssignment](../api/serviceprincipal-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Assign an app role to this agent identity blueprint principal.|
|[Remove appRoleAssignment](../api/serviceprincipal-delete-approleassignments.md)|None|Remove an app role assignment from this agent identity blueprint principal.|
|**Delegated permission grants**|||
|[List oauth2PermissionGrants](../api/serviceprincipal-list-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Get the delegated permission grants authorizing this agent identity blueprint principal to access an API on behalf of a signed-in user.|
|**Deleted items**|||
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted agent identities. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted agent identity. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted agent identity. |
|[Permanently delete](../api/directory-deleteditems-delete.md) | None | Permanently delete an agent identity. |
|**Directory objects**|||
|[List ownedObjects](../api/agentidentityblueprintprincipal-list-ownedobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get directory objects owned by this agent identity blueprint principal.|
|[List createdObjects](../api/agentidentityblueprintprincipal-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get directory objects created by this agent identity blueprint principal.|
|**Memberships**|||
|[List memberOf](../api/agentidentityblueprintprincipal-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the groups that this agent identity blueprint principal is a direct member of.|
|**Owners**|||
|[List owners](../api/agentidentityblueprintprincipal-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the owners of this agent identity blueprint principal.|
|[Add owners](../api/agentidentityblueprintprincipal-post-owners.md)|None|Assign an owner to this agent identity blueprint principal.|
|[Remove owners](../api/agentidentityblueprintprincipal-delete-owners.md)|None|Remove an owner from this agent identity blueprint principal.|
|**Sponsors**|||
|[List sponsors](../api/agentidentityblueprintprincipal-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|Get the sponsors for this agent identity blueprint principal.|
|[Add sponsors](../api/agentidentityblueprintprincipal-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentityblueprintprincipal-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties

> [!IMPORTANT]
> While this resource inherits from **servicePrincipal**, some properties are not applicable and return `null` or default values. These properties are excluded from the table below.

|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|`true` if the agent identity blueprint principal account is enabled; otherwise, `false`. If set to `false`, then no users are able to sign in to this app, even if they're assigned to it. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDescription|String|The description exposed by the associated agent identity blueprint. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDisplayName|String|The display name exposed by the associated agent identity blueprint. Maximum length is 256 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appId|String|The **appId** of the associated agent identity blueprint. Alternate key. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appOwnerOrganizationId|Guid|Contains the tenant ID where the agent identity blueprint is registered. This is applicable only to agent identity blueprint principals backed by applications. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoleAssignmentRequired|Boolean|Specifies whether users or other service principals need to be granted an app role assignment for this agent identity blueprint principal before users can sign in or apps can get tokens. The default value is `false`. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoles|[appRole](../resources/approle.md) collection|The roles exposed by the agent identity blueprint, which this agent identity blueprint principal represents. For more information, see the **appRoles** property definition on the application entity. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdByAppId|String|The **appId** (called **Application (client) ID** on the Microsoft Entra admin center) of the application that created this agent identity blueprint principal. Set internally by Microsoft Entra ID. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered agent identity blueprint. The possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|displayName|String|The display name for the agent identity blueprint principal. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|id|String|The unique identifier for the agent identity blueprint principal. Inherited from [entity](../resources/entity.md). Key. Not nullable. Read-only.|
|info|[informationalUrl](../resources/informationalurl.md)|Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publishedPermissionScopes|[permissionScope](../resources/permissionscope.md) collection|The delegated permissions exposed by the application. For more information, see the **oauth2PermissionScopes** property on the agent identity blueprint entity's **api** property. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publisherName|String|The name of the Microsoft Entra tenant that published the application. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated agent identity blueprint. More values can be added to hybrid agent identity blueprint. These values can be used to identify the permissions exposed by this app within Microsoft Entra ID. Not nullable. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalType|String|Identifies if the agent identity blueprint principal represents an application. This is set by Microsoft Entra ID internally. For an agent identity blueprint principal that represents an application this is set as __Application__. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|signInAudience|String|Specifies the Microsoft accounts that are supported for the current agent identity blueprint. Read-only. Supported values are: `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount`, and `PersonalMicrosoftAccount`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity blueprint principal. Not nullable. The value is the union of strings set here and on the associated agent identity blueprint entity's **tags** property. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|Specifies the verified publisher of the application that's linked to this agent identity blueprint principal. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|The appManagementPolicy applied to this agent identity blueprint principal. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignedTo|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignments for this agent identity blueprint principal, granted to users, groups, and other service principals. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignment for another app or service, granted to this agent identity blueprint principal. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects created by this agent identity blueprint principal. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|Roles that this agent identity blueprint principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Delegated permission grants authorizing this agent identity blueprint principal to access an API on behalf of a signed-in user. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owned by this agent identity blueprint principal. Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|owners|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owners of this agent identity blueprint principal. The owners are a set of nonadmin users or servicePrincipals who are allowed to modify this object. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The sponsors for this agent identity blueprint principal. Sponsors are users or service principals who can authorize and manage the lifecycle of agent identity instances.|

## JSON representation
The following JSON representation shows the resource type. Only a subset of all properties are returned by default. All other properties can only be retrieved using `$select`.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentIdentityBlueprintPrincipal",
  "baseType": "microsoft.graph.servicePrincipal",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentIdentityBlueprintPrincipal",
  "id": "String (identifier)",
  "accountEnabled": "Boolean",
  "createdByAppId": "String",
  "appDescription": "String",
  "appDisplayName": "String",
  "appId": "String",
  "appOwnerOrganizationId": "Guid",
  "appRoleAssignmentRequired": "Boolean",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "publisherName": "String",
  "servicePrincipalNames": [
    "String"
  ],
  "servicePrincipalType": "String",
  "signInAudience": "String",
  "tags": [
    "String"
  ],
  "appRoles": [
    {
      "@odata.type": "microsoft.graph.appRole"
    }
  ],
  "info": {
    "@odata.type": "microsoft.graph.informationalUrl"
  },
  "publishedPermissionScopes": [
    {
      "@odata.type": "microsoft.graph.permissionScope"
    }
  ],
  "verifiedPublisher": {
    "@odata.type": "microsoft.graph.verifiedPublisher"
  }
}
```

