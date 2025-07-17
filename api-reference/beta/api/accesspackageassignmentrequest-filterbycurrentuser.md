---
title: "accessPackageAssignmentRequest: filterByCurrentUser"
description: "Retrieve a list of accesspackageassignmentrequest objects filtered on the signed-in user."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 04/05/2024
---

# accessPackageAssignmentRequest: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](../resources/entitlementmanagement-overview.md), retrieve a list of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects filtered on the signed-in user.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageassignmentrequest_filterbycurrentuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageassignmentrequest-filterbycurrentuser-permissions.md)]

## HTTP request

> [!NOTE]
> The `/accessPackageAssignmentRequests` path will be retired soon. Use the `/assignmentRequests` path instead.

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/assignmentRequests/filterByCurrentUser(on='parameterValue')
GET /identityGovernance/entitlementManagement/accessPackageAssignmentRequests/filterByCurrentUser(on='parameterValue')
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|[accessPackageAssignmentRequestFilterByCurrentUserOptions](../resources/accesspackageassignmentrequest-accesspackageassignmentrequestfilterbycurrentuseroptions.md)|The list of current user options that can be used to filter on the access package assignment requests list. The possible values are `target`, `createdBy`, `approver`.|

- `target` is used to get the `accessPackageAssignmentRequest` objects where the signed-in user is the target. The resulting list includes all the assignment requests, current and expired, that were requested by the caller or for the caller, across all catalogs and access packages.

- `createdBy` is used to get the `accessPackageAssignmentRequest` objects created by the signed-in user. The resulting list includes all of the assignment requests that the caller has created for themselves or on behalf of others, such as in case of admin direct assignment, across all catalogs and access packages.

- `approver` is used to get the `accessPackageAssignmentRequest` objects where the signed-in user is an allowed approver in any contained `accessPackageAssignment/accessPackageAssignmentPolicy/requestApprovalSettings/approvalStages` (`primaryApprovers` or `escalationApprovers`). The resulting list includes the assignment requests in *pending* state, across all catalogs and access packages and that need a decision from the caller. The resulting list includes the assignment requests in a `pending` state, across all catalogs and access packages and that need a decision from the caller.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection in the response body.

## Examples

The following example gets the status of access package assignment requests targeted for the signed-in user.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequest_filterbycurrentuser_ontarget"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/filterByCurrentUser(on='target')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackageassignmentrequest-filterbycurrentuser-ontarget-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/accesspackageassignmentrequest-filterbycurrentuser-ontarget-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accesspackageassignmentrequest-filterbycurrentuser-ontarget-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackageassignmentrequest-filterbycurrentuser-ontarget-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackageassignmentrequest-filterbycurrentuser-ontarget-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accesspackageassignmentrequest-filterbycurrentuser-ontarget-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accesspackageassignmentrequest-filterbycurrentuser-ontarget-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/accesspackageassignmentrequest-filterbycurrentuser-ontarget-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
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
            "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
            "createdDateTime": "2021-01-19T20:02:23.907Z",
            "completedDate": "2021-01-19T20:02:40.97Z",
            "id": "46c1410d-ef96-44c5-ae9c-a577d014fe0e",
            "requestType": "AdminAdd",
            "requestState": "Delivered",
            "requestStatus": "Fulfilled",
            "isValidationOnly": false,
            "expirationDateTime": null,
            "justification": null,
            "answers": [],
            "schedule": {
                "startDateTime": "2021-01-19T20:01:57.643Z",
                "recurrence": null,
                "expiration": {
                    "endDateTime": null,
                    "duration": null,
                    "type": "noExpiration"
                }
            }
        }
    ]
}
```
