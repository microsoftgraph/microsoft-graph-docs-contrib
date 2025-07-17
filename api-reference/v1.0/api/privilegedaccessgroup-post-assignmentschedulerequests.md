---
title: "Create assignmentScheduleRequest"
description: "Create a new privilegedAccessGroupAssignmentScheduleRequest object."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create assignmentScheduleRequest
Namespace: microsoft.graph

Create a new [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessgroup_post_assignmentschedulerequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessgroup-post-assignmentschedulerequests-permissions.md)]

[!INCLUDE [rbac-pim-groups-apis-write-assignmentschedulerequests](../includes/rbac-for-apis/rbac-pim-groups-apis-write-assignmentschedulerequests.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/privilegedAccess/group/assignmentScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.

You can specify the following properties when creating a **privilegedAccessGroupAssignmentScheduleRequest**.

|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership assignment relationship to the group. The possible values are: `owner`, `member`. Required.|
|action|String|Represents the type of the operation on the group membership or ownership assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`. <br/><ul><li>`adminAssign`: For administrators to assign group membership or ownership to principals.</li><li>`adminRemove`: For administrators to remove principals from group membership or ownership.</li><li> `adminUpdate`: For administrators to change existing group membership or ownership assignments.</li><li>`adminExtend`: For administrators to extend expiring assignments.</li><li>`adminRenew`: For administrators to renew expired assignments.</li><li>`selfActivate`: For principals to activate their assignments.</li><li>`selfDeactivate`: For principals to deactivate their active assignments.</li></ul> Required.|
|customData|String|Free text field to define any custom data for the request. Optional.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership assignment through PIM for Groups. Required.|
|justification|String|A message provided by users and administrators when they create the **privilegedAccessGroupAssignmentScheduleRequest** object. Optional.|
|principalId|String|The identifier of the principal whose membership or ownership assignment is granted through PIM for Groups. Required.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the group membership or ownership assignment for PIM for Groups. Recurring schedules are currently unsupported. Required.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the group membership or ownership assignment request including details of the ticket number and ticket system. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object in the response body.

## Examples

### Example 1: Create an assignment schedule request

The following request creates an assignment schedule request to assign a principal active membership to the specified group. The active membership expires after two hours.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_privilegedaccessgroupassignmentschedulerequest_from_v1_e1"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/assignmentScheduleRequests
Content-Type: application/json

{
  "accessId": "member", 
  "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2", 
  "groupId": "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7", 
  "action": "adminAssign", 
  "scheduleInfo": { 
    "startDateTime": "2022-12-08T07:43:00.000Z", 
    "expiration": { 
      "type": "afterDuration", 
      "duration": "PT2H" 
    } 
  }, 
  "justification": "Assign active member access."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/privilegedAccess/group/assignmentScheduleRequests/$entity",
  "id": "34e963f6-150f-cf79-678c-6fcaf978bb49",
  "status": "Provisioned",
  "completedDateTime": "2023-02-07T07:05:55.3404527Z",
  "createdDateTime": "2023-02-07T07:05:53.7895614Z",
  "approvalId": null,
  "customData": null,
  "createdBy": {
      "user": {
          "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
      }
  },
  "action": "adminAssign",
  "isValidationOnly": false,
  "justification": "Assign active member access.",
  "scheduleInfo": {
      "startDateTime": "2023-02-07T07:05:55.3404527Z",
      "expiration": {
        "type": "afterDuration",
         "duration": "PT2H"
      }
  },
  "ticketInfo": {
      "ticketNumber": null,
      "ticketSystem": null
  },
  "accessId": "member", 
  "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2", 
  "groupId": "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7",
  "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_6aacaee8-4089-4048-9510-3119367fc943"
}
```

### Example 2: User activates their eligible assignment for PIM for Groups

In the following request, a user identified by **principalId** `3cce9d87-3986-4f19-8335-7ed075408ca2` activates their *eligible membership* to a group managed by PIM identified by **groupId** `2b5ed229-4072-478d-9504-a047ebd4b07d`.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_privilegedaccessgroupassignmentschedulerequest_from_v1_e2"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/assignmentScheduleRequests
Content-Type: application/json

{
  "accessId": "member", 
  "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2", 
  "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d", 
  "action": "selfActivate", 
  "scheduleInfo": { 
    "startDateTime": "2023-02-08T07:43:00.000Z", 
    "expiration": { 
      "type": "afterDuration", 
      "duration": "PT2H" 
    } 
  }, 
  "justification": "Activate assignment."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-privilegedaccessgroupassignmentschedulerequest-from-v1-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/privilegedAccess/group/assignmentScheduleRequests/$entity",
  "id": "6aacaee8-4089-4048-9510-3119367fc943",
  "status": "Provisioned",
  "completedDateTime": "2023-02-07T07:05:55.3404527Z",
  "createdDateTime": "2023-02-07T07:05:53.7895614Z",
  "approvalId": null,
  "customData": null,
  "createdBy": {
      "user": {
          "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
      }
  },
  "action": "selfActivate",
  "isValidationOnly": false,
  "justification": "Activate assignment.",
  "scheduleInfo": {
      "startDateTime": "2023-02-07T07:05:55.3404527Z",
      "expiration": {
        "type": "afterDuration",
         "duration": "PT2H"
      }
  },
  "ticketInfo": {
      "ticketNumber": null,
      "ticketSystem": null
  },
  "accessId": "member", 
  "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2", 
  "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
  "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_6aacaee8-4089-4048-9510-3119367fc943"
}
```

