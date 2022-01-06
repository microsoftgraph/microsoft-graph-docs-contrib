---
title: "Get unifiedRbacResourceNamespace"
description: "Read the properties and relationships of an unifiedRbacResourceNamespace object."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get unifiedRbacResourceNamespace
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/resourceNamespaces/{unifiedRbacResourceNamespaceId}
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

If successful, this method returns a `200 OK` response code and an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object in the response body.

## Examples

The following example gets the directory resource namespace with the identifier of `microsoft.aad.b2c`.

### Request
<!-- {
  "blockType": "request",
  "name": "get_unifiedrbacresourcenamespace"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/resourceNamespaces/microsoft.aad.b2c
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRbacResourceNamespace"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/resourceNamespaces/$entity",
    "id": "microsoft.aad.b2c",
    "name": "microsoft.aad.b2c"
}
```
