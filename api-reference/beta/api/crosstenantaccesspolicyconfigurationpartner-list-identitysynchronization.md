---
title: "List partners"
description: "List the user synchronization policy for all partner configurations."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List partners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the user synchronization policy for all partner configurations.

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
GET /policies/crossTenantAccessPolicy/partners
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

If successful, this method returns a `200 OK` response code and a collection of [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_crosstenantidentitysyncpolicypartner"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners?select=tenantId&$expand=identitySynchronization
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.crossTenantIdentitySyncPolicyPartner)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value":
  [
    {
      "tenantId": "9c5d131d-b1c3-4fc4-9e3f-c6557947d551",
      "identitySynchronization":
      {
        "tenantId": "9c5d131d-b1c3-4fc4-9e3f-c6557947d551",
        "displayName": "Fabrikam",
        "userSyncInbound":
        {
          "isSyncAllowed": true
        }
      }
    }
  ]
}
```
