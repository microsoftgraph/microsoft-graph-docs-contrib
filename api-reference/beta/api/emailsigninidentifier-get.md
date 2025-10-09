---
title: "Get emailSignInIdentifier"
description: "Read the properties and relationships of emailSignInIdentifier object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get emailSignInIdentifier

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [emailSignInIdentifier](../resources/emailsigninidentifier.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "emailsigninidentifier-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/emailsigninidentifier-get-permissions.md)]

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

If successful, this method returns a `200 OK` response code and an [emailSignInIdentifier](../resources/emailsigninidentifier.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_emailsigninidentifier"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/signInIdentifiers/Email
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailSignInIdentifier"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.emailSignInIdentifier",
    "name": "786a7f66-d644-d886-da2e-a06147b19ebd",
    "isEnabled": "Boolean"
  }
}
```
