---
title: "accessPackageAssignmentRequest: FilterByCurrentUser"
description: "Retrieve a list of accesspackageassignmentrequest objects filtered on the signed-in user."
localization_priority: Normal
author: "sbounouh"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# accessPackageAssignmentRequest: FilterByCurrentUser
Namespace: microsoft.graph

In [Azure AD Entitlement Management](../resources/entitlementmanagement-root.md), retrieve a list of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects filtered on the signed-in user.

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
GET /identityGovernance/entitlementManagement/accessPackageAssignmentRequests/FilterByCurrentUser
```

## Query parameters
The following table shows the parameters that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|on|String|The list of options that can be used to filter on current user. Possible options are: `target`, `createdBy` and `approver`. Additional options may be available in the future.|

- `target` is used to get the `accessPackageAssignmentRequest` objects where the signed-in user is the target. The resulting list includes all the assignment requests, current and expired, that were requested by the called or for the caller, across all catalogs and access packages.

- `createdBy` is used to get the `accessPackageAssignmentRequest` objects created by the signed-in user. The resulting list includes all the assignment requests that the caller has created for themselves or on behalf of others (such as in case of admin direct assignment), across all catalogs and access packages.

- `approver` is used to get the `accessPackageAssignmentRequest` objects where the signed-in user is an allowed approver in any contained `accessPackageAssignment/accessPackageAssignmentPolicy/requestApprovalSettings/approvalStages` (`primaryApprovers` or `escalationApprovers`). The resulting list includes the assignment requests in *pending* state, across all catalogs and access packages and that need a decision from the caller. This list does not contain assignment requests in states other than *pending* nor assignment requests that do not require action from the the signed-in user.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection in the response body.

## Examples

### Example 1: Get the status of access package assignment requests targeted for the signed-in user

#### Request
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequest_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/FilterByCurrentUser(on='target')
```


#### Response
**Note:** The response object shown here might be shortened for readability.
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

