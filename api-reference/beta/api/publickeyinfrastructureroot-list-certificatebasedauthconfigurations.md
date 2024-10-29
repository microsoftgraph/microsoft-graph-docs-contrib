---
title: "List certificateBasedAuthPki objects"
description: "Get a list of the certificateBasedAuthPki objects and their properties."
author: "suawat"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List certificateBasedAuthPki objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "publickeyinfrastructureroot-list-certificatebasedauthconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/publickeyinfrastructureroot-list-certificatebasedauthconfigurations-permissions.md)]

[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations
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

If successful, this method returns a `200 OK` response code and a collection of [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_certificatebasedauthpki"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
      "id": "fdd9841c-90c6-4234-a116-d72a5cd2c583",
      "deletedDateTime": null,
      "displayName": "Contoso PKI",
      "status": "succeeded",
      "statusDetails": null,
      "lastModifiedDateTime": "2024-10-16T18:09:56Z"
    }
  ]
}
```

