---
title: "user: exportPersonalData"
description: "Submits a data policy operation request, made by a Company Administrator to export an organizational user's data."
ms.localizationpriority: medium
author: "yyuank"
ms.reviewer: "iamut"
ms.prod: "users"
doc_type: apiPageType
ms.topic: reference
---

# user: exportPersonalData

Namespace: microsoft.graph

Submit a data policy operation request from a company administrator or an application to export an organizational user's data. This data includes the user's data stored in OneDrive and their activity reports. For more guidance about exporting data while complying with regulations, see [Data Subject Requests and the GDPR and CCPA](/compliance/regulatory/gdpr-data-subject-requests).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_exportpersonaldata" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-exportpersonaldata-permissions.md)]

>**Note:** Export can only be performed by a company administrator when the delegated permission is used.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id}/exportPersonalData

```
## Request headers
| Name       | Description |
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description |
|:---------------|:--------|:----------|
|storageLocation|String|This is a shared access signature (SAS) URL to an Azure Storage account, to where data should be exported.|

## Response
If successful, this method returns a `202 Accepted` response code. It doesn't return anything in the response body. The response contains the following headers.

| Name       | Description |
|:---------------|:----------|
| Location  | URL to check on the status of the Request. |
| Retry-After  | Time period in seconds. Request maker should wait this long after submitting a request to check for the status. |


## Example
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_exportpersonaldata"
}-->
```http
POST https://graph.microsoft.com/beta/users/{id}/exportPersonalData
Content-type: application/json

{
  "storageLocation": "storageLocation-value"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-exportpersonaldata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-exportpersonaldata-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-exportpersonaldata-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-exportpersonaldata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-exportpersonaldata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-exportpersonaldata-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-exportpersonaldata-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-exportpersonaldata-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

```http
{
  Location: https://graph.microsoft.com/beta/dataPolicyOperations/d007e3da-cd9b-4b02-8d66-422403c53e3f
  Retry-After: 60
}
```

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 202 Accepted
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: exportPersonalData",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


