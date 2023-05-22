---
title: "Create roleAssignmentScheduleRequests"
description: "Create a new unifiedRoleAssignmentScheduleRequest object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create roleAssignmentScheduleRequests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object. This operation allows both admins and users to add, remove, extend, or renew assignments. To run this request, the calling user must have multi-factor authentication (MFA) enforced, and running the query in a session in which they were challenged for MFA. See [Enable per-user Azure AD Multi-Factor Authentication to secure sign-in events](/azure/active-directory/authentication/howto-mfa-userstates).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleAssignmentSchedule.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roleManagement/directory/roleAssignmentScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.

The following table shows the properties that are required when you create the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the unifiedRoleAssignmentScheduleRequest. Key, not nullable, Read-only.|
|action|String|Represents the type of the operation on the role assignment. The possible values are: <ul><li>`AdminAssign`: For administrators to assign roles to users or groups.</li><li>`AdminRemove`: For administrators to remove users or groups from roles.</li><li> `AdminUpdate`: For administrators to change existing role assignments.</li><li>`AdminExtend`: For administrators to extend expiring assignments.</li><li>`AdminRenew`: For administrators to renew expired assignments.</li><li>`SelfActivate`: For users to activate their assignments.</li><li>`SelfDeactivate`: For users to deactivate their active assignments.</li><li>`SelfExtend`: For users to request to extend their expiring assignments.</li><li>`SelfRenew`: For users to request to renew their expired assignments.</li></ul>
|principalId|String|Identifier of the principal to which the assignment is being granted to.|
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Read only.|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. |
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units.|
|isValidationOnly|Boolean|Specifies whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|targetScheduleId|String|ID of the schedule object attached to the assignment.|
|justification|String|A message provided by users and administrators when create the request about why it is needed.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the role assignment request.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|The ticketInfo object attached to the role assignment request which includes details of the ticket number and ticket system.|

## Response

If successful, this method returns a `201 Created` response code and an [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object in the response body.

When the calling user was not challenged for multi-factor authentication during their sign in session, a request with the SelfActivate action fails and returns a `400 Bad request` response code.

## Examples

### Example 1: Admin assigning a directory role to a principal

#### Request

In the following request, the admin creates a request to assign a role identified by `fdd7a751-b60b-444a-984c-02652fe8fa1c` to a principal identified by **id** `07706ff1-46c7-4847-ae33-3003830675a1`. The scope of their role is all directory objects in the tenant and the assignment is permanent, that is, it doesn't expire.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_unifiedroleassignmentschedulerequest_from_unifiedroleassignmentschedulerequests"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleRequests/
Content-Type: application/json

{
  "action": "AdminAssign",
  "justification": "Assign User Admin to IT Helpdesk (User) group",
  "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
  "directoryScopeId": "/",
  "principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
  "scheduleInfo": {
    "startDateTime": "2021-07-01T00:00:00Z",
    "expiration": {
      "type": "NoExpiration"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignmentScheduleRequests/$entity",
  "id": "b5a22921-656a-4429-9c4e-59a5f576614d",
  "status": "Provisioned",
  "createdDateTime": "2021-07-27T09:18:40.2029365Z",
  "completedDateTime": "2021-07-27T09:18:42.7811184Z",
  "approvalId": null,
  "customData": null,
  "action": "AdminAssign",
  "principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
  "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
  "directoryScopeId": "/",
  "appScopeId": null,
  "isValidationOnly": false,
  "targetScheduleId": "b5a22921-656a-4429-9c4e-59a5f576614d",
  "justification": "Assign User Admin to IT Helpdesk (User) group",
  "createdBy": {
    "application": null,
    "device": null,
    "user": {
      "displayName": null,
      "id": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
    }
  },
  "scheduleInfo": {
    "startDateTime": "2021-07-27T09:18:42.7811184Z",
    "recurrence": null,
    "expiration": {
      "type": "noExpiration",
      "endDateTime": null,
      "duration": null
    }
  },
  "ticketInfo": {
    "ticketNumber": null,
    "ticketSystem": null
  }
}
```

### Example 2: User activating their eligible role

#### Request

In the following request, a user identified by **principalId** `c6ad1942-4afa-47f8-8d48-afb5d8d69d2f` activates their own eligible role identified by `9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3`. The scope of their role is all directory objects in the tenant and the assignment is for five hours. To run this request, the calling user must have multi-factor authentication (MFA) enforced, and running the query in a session in which they were challenged for MFA.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_unifiedroleassignmentschedulerequest_from_unifiedroleassignmentschedulerequests_SelfActivate"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleRequests/
Content-Type: application/json

{
    "action": "SelfActivate",
    "principalId": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
    "roleDefinitionId": "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
    "directoryScopeId": "/",
    "justification": "Need to update app roles for selected apps.",
    "scheduleInfo": {
        "startDateTime": "2021-08-17T17:40:00.000Z",
        "expiration": {
            "type": "AfterDuration",
            "duration": "PT5H"
        }
    },
    "ticketInfo": {
        "ticketNumber": "CONTOSO:Normal-67890",
        "ticketSystem": "MS Project"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-selfactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-selfactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-selfactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-selfactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-selfactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-selfactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignmentScheduleRequests/$entity",
    "id": "163daf73-8746-4996-87de-ab71dc624bf9",
    "status": "Granted",
    "createdDateTime": "2021-08-17T17:39:36.7040696Z",
    "completedDateTime": "2021-08-17T17:40:00Z",
    "approvalId": null,
    "customData": null,
    "action": "SelfActivate",
    "principalId": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
    "roleDefinitionId": "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
    "directoryScopeId": "/",
    "appScopeId": null,
    "isValidationOnly": false,
    "targetScheduleId": "163daf73-8746-4996-87de-ab71dc624bf9",
    "justification": "Need to update app roles for selected apps.",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "displayName": null,
            "id": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2021-08-17T17:40:00Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDuration",
            "endDateTime": null,
            "duration": "PT5H"
        }
    },
    "ticketInfo": {
        "ticketNumber": "CONTOSO:Normal-67890",
        "ticketSystem": "MS Project"
    }
}
```
