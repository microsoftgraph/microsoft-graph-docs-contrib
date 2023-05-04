---
title: "Get privilegedAccessGroupAssignmentScheduleInstance"
description: "Read the properties and relationships of a privilegedAccessGroupAssignmentScheduleInstance object."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegedAccessGroupAssignmentScheduleInstance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAssignmentSchedule.Read.AzureADGroup, PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAssignmentSchedule.Read.AzureADGroup, PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read-assignmentschedules](../includes/rbac-for-apis/rbac-pim-groups-apis-read-assignmentschedules.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentScheduleInstances/{privilegedAccessGroupAssignmentScheduleInstanceId}
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

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object in the response body.

## Examples

### Example 1

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupassignmentscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentScheduleInstances/48fe5560-de56-2750-ae7c-2bbf1da9e452
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/assignmentScheduleInstances/$entity",
    "id": "48fe5560-de56-2750-ae7c-2bbf1da9e452",
    "startDateTime": null,
    "endDateTime": null,
    "accessId": "member",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "memberType": "Direct",
    "assignmentType": "Assigned",
    "assignmentScheduleId": "48fe5560-de56-2750-ae7c-2bbf1da9e452"
}
```

