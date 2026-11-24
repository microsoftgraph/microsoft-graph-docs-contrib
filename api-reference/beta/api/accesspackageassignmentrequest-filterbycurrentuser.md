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

For detailed separation of duties (SoD) findings, use the delegated **EntitlementManagement.Read.All** permission or the higher-privileged **EntitlementManagement.ReadWrite.All** permission. The signed-in user must also have the appropriate relationship to the request, applicable licensing, and tenant feature enablement. These conditions don't replace permission consent or normal authorization checks.

## HTTP request

> [!NOTE]
> The `/accessPackageAssignmentRequests` path will be retired soon. Use the `/assignmentRequests` path instead.

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/entitlementManagement/assignmentRequests/filterByCurrentUser(on='parameterValue')
GET /identityGovernance/entitlementManagement/accessPackageAssignmentRequests/filterByCurrentUser(on='parameterValue')
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|`on`|[accessPackageAssignmentRequestFilterByCurrentUserOptions](../resources/accesspackageassignmentrequestfilterbycurrentuseroptions.md)|Required. The relationship between the signed-in user and the assignment requests to retrieve.|

The value of `on` also determines whether **resourceRoleRiskAnalysisResults** can include detailed SoD findings:

|Value|SoD findings|
|:---|:---|
|`approver`|Can include findings for requests the caller is authorized to review.|
|`createdBy`|Can include findings for requests created by the caller.|
|`requestForOthers`|Can include findings for requests the caller made for others.|
|`target`|History only; detailed findings aren't included.|
|`targetOrRequestor`|History only, even when the caller is the recorded requestor or the query filters to a single request ID.|

Other caller relationships, such as manager or owner, don't enable detailed findings. On inclusion-eligible views, an empty collection alone doesn't prove no conflicts exist. On excluded views, don't rely on a particular empty, null, or omitted wire representation to determine whether analysis ran.

Request history can independently record `SodAnalysisCompleted`. Its **detail** string contains a positive conflict count or `"0"` for zero reported conflicts. A missing, empty, or invalid count means unknown, not zero. If the action is absent, no completed analysis is recorded.

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

### Example 1: Get requests targeted for the signed-in user

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequest_filterbycurrentuser_ontarget"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/filterByCurrentUser(on='target')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackageassignmentrequest-filterbycurrentuser-ontarget-csharp-snippets.md)]
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

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)"
}
-->
```http
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

### Example 2: Read SoD findings as an authorized approver

This example shows a shortened collection response when the feature is enabled and the caller is authorized to approve the request. There are no separate create, update, or delete operations for these findings.

#### Request

<!-- { "blockType": "request", "name": "filter_assignmentrequests_sod_approver" } -->
```http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/assignmentRequests/filterByCurrentUser(on='approver')
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "11111111-2222-4333-8444-555555555555",
      "resourceRoleRiskAnalysisResults": [
        {
          "riskAnalysisResults": [
            {
              "externalReferenceUrl": null,
              "violations": [
                {
                  "description": "Conflicting purchasing and payment permissions.",
                  "level": "High"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

### Example 3: Read history without detailed findings

The `targetOrRequestor` view doesn't include detailed findings, even when the signed-in user is the recorded requestor. This shortened response shows that completed-analysis history remains independent of detail inclusion. The function returns a collection, not a single object.

#### Request

<!-- { "blockType": "request", "name": "filter_assignmentrequests_sod_history" } -->
```http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/assignmentRequests/filterByCurrentUser(on='targetOrRequestor')
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "11111111-2222-4333-8444-555555555555",
      "history": [
        {
          "action": "SodAnalysisCompleted",
          "detail": "2"
        }
      ]
    }
  ]
}
```
