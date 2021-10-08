---
title: "Get directoryObject"
description: "Read the properties and relationships of a directoryObject object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get directoryObject
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [directoryObject](../resources/directoryobject.md) object.

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
GET /me/manager
GET /users/{usersId}/manager
GET /contacts/{contactsId}/manager
GET /me/memberOf/{directoryObjectId}
GET /groups/{groupsId}/createdOnBehalfOf
GET /me/ownedDevices/{directoryObjectId}
GET /me/ownedObjects/{directoryObjectId}
GET /me/directReports/{directoryObjectId}
GET /directoryObjects/{directoryObjectsId}
GET /me/createdObjects/{directoryObjectId}
GET /stsPolicy/appliesTo/{directoryObjectId}
GET /me/transitiveReports/{directoryObjectId}
GET /me/registeredDevices/{directoryObjectId}
GET /me/transitiveMemberOf/{directoryObjectId}
GET /directory/deletedItems/{directoryObjectId}
GET /applications/{applicationsId}/createdOnBehalfOf
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

If successful, this method returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_directoryobject"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/manager
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.DirectoryServices.directoryObject",
    "id": "0736cb90-cb90-0736-90cb-360790cb3607",
    "deletedDateTime": "String (timestamp)"
  }
}
```

