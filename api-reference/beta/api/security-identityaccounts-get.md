---
title: "Get identityAccounts"
description: "Read the properties and relationships of an identity security account object. This allows retrieving information about available identity accounts."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get identityAccounts

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an identity security account object. This allows retrieving information about available identity accounts.

## Permissions

One of the following permissions is required to call this API. Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-identityaccounts-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-identityaccounts-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/identityAccounts/{identityAccountsId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_identityaccounts"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/identityAccounts/{identityAccountsId}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.identityAccounts"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.identityAccounts",
    "id": "70682fc1-ada1-05b9-bfd1-dfaa4c12a41f",
    "displayName": "String",
    "domain": "String",
    "onPremisesSecurityIdentifier": "String",
    "cloudSecurityIdentifier": "String",
    "isEnabled": "Boolean",
    "accounts": [
      {
        "@odata.type": "microsoft.graph.security.account"
      }
    ]
  }
}
```
