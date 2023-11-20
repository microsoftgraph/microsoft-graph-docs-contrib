---
title: "List fileStorageContainer permissions"
description: "Get the set of permissions for a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# List fileStorageContainer permissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enumerate permissions for an existing fileStorageContainer. 

The application calling this API must have permissions to enumerate fileStorageContainers permissions for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Application|FileStorageContainer.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/permissions
```

## Optional query parameters
This method supports OData skip-top paging, $orderBy, and $filter features. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [permission](../resources/permission.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_permission"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/permissions
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(oneDrive.permission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.permission)",
  "value": [
    {
        "@odata.type": "#microsoft.graph.permission",
        "id": "cmVhZGVyX2k6MCMuZnxtZW1iZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
        "roles": ["principalOwner"],
        "grantedToV2": {
          "user": {
            "id": "71392b2f-1765-406e-86af-5907d9bdb2ab",
            "userPrincipalName": "jhan@contoso.com",
            "displayName": "Jacob Hancock",
            "email": "jhan@contoso.com"
          }
        }
    },
    {
        "@odata.type": "#microsoft.graph.permission",
        "id": "cHJpbmNpcGFsT3duZXJfaTowIy5mfG1lbWJlcnNoaXB8ZGxpZGRlbGwyMDIyQG91dGxvb2suY29t",
        "roles": ["reader"],
        "grantedToV2": {
          "user": {
            "id": "86503198-b81b-43fe-81ee-ad45b8848ac9",
            "userPrincipalName": "mnick@contoso.com",
            "displayName": "Mark Nickhols",
            "email": "mnick@contoso.com"
          }
        }
    },
    {
        "@odata.type": "#microsoft.graph.permission",
        "id": "iZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQcJpbmNpcGFsT3duZAJfaLowIy5mfG1lbWJl",
        "roles": ["writer"],
        "grantedToV2": {
          "user": {
            "id": "0000000-b82c-23ee-51ef-ab47c8177bl0",
            "userPrincipalName": "hjac@contoso.com",
            "displayName": "Howard Jacobs",
            "email": "hjac@contoso.com"
          }
        }
    }
  ]
}
```

