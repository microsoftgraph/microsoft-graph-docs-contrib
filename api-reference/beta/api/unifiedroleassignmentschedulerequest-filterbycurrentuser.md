---
title: "unifiedRoleAssignmentScheduleRequest: filterByCurrentUser"
description: "Get a list of the unifiedRoleAssignmentScheduleRequest objects and their properties filtered by a particular user principal"
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleAssignmentScheduleRequest: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Get a list of the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) objects and their properties associated with a particular principal object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleAssignmentSchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleAssignmentSchedule.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleAssignmentScheduleRequests/filterByCurrentUser(on='principal')
```

## Function parameters
The following table shows the query parameters that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|on|RoleAssignmentScheduleRequestFilterByCurrentUserOptions|Filter to query objects for which the current user is the principal. Allowed value is `principal`. Required.|


## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of[unifiedRoleAssignmentScheduleRequest](../resources/unifiedRoleAssignmentScheduleRequest.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroleassignmentschedulerequest_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/RoleAssignmentScheduleRequests/filterByCurrentUser(on='principal')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unifiedroleassignmentschedulerequest-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroleassignmentschedulerequest-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/unifiedroleassignmentschedulerequest-filterbycurrentuser-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroleassignmentschedulerequest-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleAssignmentScheduleRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(unifiedRoleAssignmentScheduleRequest)",
  "value": [
    {
      "id": "b5a22921-656a-4429-9c4e-59a5f576614d",
      "status": "Provisioned",
      "createdDateTime": "2021-07-27T09:18:42.737Z",
      "completedDateTime": "2021-07-27T09:18:42.78Z",
      "approvalId": null,
      "customData": null,
      "action": "AdminAssign",
      "principalId": "5659e4d9-9ab6-4678-9f1b-72322d469e9b",
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
  ]
}
```

