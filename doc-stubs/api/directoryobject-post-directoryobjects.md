---
title: "Create directoryObject"
description: "Create a new directoryObject object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create directoryObject
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [directoryObject](../resources/directoryobject.md) object.

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
POST /me/memberOf
POST /me/ownedDevices
POST /me/ownedObjects
POST /directoryObjects
POST /me/directReports
POST /me/createdObjects
POST /stsPolicy/appliesTo
POST /me/transitiveReports
POST /me/registeredDevices
POST /me/transitiveMemberOf
POST /directory/deletedItems
POST /groups/{groupsId}/owners
POST /users/{usersId}/memberOf
POST /groups/{groupsId}/members
POST /groups/{groupsId}/memberOf
POST /devices/{devicesId}/memberOf
POST /users/{usersId}/ownedDevices
POST /users/{usersId}/ownedObjects
POST /users/{usersId}/directReports
POST /contacts/{contactsId}/memberOf
POST /users/{usersId}/createdObjects
POST /users/{usersId}/transitiveReports
POST /users/{usersId}/registeredDevices
POST /users/{usersId}/transitiveMemberOf
POST /contacts/{contactsId}/directReports
POST /devices/{devicesId}/registeredUsers
POST /groups/{groupsId}/transitiveMembers
POST /applications/{applicationsId}/owners
POST /devices/{devicesId}/registeredOwners
POST /groups/{groupsId}/transitiveMemberOf
POST /applications/{applicationsId}/memberOf
POST /applications/{applicationsId}/policies
POST /devices/{devicesId}/transitiveMemberOf
POST /contacts/{contactsId}/transitiveReports
POST /contacts/{contactsId}/transitiveMemberOf
POST /domains/{domainsId}/domainNameReferences
POST /directoryRoles/{directoryRolesId}/members
POST /groups/{groupsId}/membersWithLicenseErrors
POST /servicePrincipals/{servicePrincipalsId}/owners
POST /servicePrincipals/{servicePrincipalsId}/memberOf
POST /servicePrincipals/{servicePrincipalsId}/policies
POST /administrativeUnits/{administrativeUnitsId}/members
POST /servicePrincipals/{servicePrincipalsId}/ownedObjects
POST /servicePrincipals/{servicePrincipalsId}/createdObjects
POST /servicePrincipals/{servicePrincipalsId}/transitiveMemberOf
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [directoryObject](../resources/directoryobject.md) object.

The following table shows the properties that are required when you create the [directoryObject](../resources/directoryobject.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryobjects"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/memberOf
Content-Type: application/json
Content-length: 113

{
  "@odata.type": "#Microsoft.DirectoryServices.directoryObject",
  "deletedDateTime": "String (timestamp)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.directoryObject"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.directoryObject",
  "id": "0736cb90-cb90-0736-90cb-360790cb3607",
  "deletedDateTime": "String (timestamp)"
}
```

