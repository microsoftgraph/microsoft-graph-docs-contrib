---
title: "Create roleEligibilityScheduleRequests"
description: "Create a new unifiedRoleEligibilityScheduleRequest object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create roleEligibilityScheduleRequests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) object. This operation allows both admins and eligible users to add, revoke, or extend eligible assignments.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleEligibilitySchedule.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roleManagement/directory/roleEligibilityScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) object.

The following table shows the optional and required properties when you create the [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md).

|Property|Type|Description|
|:---|:---|:---|
|action|String|Represents the type of the operation on the role eligibility assignment. The possible values are: <ul><li>`AdminAssign`: For administrators to assign role eligibility to users or groups to roles.</li><li>`AdminExtend`: For administrators to extend expiring assignments.</li><li>`AdminUpdate`: For administrators to change existing role assignments.</li><li>`AdminRenew`: For administrators to renew expired assignments.</li><li>`AdminRemove`: For administrators to remove users or groups from eligible roles.</li><li>`UserAdd`: For users to activate their eligible assignments.</li><li>`UserExtend`: For users to request to extend their expiring eligible assignments.</li><li>`UserRemove`: For users to deactivate their active eligible assignments.</li><li>`UserRenew`: For users to request to renew their expired eligible assignments.</li></ul>|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units or all users.|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only.|
|isValidationOnly|Boolean|A boolean that determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create the request about why it is needed. Optional when **action** is `AdminRemove`.|
|principalId|String|Identifier of the principal to which the assignment is being granted to. For example, a user or a group. For groups, they must be assignable to roles, that is, the **isAssignableToRole** of the group property set to `true`.|
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Required. Read only.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the role assignment request. This property is not required when the **action** is `AdminRemove`.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|The ticketInfo object attached to the role assignment request which includes details of the ticket number and ticket system. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) object in the response body.

## Examples

### Example 1: Admin to assign a role eligibility schedule request

In the following request, the admin creates a request to assign eligibility of a role identified by `fdd7a751-b60b-444a-984c-02652fe8fa1c` to a principal identified by **id** `07706ff1-46c7-4847-ae33-3003830675a1`. The scope of the eligibility is all directory objects in the tenant until June 30, 2022 at midnight UTC time.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_unifiedroleeligibilityschedulerequest_from_unifiedroleeligibilityschedulerequests_e1"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests
Content-Type: application/json

{
  "action": "AdminAssign",
  "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
  "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
  "directoryScopeId": "/",
  "principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
  "scheduleInfo": {
    "startDateTime": "2021-07-01T00:00:00Z",
    "expiration": {
      "endDateTime": "2022-06-30T00:00:00Z",
      "type": "AfterDateTime"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleEligibilityScheduleRequests/$entity",
    "id": "672c03bf-226a-42ec-a8b7-3bfab96064a1",
    "status": "Provisioned",
    "createdDateTime": "2021-07-26T18:08:03.1299669Z",
    "completedDateTime": "2021-07-26T18:08:06.2081758Z",
    "approvalId": null,
    "customData": null,
    "action": "AdminAssign",
    "principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
    "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
    "directoryScopeId": "/",
    "appScopeId": null,
    "isValidationOnly": false,
    "targetScheduleId": "672c03bf-226a-42ec-a8b7-3bfab96064a1",
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "displayName": null,
            "id": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2021-07-26T18:08:06.2081758Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2022-06-30T00:00:00Z",
            "duration": null
        }
    },
    "ticketInfo": {
        "ticketNumber": null,
        "ticketSystem": null
    }
}
```

### Example 2: Admin to remove an existing role eligibility schedule request

In the following request, the admin creates a request to revoke the eligibility of a role identified by `fdd7a751-b60b-444a-984c-02652fe8fa1c` to a principal identified by **id** `07706ff1-46c7-4847-ae33-3003830675a1`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_unifiedroleeligibilityschedulerequest_from_unifiedroleeligibilityschedulerequests_AdminRemove_e2"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleRequests
Content-Type: application/json

{
    "action": "AdminRemove",
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
    "directoryScopeId": "/",
    "principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
    "scheduleInfo": {
        "startDateTime": "2021-07-26T18:08:06.2081758Z",
        "expiration": {
            "endDateTime": "2022-06-30T00:00:00Z",
            "type": "AfterDateTime"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-adminremove-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-adminremove-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-adminremove-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-adminremove-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-adminremove-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-unifiedroleeligibilityschedulerequest-from-unifiedroleeligibilityschedulerequests-adminremove-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response. The request returns a response object that shows the status of previously eligible assignment changes as `Revoked`. The principal will no longer see their previously eligible role.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleEligibilityScheduleRequests/$entity",
    "id": "7f88a144-f9a9-4f8c-9623-39c321ae93c2",
    "status": "Revoked",
    "createdDateTime": "2021-08-06T17:59:12.4263499Z",
    "completedDateTime": null,
    "approvalId": null,
    "customData": null,
    "action": "AdminRemove",
    "principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
    "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
    "directoryScopeId": "/",
    "appScopeId": null,
    "isValidationOnly": false,
    "targetScheduleId": null,
    "justification": "Assign User Admin eligibility to IT Helpdesk (User) group",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "displayName": null,
            "id": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2021-07-26T18:08:06.2081758Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2022-06-30T00:00:00Z",
            "duration": null
        }
    },
    "ticketInfo": {
        "ticketNumber": null,
        "ticketSystem": null
    }
}
```
