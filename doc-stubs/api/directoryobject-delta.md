---
title: "directoryObject: delta"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# directoryObject: delta
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
GET /me/memberOf/delta
GET /me/ownedDevices/delta
GET /me/ownedObjects/delta
GET /directoryObjects/delta
GET /me/directReports/delta
GET /me/createdObjects/delta
GET /stsPolicy/appliesTo/delta
GET /me/transitiveReports/delta
GET /me/registeredDevices/delta
GET /me/transitiveMemberOf/delta
GET /directory/deletedItems/delta
GET /groups/{groupsId}/owners/delta
GET /users/{usersId}/memberOf/delta
GET /groups/{groupsId}/members/delta
GET /groups/{groupsId}/memberOf/delta
GET /devices/{devicesId}/memberOf/delta
GET /users/{usersId}/ownedDevices/delta
GET /users/{usersId}/ownedObjects/delta
GET /users/{usersId}/directReports/delta
GET /contacts/{contactsId}/memberOf/delta
GET /users/{usersId}/createdObjects/delta
GET /users/{usersId}/transitiveReports/delta
GET /users/{usersId}/registeredDevices/delta
GET /users/{usersId}/transitiveMemberOf/delta
GET /contacts/{contactsId}/directReports/delta
GET /devices/{devicesId}/registeredUsers/delta
GET /groups/{groupsId}/transitiveMembers/delta
GET /applications/{applicationsId}/owners/delta
GET /devices/{devicesId}/registeredOwners/delta
GET /groups/{groupsId}/transitiveMemberOf/delta
GET /applications/{applicationsId}/memberOf/delta
GET /applications/{applicationsId}/policies/delta
GET /devices/{devicesId}/transitiveMemberOf/delta
GET /contacts/{contactsId}/transitiveReports/delta
GET /contacts/{contactsId}/transitiveMemberOf/delta
GET /domains/{domainsId}/domainNameReferences/delta
GET /directoryRoles/{directoryRolesId}/members/delta
GET /groups/{groupsId}/membersWithLicenseErrors/delta
GET /servicePrincipals/{servicePrincipalsId}/owners/delta
GET /servicePrincipals/{servicePrincipalsId}/memberOf/delta
GET /servicePrincipals/{servicePrincipalsId}/policies/delta
GET /administrativeUnits/{administrativeUnitsId}/members/delta
GET /servicePrincipals/{servicePrincipalsId}/ownedObjects/delta
GET /servicePrincipals/{servicePrincipalsId}/createdObjects/delta
GET /servicePrincipals/{servicePrincipalsId}/transitiveMemberOf/delta
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "directoryobject_delta"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/memberOf/delta
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.directoryObject",
      "id": "String (identifier)",
      "deletedDateTime": "String (timestamp)"
    }
  ]
}
```

