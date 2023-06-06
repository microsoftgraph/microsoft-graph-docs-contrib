---
title: "Create custodians"
description: "Create a new ediscoveryCustodian object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# Create custodians
Namespace: microsoft.graph.security



Create a new [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.
After the custodian object is created, you will need to create the custodian's [userSource](../resources/security-usersource.md) to reference their mailbox and OneDrive for Business site.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/custodians
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.

You can specify the following properties when you create an **ediscoveryCustodian**.

|Property|Type|Description|
|:---|:---|:---|
|email|String|Custodian's primary SMTP address. Required.|

## Response

If successful, this method returns a `201 Created` response code and an [microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_ediscoverycustodian_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/{ediscoveryCaseId}/custodians
Content-Type: application/json

{
    "email":"AdeleV@contoso.com",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-ediscoverycustodian-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-ediscoverycustodian-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-ediscoverycustodian-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-ediscoverycustodian-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-ediscoverycustodian-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-ediscoverycustodian-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryCustodian"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('4c8f8f70-7785-4bd4-b296-c98376a2c5e1')/custodians/$entity",
     "status": "active",
     "holdStatus": "applied",
     "createdDateTime": "2022-05-23T00:58:19.0702426Z",
     "lastModifiedDateTime": "2022-05-23T00:58:19.0702436Z",
     "releasedDateTime": null,
     "id": "0053a61a3b6c42738f7606791716a22a",
     "displayName": "Adele Vance",
     "email": "AdeleV@contoso.com",
     "acknowledgedDateTime": "0001-01-01T00:00:00Z"
}
```
