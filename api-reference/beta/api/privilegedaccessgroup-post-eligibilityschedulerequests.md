---
title: "Create eligibilityScheduleRequest"
description: "Create a new privilegedAccessGroupEligibilityScheduleRequest object."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create eligibilityScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-write-eligibilityschedulerequests](../includes/rbac-for-apis/rbac-pim-groups-apis-write-eligibilityschedulerequests.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

You can specify the following properties when creating a **privilegedAccessGroupEligibilityScheduleRequest**.

|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership eligibility relationship to the group. The possible values are: `owner`, `member`. Required.|
|action|String|Represents the type of operation on the group membership or ownership eligibility assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`. <br/><ul><li>`adminAssign`: For administrators to assign group membership or ownership eligibility to principals.</li><li>`adminRemove`: For administrators to remove principals from group membership or ownership eligibilities.</li><li> `adminUpdate`: For administrators to change existing eligible assignments.</li><li>`adminExtend`: For administrators to extend expiring eligible assignments.</li><li>`adminRenew`: For administrators to renew expired eligible assignments.</li><li>`selfActivate`: For principals to activate their eligible assignments.</li><li>`selfDeactivate`: For principals to deactivate their eligible assignments.</li></ul>|
|groupId|String|The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Required.|
|justification|String|A message provided by users and administrators when they create the **privilegedAccessGroupAssignmentScheduleRequest** object.|
|principalId|String|The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the group membership or ownership assignment for PIM for groups. Recurring schedules are currently unsupported. Required.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the group membership or ownership assignment request including details of the ticket number and ticket system. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object in the response body.

## Examples

### Example 1: An admin creates an eligible group ownership request for a principal

The following request creates an eligibility schedule request to make a principal eligible to be a group owner. The eligible ownership expires after two hours.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_request_for_principal_from_admin_beta_e1"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
Content-Type: application/json

{
    "accessId": "member",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "action": "AdminAssign",
    "scheduleInfo": {
        "startDateTime": "2023-02-06T19:25:00.000Z",
        "expiration": {
            "type": "AfterDateTime",
            "endDateTime": "2023-02-07T19:56:00.000Z"
        }
    },
    "justification": "Assign eligible request."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-request-for-principal-from-admin-beta-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-request-for-principal-from-admin-beta-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-request-for-principal-from-admin-beta-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-request-for-principal-from-admin-beta-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-request-for-principal-from-admin-beta-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-request-for-principal-from-admin-beta-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-request-for-principal-from-admin-beta-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/$entity",
    "id": "f8bd9e2d-bc15-49b1-8a9b-c571b3cf9555",
    "status": "Provisioned",
    "createdDateTime": "2023-02-07T06:57:54.1633903Z",
    "completedDateTime": "2023-02-07T06:57:55.6183972Z",
    "action": "adminAssign",
    "isValidationOnly": false,
    "justification": "Assign eligible request.",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "accessId": "member",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_f8bd9e2d-bc15-49b1-8a9b-c571b3cf9555",
    "createdBy": {
        "user": {
            "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2023-02-07T06:57:55.6183972Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2023-02-07T19:56:00Z",
            "duration": null
        }
    }
}
```

### Example 2: An admin extends an eligible group membership for a principal

The following request extends an existing eligibility schedule request before it expires.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extend_group_membership_for_principal_from_admin_beta_e2"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
Content-Type: application/json

{
    "accessId": "member",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "action": "AdminExtend",
    "scheduleInfo": {
        "startDateTime": "2023-02-06T19:25:00.000Z",
        "expiration": {
            "type": "AfterDateTime",
            "endDateTime": "2023-02-07T20:56:00.000Z"
        }
    },
    "justification": "Extend eligible request."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extend-group-membership-for-principal-from-admin-beta-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extend-group-membership-for-principal-from-admin-beta-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extend-group-membership-for-principal-from-admin-beta-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extend-group-membership-for-principal-from-admin-beta-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extend-group-membership-for-principal-from-admin-beta-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/extend-group-membership-for-principal-from-admin-beta-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/extend-group-membership-for-principal-from-admin-beta-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/$entity",
    "id": "e3405b79-c0d8-4597-87b5-a84451e29224",
    "status": "Provisioned",
    "createdDateTime": "2023-02-07T07:01:25.9239454Z",
    "completedDateTime": "2023-02-07T07:01:27.3379548Z",
    "action": "adminExtend",
    "isValidationOnly": false,
    "justification": "Extend eligible request.",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "accessId": "member",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_e3405b79-c0d8-4597-87b5-a84451e29224",
    "createdBy": {
        "user": {
            "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2023-02-07T07:01:27.3379548Z",
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2023-02-07T20:56:00Z",
            "duration": null
        }
    }
}
```
