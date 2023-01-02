---
title: "Create privilegedAccessGroupEligibilityScheduleRequest"
description: "Create a new privilegedAccessGroupEligibilityScheduleRequest object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create privilegedAccessGroupEligibilityScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.ReadWrite.AzureADGroup|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

You can specify the following properties when creating a **privilegedAccessGroupEligibilityScheduleRequest**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|principalId|String|The id of the principal to which the assignment is granted. Required.|
|accessId|privilegedAccessGroupRelationships|The id of privileged access relationship to the group. The possible values are: `owner`, `member`. Required.|
|groupId|String|The id of the group representing the scope of the assignment. Optional.|
|targetScheduleId|String|The id of the schedule which gets created from the request. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object in the response body.

## Examples

### Example 1: Create an eligible schedule request

In the following request, an eligible schedule request is created to assign an eligible owner access.

#### Request
<!-- {
  "blockType": "request",
  "name": "create_privilegedaccessgroupeligibilityschedulerequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest",
  "accessId": "owner", 
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
  "justification": "Assign eligible owner access."
}
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest",
  "id": "534b3d4d-3ba0-8429-3568-5e9cce6c2cbd",
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
```

