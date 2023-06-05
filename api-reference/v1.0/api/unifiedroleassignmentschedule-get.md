---
title: "Get unifiedRoleAssignmentSchedule"
description: "Retrieve the schedule for an active role assignment operation."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get unifiedRoleAssignmentSchedule
Namespace: microsoft.graph

Retrieve the schedule for an active role assignment operation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleAssignmentSchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleAssignmentSchedule.ReadWrite.Directory	|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory	|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleAssignmentSchedules/{unifiedRoleAssignmentScheduleId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignmentschedule"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignmentSchedules/95c690fb-3eb3-4942-a03f-4524aed6f31e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignmentschedule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignmentschedule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignmentschedule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignmentschedule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignmentschedule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignmentschedule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentSchedule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#roleManagement/directory/roleAssignmentSchedules/$entity",
    "id": "95c690fb-3eb3-4942-a03f-4524aed6f31e",
    "principalId": "071cc716-8147-4397-a5ba-b2105951cc0b",
    "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
    "directoryScopeId": "/",
    "appScopeId": null,
    "createdUsing": "95c690fb-3eb3-4942-a03f-4524aed6f31e",
    "createdDateTime": "2022-04-11T11:50:06.343Z",
    "modifiedDateTime": null,
    "status": "Provisioned",
    "assignmentType": "Assigned",
    "memberType": "Direct",
    "scheduleInfo": {
        "startDateTime": "2022-04-11T11:50:06.343Z",
        "recurrence": null,
        "expiration": {
            "type": "noExpiration",
            "endDateTime": null,
            "duration": null
        }
    }
}
```

