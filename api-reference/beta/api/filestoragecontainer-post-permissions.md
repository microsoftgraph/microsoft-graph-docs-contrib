---
title: "Add permission"
description: "Add permission to a fileStorageContainer instance"
author: "tochan-msft"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create permission
Namespace: microsoft.graph



Adds [permission](../resources/permission.md) objects to an existing fileStorageContainer instance. The application calling this API must have permissions to manage access to containers of the containerType the container belongs to.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|FileStorageContainer.Selected|
|Application|FileStorageContainer.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{fileStorageContainerId}/permissions
PATCH /storage/fileStorage/containers/{fileStorageContainerId}/permissions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permission](../resources/permission.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request
This example adds a new user as reader to a container.
<!-- {
  "blockType": "request",
  "name": "create_permission_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/permissions
Content-type: application/json

{
  "roles": ["reader"],
  "grantedToV2": {
    "user": {
      "userPrincipalName": "jacob@fabrikam.com"
    }
  }
}
```


### Response
The following is an example of the response. If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.permission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "cJpbmNpcGFsT3duZAJfaLowIy5mfG1lbWJliZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
  "roles": ["reader"],
  "grantedToV2": {
    "user": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "userPrincipalName": "jacob@fabrikam.com",
      "displayName": "Jacob Hancock",
      "email": "jacob@fabrikam.com"
    }
  }
}
```

### Request
This example adds multiple new users with different permissions to a container via a delta update. Delta updates allow for a PATCH operation on a collection of entities, where the body specifies the additions to the collection. The body must contain the context annotation with a string value of #$delta, and it must contain an array-valued property named "value" containing all added entities. 

<!-- {
  "blockType": "request",
  "name": "create_permission_from_"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/permissions
Content-Type: application/json

{
  "@context":"#$delta",
  "value": [
    {
      "roles": ["reader"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "mike@live.com"
        }
      }
    },
    {
      "roles": ["manager"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "jason@gmail.com"
        }
      }
    },
    {
      "roles": ["writer"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "tyler@outlook.com"
        }
      }
    }
  ]
}

```


### Response
The following is an example of the response. If successful, this method returns a `200 OK` response code and [permission](../resources/permission.md) objects in the response body. In case of errors, each failed item has a @DataModificationException annotation with respective error info.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.permission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.permissions/$delta",
  "value": [
    {
      "@odata.type": "#microsoft.graph.permission",
      "id": "cmVhZGVyX2k6MCMuZnxtZW1iZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
      "roles": ["reader"],
      "grantedToV2": {
        "user": {
          "id": "18a80140-b0fb-4489-b360-2f6efaf225a0",
          "userPrincipalName": "mike@live.com",
          "displayName": "Mike Johnson",
          "email": "mike@live.com"
        }
      }
    },
    {
      "@odata.type": "#microsoft.graph.permission",
      "id": "cHJpbmNpcGFsT3duZXJfaTowIy5mfG1lbWJlcnNoaXB8ZGxpZGRlbGwyMDIyQG91dGxvb2suY29t",
      "roles": ["manager"],
      "grantedToV2": {
        "user": {
          "id": "86503198-b81b-43fe-81ee-ad45b8848ac9",
          "userPrincipalName": "jason@gmail.com",
          "displayName": "Jason Harris",
          "email": "jason@gmail.com"
        }
      }
    },
    {
      "@Core.DataModificationException":
        {
          "info": {
            "code": "Not found",
            "message": Could not find user 0000000-b82c-23ee-51ef-ab47c8177bl0",
          },
          "failedOperation": "create",
          "responseCode": 404
        },
      "@odata.type": "#microsoft.graph.permission",
      "roles": ["writer"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "tyler@outlook.com"
        }
      }
    }
  ]
}

```
