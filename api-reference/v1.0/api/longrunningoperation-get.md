---
title: "Get longRunningOperation"
description: "Retrieve the status of a long-running Microsoft Graph API operation."
ms.localizationpriority: medium
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 07/23/2024
---

# Get longRunningOperation

Namespace: microsoft.graph

Read the properties and relationships of a [longRunningOperation](../resources/longrunningoperation.md) object. This API allows you to retrieve the details and status of the following long-running Microsoft Graph API operations.

- [Password reset](authenticationmethod-resetpassword.md)

The possible states of the long-running operation are `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue` where `succeeded` and `failed` are terminal states.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### For authentication methods (password reset)

<!-- { 
  "blockType": "permissions", 
  "name": "longrunningoperation_get", 
  "requestUrls": ["GET /users/{id | userPrincipalName}/authentication/operations/{id}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/longrunningoperation-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

To retrieve the status of a long running operation of authentication method reset:

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /users/{id | userPrincipalName}/authentication/operations/{id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [longRunningOperation](../resources/longrunningoperation.md) object in the response body.

## Examples

### Request

The following example shows a request. The ID of the operation to use in this request is retrieved from the response you get from the [passwword reset operation](authenticationmethod-resetpassword.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_passwordreset"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/{id | userPrincipalName}/authentication/operations/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-longrunningoperation-passwordreset-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-longrunningoperation-passwordreset-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-longrunningoperation-passwordreset-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-longrunningoperation-passwordreset-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-longrunningoperation-passwordreset-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-longrunningoperation-passwordreset-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-longrunningoperation-passwordreset-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "status": "running",
  "createdDateTime": "2020-03-19T12-01-03.45Z",
  "lastActionDateTime": "2020-03-19T12-01-04.23Z",
  "id": "2d497bb-57bd-47a6-8749-5ccd0869f2bd"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get operation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
