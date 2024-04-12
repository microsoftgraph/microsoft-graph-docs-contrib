---
title: "List externalAuthenticationMethodConfiguration objects"
description: "Get a list of the externalAuthenticationMethodConfiguration objects and their properties."
author: "gregk-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List externalAuthenticationMethodConfiguration objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalauthenticationmethodconfiguration-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethodconfiguration-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.externalAuthenticationMethodConfiguration not found
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

If successful, this method returns a `200 OK` response code and a collection of [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_externalauthenticationmethodconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.externalAuthenticationMethodConfiguration not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalAuthenticationMethodConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
      "id": "2832c576-4d71-6df6-3d62-de9be9455558",
      "state": "String",
      "excludeTargets": [
        {
          "@odata.type": "microsoft.graph.excludeTarget"
        }
      ],
      "displayName": "String",
      "appId": "String",
      "openIdConnectSetting": {
        "@odata.type": "microsoft.graph.openIdConnectSetting"
      }
    }
  ]
}
```

