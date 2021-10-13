---
title: "unifiedRoleEligibilityScheduleRequest: filterByCurrentUser"
description: "Get a list of the unifiedRoleEligibilityScheduleRequest objects and their properties filtered by a particular user principal"
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleEligibilityScheduleRequest: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleEligibilityScheduleRequest](../resources/unifiedRoleEligibilityScheduleRequest.md) objects and their properties associated with the currently signed in principal object. 

> [!NOTE]
> This method doesn't retrieve objects for groups that the currently signed in user is member of, and which have the eligible assignment.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleEligibilitySchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleEligibilitySchedule.ReadWrite.Directory, RoleManagement.ReadWrite.Directory	|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/RoleEligibilityScheduleRequests/filterByCurrentUser(on='principal')
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|RoleEligibilityScheduleRequestFilterByCurrentUserOptions|Filter to query objects for which the current user is the principal. Allowed value is `principal`. Required. Doesn't retrieve assignments for groups that this user is a member of.|


## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [unifiedRoleEligibilityScheduleRequest](../resources/unifiedRoleEligibilityScheduleRequest.md) collection in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedRoleEligibilityScheduleRequest_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/RoleEligibilityScheduleRequests/filterByCurrentUser(on='principal')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unifiedroleeligibilityschedulerequest-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroleeligibilityschedulerequest-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/unifiedroleeligibilityschedulerequest-filterbycurrentuser-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroleeligibilityschedulerequest-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleEligibilityScheduleRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(unifiedRoleEligibilityScheduleRequest)",
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleEligibilityScheduleRequests/$entity",
      "id": "26bc6813-5457-4302-a482-afafd4e2962a",
      "status": "Provisioned",
      "createdDateTime": "2021-07-26T18:15:30.7671793Z",
      "completedDateTime": "2021-07-26T18:15:33.1266138Z",
      "approvalId": null,
      "customData": null,
      "action": "AdminAssign",
      "principalId": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f",
      "roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
      "directoryScopeId": "/",
      "appScopeId": null,
      "isValidationOnly": false,
      "targetScheduleId": "26bc6813-5457-4302-a482-afafd4e2962a",
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
        "startDateTime": "2021-07-26T18:15:33.1266138Z",
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
  ]
}
```

