---
title: "Get serviceStorageQuotaBreakdown"
description: "Read the properties and relationships of a serviceStorageQuotaBreakdown object."
author: "BarryShehadeh"
ms.localizationpriority: medium
ms.prod: files
doc_type: apiPageType
---

# Get serviceStorageQuotaBreakdown
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| Not supported. |
|Delegated (personal Microsoft account)| Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/settings/storage/quota/services/{serviceStorageQuotaBreakdownId}
GET /users/{usersId}/settings/storage/quota/services/{serviceStorageQuotaBreakdownId}
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

If successful, this method returns a `200 OK` response code and a [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_servicestoragequotabreakdown"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/settings/storage/quota/services/OneDrive
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceStorageQuotaBreakdown"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "displayName": "OneDrive",
  "id": "OneDrive",
  "used": 102633320226,
  "manageWebUrl": "String"
}
```

