---
title: "certificateBasedAuthPki: upload"
description: "Append additional certificate authority details to a certificateBasedAuthPki resource."
author: "suawat"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# certificateBasedAuthPki: upload

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Append additional certificate authority details to a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) resource. Only one operation can run at a time and this operation can take up to 30 minutes to complete. To know whether another upload is in progress, call the [Get certificateBasedAuthPki](../api/certificatebasedauthpki-get.md). The **status** property will have the value `running`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificatebasedauthpki-upload-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedauthpki-upload-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/upload
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|uploadUrl|String|The URL where the service can download the PKI file and populate the certificateAuthorities. This can be any http or https publicly accessible internet facing URL.|
|sha256FileHash|String|A sequence of numbers and letters to check that your copy of a downloaded update file is identical to the original. This can be computed using the [Get_FileHash](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-filehash?view=powershell-7.4#examples).|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

``` http
POST https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/upload
Content-Type: application/json

{
  "uploadUrl": "String",
  "sha256FileHash": "String"
}
```


### Response

The following example shows the response.

``` http
HTTP/1.1 204 No Content
```

