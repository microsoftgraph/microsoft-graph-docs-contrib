---
title: "Get certificateBasedApplicationConfiguration"
description: "Get a certificateBasedApplicationConfiguration object."
author: "atastrophic"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Get mutualTlsOauthConfiguration objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the mutualTlsOauthConfiguration objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
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

If successful, this method returns a `200 OK` response code and a [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mutualtlsoauthconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/certificateAuthorities/mutualTlsOauthConfigurations
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mutualTlsOauthConfiguration",
      "id": "2d201804-5159-387f-808f-627c197d0d33",
      "deletedDateTime": "String (timestamp)",
      "certificateAuthorities": [
        {
          "@odata.type": "microsoft.graph.certificateAuthority"
        }
      ],
      "displayName": "String",
      "tlsClientAuthParameter": "String"
    }
  ]
}
```
