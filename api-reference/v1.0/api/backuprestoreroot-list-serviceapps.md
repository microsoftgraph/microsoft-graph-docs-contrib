---
title: "List serviceApps"
description: "Get a list of serviceApp objects and their properties."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List serviceApps

Namespace: microsoft.graph

Get a list of [serviceApp](../resources/serviceapp.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_list_serviceapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-serviceapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/serviceApps
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [serviceApp](../resources/serviceapp.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "serviceapps_list"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/serviceApps
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.serviceApp)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value":
  [{
    "@odata.type": "#microsoft.graph.serviceApp",
    "id":"71633878-8321-4950-bfaf-ed285bdd1461",
    "status" : "active",
    "registrationDateTime":"2023-06-19T12:01:03.45Z",   
    "lastModifiedDateTime":"2023-06-19T12:01:03.45Z",
    "lastModifiedBy":{
        "application":{
            "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
        },
        "user":{
            "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
        }
    }
  },
  {
    "@odata.type": "#microsoft.graph.serviceApp",
    "id":"e9ebe5ee-bc41-4941-92d9-899ef265c27f",
    "status" : "inactive",
    "registrationDateTime":"2023-06-19T12:01:03.45Z",   
    "lastModifiedDateTime":"2023-06-19T12:01:03.45Z",
    "lastModifiedBy":{
        "application":{
            "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
        },
        "user":{
            "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
        }
    }
  }]
}
```

