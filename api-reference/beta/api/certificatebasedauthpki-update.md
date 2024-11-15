---
title: "Update certificateBasedAuthPki"
description: "Update the properties of a certificateBasedAuthPki object."
author: "suawat"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update certificateBasedAuthPki

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificatebasedauthpki-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedauthpki-update-permissions.md)]

[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the certificateBasedAuthPki object. |


## Response

If successful, this method returns a `200 OK` response code and an updated [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_certificatebasedauthpki"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}
Content-Type: application/json

{
  "displayName": "Contoso PKI",
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateBasedAuthPki"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
  "id": "c721dc42-b383-e883-bf80-2d539946cf8c",
  "deletedDateTime": null,
  "displayName": "Contoso PKI",
  "status": "succeeded",
  "statusDetails": null,
  "lastModifiedDateTime": "2024-10-29T02:05:57Z"
}
```

