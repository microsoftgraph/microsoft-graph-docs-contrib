---
title: "List externalAuthenticationMethod objects"
description: "Get a list of the externalAuthenticationMethod objects and their properties."
author: "rannderson"
ms.date: 04/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List externalAuthenticationMethod objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the externalAuthenticationMethod objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self

<!-- {
  "blockType": "permissions",
  "name": "authentication-list-externalauthenticationmethods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-list-externalauthenticationmethods-permissions.md)]

## HTTP request

To retrieve details of your own external authentication methods:
<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/externalAuthenticationMethods
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_externalauthenticationmethod"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/authentication/externalAuthenticationMethods
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalAuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
      "id": "78381c69-811f-51f6-66ec-c2c2aa0e2b46",
      "createdDateTime": "2025-04-02T16:01:39",
      "configurationId": "26310fee-860b-4eab-8749-ab730dcf335e",
      "displayName": "Adatum"
    }
  ]
}
```

