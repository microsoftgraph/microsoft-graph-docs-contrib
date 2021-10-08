---
title: "Create authorizationPolicy"
description: "Create a new authorizationPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create authorizationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [authorizationPolicy](../resources/authorizationpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policyRoot/authorizationPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authorizationPolicy](../resources/authorizationpolicy.md) object.

The following table shows the properties that are required when you create the [authorizationPolicy](../resources/authorizationpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|allowInvitesFrom|allowInvitesFrom|**TODO: Add Description**. The possible values are: `none`, `adminsAndGuestInviters`, `adminsGuestInvitersAndAllMembers`, `everyone`, `unknownFutureValue`.|
|allowedToSignUpEmailBasedSubscriptions|Boolean|**TODO: Add Description**|
|allowedToUseSSPR|Boolean|**TODO: Add Description**|
|allowEmailVerifiedUsersToJoinOrganization|Boolean|**TODO: Add Description**|
|blockMsolPowerShell|Boolean|**TODO: Add Description**|
|defaultUserRolePermissions|[Microsoft.DirectoryServices.defaultUserRolePermissions](../resources/defaultuserrolepermissions.md)|**TODO: Add Description**|
|enabledPreviewFeatures|String collection|**TODO: Add Description**|
|guestUserRoleId|Guid|**TODO: Add Description**|
|permissionGrantPolicyIdsAssignedToDefaultUserRole|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [authorizationPolicy](../resources/authorizationpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_authorizationpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policyRoot/authorizationPolicy
Content-Type: application/json
Content-length: 657

{
  "@odata.type": "#Microsoft.DirectoryServices.authorizationPolicy",
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


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.authorizationPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.authorizationPolicy",
  "id": "82eb24ad-24ad-82eb-ad24-eb82ad24eb82",
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

