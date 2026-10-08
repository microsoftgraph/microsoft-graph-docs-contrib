---
title: "Get longRunningOperation"
description: "Retrieve the status of a long-running Microsoft Graph API operation."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 07/29/2025
---

# Get longRunningOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [longRunningOperation](../resources/longrunningoperation.md) object. This API allows you to retrieve the details and status of the following long-running Microsoft Graph API operations.

- [Role management alert refresh](unifiedrolemanagementalert-refresh.md)
- [Password reset](authenticationmethod-resetpassword.md)

The possible states of the long-running operation are `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue` where `succeeded` and `failed` are terminal states.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### For role management alerts

<!-- { 
  "blockType": "permissions", 
  "name": "longrunningoperation_get", 
  "requestUrls": ["GET /identityGovernance/roleManagementAlerts/operations/{longRunningOperationId}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/longrunningoperation-get-permissions.md)]

[!INCLUDE [rbac-pim-alerts-apis-read](../includes/rbac-for-apis/rbac-pim-alerts-apis-read.md)]

### For authentication methods (password reset)

<!-- { 
  "blockType": "permissions", 
  "name": "longrunningoperation_get_2", 
  "requestUrls": ["GET /users/{id | userPrincipalName}/authentication/operations/{id}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/longrunningoperation-get-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

To retrieve details of a long running operation of role management alert refresh:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/roleManagementAlerts/operations/{longRunningOperationId}
```

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
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [longRunningOperation](../resources/longrunningoperation.md) object in the response body.
For role management alerts, the **resourceLocation** contains the url of the role management alert if the operation status is `succeeded`; otherwise, the **resourceLocation** is empty.

## Examples

### Example 1: Retrieve the details of a long running operation for role management alert refresh when the operation status is `running`

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_roleManagementalerts_running"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-longrunningoperation-rolemanagementalerts-running-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-longrunningoperation-rolemanagementalerts-running-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-longrunningoperation-rolemanagementalerts-running-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-longrunningoperation-rolemanagementalerts-running-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-longrunningoperation-rolemanagementalerts-running-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-longrunningoperation-rolemanagementalerts-running-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-longrunningoperation-rolemanagementalerts-running-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/operations/$entity",
    "id": "refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
    "createdDateTime": "2023-06-09T22:50:41.5414467Z",
    "lastActionDateTime": "2023-06-09T22:52:09.0296021Z",
    "resourceLocation": "",
    "status": "running",
    "statusDetail": ""
}
```

### Example 2: Retrieve the details of a long running operation for role management alert refresh when the operation status is `succeeded`

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_roleManagementalerts_succeeded"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-longrunningoperation-rolemanagementalerts-succeeded-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-longrunningoperation-rolemanagementalerts-succeeded-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-longrunningoperation-rolemanagementalerts-succeeded-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-longrunningoperation-rolemanagementalerts-succeeded-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-longrunningoperation-rolemanagementalerts-succeeded-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-longrunningoperation-rolemanagementalerts-succeeded-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-longrunningoperation-rolemanagementalerts-succeeded-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/operations/$entity",
    "id": "refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
    "createdDateTime": "2023-06-09T22:50:41.5414467Z",
    "lastActionDateTime": "2023-06-09T22:56:09.0296021Z",
    "resourceLocation": "https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
    "status": "succeeded",
    "statusDetail": ""
}
```

### Example 3: Retrieve the status of a password authentication method reset operation.

The ID of the operation to use in this request is retrieved from the response you get from the [passwword reset operation](authenticationmethod-resetpassword.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_passwordreset"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id | userPrincipalName}/authentication/operations/{id}
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

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->
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

### Example 4: Retrieve a long-running operation from the industry data service

The following example shows how to get a long-running operation for the industry data service.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_industrydata"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/operations/d194fa3e-18c9-47a1-0fb1-08dad8e7a876
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-longrunningoperation-industrydata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-longrunningoperation-industrydata-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-longrunningoperation-industrydata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-longrunningoperation-industrydata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-longrunningoperation-industrydata-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-longrunningoperation-industrydata-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-longrunningoperation-industrydata-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.longRunningOperation",
  "createdDateTime": "2022-12-14T05:54:35.400029Z",
  "id": "d194fa3e-18c9-47a1-0fb1-08dad8e7a876",
  "lastActionDateTime": "2022-12-14T05:54:43.8410226Z",
  "resourceLocation": "https://graph.microsoft.com/beta/industryData/dataConnectors/022da4a0-c239-4b07-abed-08dad8e7a07a",
  "status": "succeeded",
  "statusDetail": null
}
```
