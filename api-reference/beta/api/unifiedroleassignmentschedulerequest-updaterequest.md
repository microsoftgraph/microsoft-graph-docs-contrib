---
title: "unifiedRoleAssignmentScheduleRequest: updateRequest"
description: "Update a unifiedRoleAssignmentScheduleRequest with the result of a custom extension evaluation."
author: "amanswaika"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 09/16/2026
---

# unifiedRoleAssignmentScheduleRequest: updateRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object with the result of a custom extension evaluation for a Microsoft Entra role assignment request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentschedulerequest_updaterequest_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentschedulerequest-updaterequest-permissions.md)]

[!INCLUDE [rbac-pim-entra-roles-apis](../includes/rbac-for-apis/rbac-pim-entra-roles-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /roleManagement/directory/roleAssignmentScheduleRequests/{unifiedRoleAssignmentScheduleRequestId}/updateRequest
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON object with the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|evaluationId|String|The unique identifier of the custom extension evaluation. Optional.|
|evaluationOutcome|[evaluationOutcome](../resources/enums.md#evaluationoutcome-values)|The result of the custom extension evaluation. The possible values are: `approved`, `denied`, `unknownFutureValue`. Optional.|
|reason|String|The reason for the evaluation outcome. Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The updated schedule for the role assignment. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object in the response body.

## Example

### Request

The following example submits an approved custom extension evaluation.

<!-- {
  "blockType": "request",
  "name": "unifiedroleassignmentschedulerequest_updaterequest"
}
-->
```http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleRequests/95c690fb-3eb3-4942-a03f-4524aed6f31e/updateRequest
Content-Type: application/json

{
  "evaluationId": "d4e5f6a7-b8c9-4d0e-9f1a-2b3c4d5e6f7a",
  "evaluationOutcome": "approved",
  "reason": "The ticket information is valid.",
  "scheduleInfo": {
    "startDateTime": "2026-09-16T19:00:00Z",
    "expiration": {
      "type": "afterDuration",
      "duration": "PT8H"
    }
  }
}
```

### Response

The following example shows the response. The response might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleRequest"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentScheduleRequest",
  "id": "95c690fb-3eb3-4942-a03f-4524aed6f31e",
  "status": "Granted",
  "action": "selfActivate",
  "principalId": "11bb11bb-cc22-dd33-ee44-55ff55ff55ff",
  "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10",
  "directoryScopeId": "/",
  "justification": "Respond to the service incident"
}
```
