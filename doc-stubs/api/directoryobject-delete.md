---
title: "Delete directoryObject"
description: "Deletes a directoryObject object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Delete directoryObject
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [directoryObject](../resources/directoryobject.md) object.

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
DELETE /me/manager
DELETE /users/{usersId}/manager
DELETE /contacts/{contactsId}/manager
DELETE /me/memberOf/{directoryObjectId}
DELETE /groups/{groupsId}/createdOnBehalfOf
DELETE /me/ownedDevices/{directoryObjectId}
DELETE /me/ownedObjects/{directoryObjectId}
DELETE /me/directReports/{directoryObjectId}
DELETE /directoryObjects/{directoryObjectsId}
DELETE /me/createdObjects/{directoryObjectId}
DELETE /stsPolicy/appliesTo/{directoryObjectId}
DELETE /me/transitiveReports/{directoryObjectId}
DELETE /me/registeredDevices/{directoryObjectId}
DELETE /me/transitiveMemberOf/{directoryObjectId}
DELETE /directory/deletedItems/{directoryObjectId}
DELETE /applications/{applicationsId}/createdOnBehalfOf
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_directoryobject"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/manager
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

