---
title: "List createdObjects"
description: "Get the directoryObject resources from the createdObjects navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List createdObjects
Namespace: microsoft.graph

Get the directoryObject resources from the createdObjects navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
GET /directoryObjects
GET /stsPolicy/appliesTo
GET /directory/deletedItems
GET /groups/{groupsId}/owners
GET /groups/{groupsId}/members
GET /groups/{groupsId}/memberOf
GET /devices/{devicesId}/memberOf
GET /contacts/{contactsId}/memberOf
GET /groups/{groupsId}/acceptedSenders
GET /groups/{groupsId}/rejectedSenders
GET /contacts/{contactsId}/directReports
GET /devices/{devicesId}/registeredUsers
GET /groups/{groupsId}/transitiveMembers
GET /applications/{applicationsId}/owners
GET /devices/{devicesId}/registeredOwners
GET /groups/{groupsId}/transitiveMemberOf
GET /devices/{devicesId}/transitiveMemberOf
GET /contacts/{contactsId}/transitiveMemberOf
GET /domains/{domainsId}/domainNameReferences
GET /directoryRoles/{directoryRolesId}/members
GET /groups/{groupsId}/membersWithLicenseErrors
GET /administrativeUnits/{administrativeUnitsId}/members
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_directoryobject"
}
-->
``` http
GET https://graph.microsoft.com/beta/directoryObjects
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.directoryObject",
      "id": "7f713cfb-3cfb-7f71-fb3c-717ffb3c717f",
      "deletedDateTime": "String (timestamp)"
    }
  ]
}
```

