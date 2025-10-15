---
title: "Get upnSignInIdentifier"
description: "Read the properties and relationships of upnSignInIdentifier object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get upnSignInIdentifier

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [upnSignInIdentifier](../resources/upnsigninidentifier.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "upnsigninidentifier-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/signinidentifierbase-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/signInIdentifiers/{signInIdentifier-name}
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

If successful, this method returns a `200 OK` response code and an [upnSignInIdentifier](../resources/upnsigninidentifier.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_upnsigninidentifier"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/signInIdentifiers/UPN
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.upnSignInIdentifier"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.upnSignInIdentifier",
    "name": "UPN",
    "isEnabled": "Boolean"
  }
}
```
