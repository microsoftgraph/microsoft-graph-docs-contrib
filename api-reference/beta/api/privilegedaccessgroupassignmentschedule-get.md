---
title: "Get privilegedAccessGroupAssignmentSchedule"
description: "Read the properties and relationships of a privilegedAccessGroupAssignmentSchedule object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegedAccessGroupAssignmentSchedule
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|

The calling app must also have the Global Administrator or Privileged Role Administrator role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentSchedules/{privilegedAccessGroupAssignmentScheduleId}
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

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object in the response body.

## Examples
Note: this method requires either the principalId or groupId filter property.

### Example 1: Retrieve an assignment schedule that's scoped to a group

#### Request
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupassignmentschedule"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentSchedules?$filter=groupId eq '14b9e371-5c2c-4ee5-a4a5-2980060d4f4e'
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentSchedule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentSchedule",
    "id": "8ba569e8-7024-f5f8-91ec-9b75d92897f1",
    "scheduleInfo": {
      "@odata.type": "microsoft.graph.requestSchedule"
    },
    "createdDateTime": "String (timestamp)",
    "modifiedDateTime": "String (timestamp)",
    "createdUsing": "String",
    "status": "String",
    "principalId": "String",
    "accessId": "String",
    "groupId": "String",
    "memberType": "String",
    "assignmentType": "String"
  }
}
```

### Example 2: Retrieve an assignment schedule that's scoped to a principal

#### Request
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupassignmentschedule"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentSchedules/filterByCurrentUser(on='principal')
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentSchedule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentSchedule",
    "id": "8ba569e8-7024-f5f8-91ec-9b75d92897f1",
    "scheduleInfo": {
      "@odata.type": "microsoft.graph.requestSchedule"
    },
    "createdDateTime": "String (timestamp)",
    "modifiedDateTime": "String (timestamp)",
    "createdUsing": "String",
    "status": "String",
    "principalId": "String",
    "accessId": "String",
    "groupId": "String",
    "memberType": "String",
    "assignmentType": "String"
  }
}
```

