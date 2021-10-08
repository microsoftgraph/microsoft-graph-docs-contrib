---
title: "authorizationPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authorizationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationPolicies](../api/authorizationpolicy-list.md)|[authorizationPolicy](../resources/authorizationpolicy.md) collection|Get a list of the [authorizationPolicy](../resources/authorizationpolicy.md) objects and their properties.|
|[Create authorizationPolicy](../api/authorizationpolicy-create.md)|[authorizationPolicy](../resources/authorizationpolicy.md)|Create a new [authorizationPolicy](../resources/authorizationpolicy.md) object.|
|[Get authorizationPolicy](../api/authorizationpolicy-get.md)|[authorizationPolicy](../resources/authorizationpolicy.md)|Read the properties and relationships of an [authorizationPolicy](../resources/authorizationpolicy.md) object.|
|[Update authorizationPolicy](../api/authorizationpolicy-update.md)|[authorizationPolicy](../resources/authorizationpolicy.md)|Update the properties of an [authorizationPolicy](../resources/authorizationpolicy.md) object.|
|[Delete authorizationPolicy](../api/authorizationpolicy-delete.md)|None|Deletes an [authorizationPolicy](../resources/authorizationpolicy.md) object.|
|[List defaultUserRoleOverrides](../api/authorizationpolicy-list-defaultuserroleoverrides.md)|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md) collection|Get the defaultUserRoleOverride resources from the defaultUserRoleOverrides navigation property.|
|[Create defaultUserRoleOverride](../api/authorizationpolicy-post-defaultuserroleoverrides.md)|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md)|Create a new defaultUserRoleOverride object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedToSignUpEmailBasedSubscriptions|Boolean|**TODO: Add Description**|
|allowedToUseSSPR|Boolean|**TODO: Add Description**|
|allowEmailVerifiedUsersToJoinOrganization|Boolean|**TODO: Add Description**|
|allowInvitesFrom|allowInvitesFrom|**TODO: Add Description**. The possible values are: `none`, `adminsAndGuestInviters`, `adminsGuestInvitersAndAllMembers`, `everyone`, `unknownFutureValue`.|
|blockMsolPowerShell|Boolean|**TODO: Add Description**|
|defaultUserRolePermissions|[defaultUserRolePermissions](../resources/defaultuserrolepermissions.md)|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|enabledPreviewFeatures|String collection|**TODO: Add Description**|
|guestUserRoleId|Guid|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|permissionGrantPolicyIdsAssignedToDefaultUserRole|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultUserRoleOverrides|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationPolicy",
  "baseType": "Microsoft.DirectoryServices.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "allowInvitesFrom": "String",
  "allowedToSignUpEmailBasedSubscriptions": "Boolean",
  "allowedToUseSSPR": "Boolean",
  "allowEmailVerifiedUsersToJoinOrganization": "Boolean",
  "blockMsolPowerShell": "Boolean",
  "defaultUserRolePermissions": {
    "@odata.type": "microsoft.graph.defaultUserRolePermissions"
  },
  "enabledPreviewFeatures": [
    "String"
  ],
  "guestUserRoleId": "Guid",
  "permissionGrantPolicyIdsAssignedToDefaultUserRole": [
    "String"
  ]
}
```

