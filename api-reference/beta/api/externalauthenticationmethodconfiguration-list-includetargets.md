---
title: "List includeTargets"
description: "Get the authenticationMethodTarget resources from the includeTargets navigation property."
author: "gregk-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List includeTargets

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the authenticationMethodTarget resources from the includeTargets navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalauthenticationmethodconfiguration-list-includetargets-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethodconfiguration-list-includetargets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /externalAuthenticationMethodConfiguration/includeTargets
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

If successful, this method returns a `200 OK` response code and a collection of [authenticationMethodTarget](../resources/authenticationmethodtarget.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_authenticationmethodtarget"
}
-->
``` http
GET https://graph.microsoft.com/beta/externalAuthenticationMethodConfiguration/includeTargets
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationMethodTarget)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.authenticationMethodTarget",
      "id": "c94b45ed-9c18-3714-dcc6-28d8cb0fcb47",
      "targetType": "String",
      "isRegistrationRequired": "Boolean"
    }
  ]
}
```

