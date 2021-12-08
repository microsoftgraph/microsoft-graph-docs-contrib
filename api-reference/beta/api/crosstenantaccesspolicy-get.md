---
title: "Get crossTenantAccessPolicy"
description: "Read the properties and relationships of a crossTenantAccessPolicy object."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get crossTenantAccessPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not applicable|
|Application|Policy.Read.All, Policy.ReadWrite.CrossTenantAccess|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /policies/crossTenantAccessPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_crosstenantaccesspolicy"
}
-->

``` http
GET https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy
```

### Response

>**Note:** If you have never modified your cross tenant access settings prior, this response will return {}.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantAccessPolicy"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.crossTenantAccessPolicy",
    "displayName": "CrossTenantAccessPolicy",
    "lastModifiedDateTime": "08-23-2021Z00:00:00",
    "definition": "Cross tenant access policy..."
  }
}
```
