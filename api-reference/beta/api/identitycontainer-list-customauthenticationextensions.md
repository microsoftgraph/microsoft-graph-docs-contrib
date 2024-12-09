---
title: "List customAuthenticationExtensions"
description: "Get a list of the customAuthenticationExtension objects and their properties."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/16/2024
---

# List customAuthenticationExtension objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customAuthenticationExtension](../resources/customauthenticationextension.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitycontainer-list-customauthenticationextensions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-customauthenticationextensions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/customAuthenticationExtensions
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

If successful, this method returns a `200 OK` response code and a collection of [customAuthenticationExtension](../resources/customauthenticationextension.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_customauthenticationextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAuthenticationExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.customAuthenticationExtension",
      "id": "3491a8d6-eeb2-1414-e767-7e009163a6ed",
      "authenticationConfiguration": {
        "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
      },
      "clientConfiguration": {
        "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
      },
      "description": "String",
      "displayName": "String",
      "endpointConfiguration": {
        "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
      },
      "behaviorOnError": {
        "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
      }
    }
  ]
}
```

