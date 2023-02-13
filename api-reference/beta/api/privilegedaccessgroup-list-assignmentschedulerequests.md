---
title: "List assignmentScheduleRequests"
description: "Get a list of the privilegedAccessGroupAssignmentScheduleRequest objects and their properties."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List assignmentScheduleRequests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentScheduleRequests
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroupassignmentschedulerequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentScheduleRequests
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest",
      "id": "34e963f6-150f-cf79-678c-6fcaf978bb49",
      "status": "String",
      "completedDateTime": "String (timestamp)",
      "createdDateTime": "String (timestamp)",
      "approvalId": "String",
      "customData": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "action": "String",
      "isValidationOnly": "Boolean",
      "justification": "String",
      "scheduleInfo": {
        "@odata.type": "microsoft.graph.requestSchedule"
      },
      "ticketInfo": {
        "@odata.type": "microsoft.graph.ticketInfo"
      },
      "principalId": "String",
      "accessId": "String",
      "groupId": "String",
      "targetScheduleId": "String"
    }
  ]
}
```

