---
title: "accessPackageAssignmentRequest: filterByCurrentUser"
description: "Retrieve a list of accesspackageassignmentrequest objects filtered on the signed-in user."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# accessPackageAssignmentRequest: filterByCurrentUser
Namespace: microsoft.graph


In [Azure AD Entitlement Management](../resources/entitlementmanagement-overview.md), retrieve a list of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects filtered on the signed-in user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/assignmentRequests/filterByCurrentUser(on='parameterValue')
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|accessPackageAssignmentRequestFilterByCurrentUserOptions|The list of user options that can be used to filter on the access package assignment requests list. The possible values are `target`, `createdBy`, `approver`.|

- `target` is used to get the `accessPackageAssignmentRequest` objects where the signed-in user is the target. The resulting list includes all the assignment requests, current and expired, that were requested by the caller or for the caller, across all catalogs and access packages.

- `createdBy` is used to get the `accessPackageAssignmentRequest` objects created by the signed-in user. The resulting list includes all of the assignment requests that the caller has created for themselves or on behalf of others, such as in case of admin direct assignment, across all catalogs and access packages.

- `approver` is used to get the `accessPackageAssignmentRequest` objects where the signed-in user is an allowed approver for the request. The resulting list includes the assignment requests in `pending` state, across all catalogs and access packages, that need a decision from the caller.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequest_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests/filterByCurrentUser(on='target')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackageassignmentrequest-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accesspackageassignmentrequest-filterbycurrentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackageassignmentrequest-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackageassignmentrequest-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accesspackageassignmentrequest-filterbycurrentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accesspackageassignmentrequest-filterbycurrentuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "46c1410d-ef96-44c5-ae9c-a577d014fe0e",
      "requestType": "adminAdd",
      "state": "delivered",
      "status": "Delivered",
      "createdDateTime": "2021-01-19T20:02:23.907Z",
      "completedDateTime": "2021-01-19T20:02:40.97Z",
      "schedule": {
        "@odata.type": "microsoft.graph.entitlementManagementSchedule"
      }
    }
  ]
}
```


