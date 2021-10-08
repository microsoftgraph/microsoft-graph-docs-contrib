---
title: "Update authorizationPolicy"
description: "Update the properties of an authorizationPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update authorizationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authorizationPolicy](../resources/authorizationpolicy.md) object.

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
PATCH /authorizationPolicy
PATCH /policyRoot/authorizationPolicy/{authorizationPolicyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authorizationPolicy](../resources/authorizationpolicy.md) object.

The following table shows the properties that are required when you update the [authorizationPolicy](../resources/authorizationpolicy.md).

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

If successful, this method returns a `200 OK` response code and an updated [authorizationPolicy](../resources/authorizationpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authorizationPolicy
Content-Type: application/json
Content-length: 645

{
  "@odata.type": "#microsoft.graph.authorizationPolicy",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationPolicy",
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

