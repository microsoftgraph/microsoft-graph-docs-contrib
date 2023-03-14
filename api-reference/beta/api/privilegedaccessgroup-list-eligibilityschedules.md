---
title: "List eligibilitySchedules"
description: "Get a list of the privilegedAccessGroupEligibilitySchedule objects and their properties."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List eligibilitySchedules
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read](../includes/rbac-for-apis/rbac-pim-groups-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilitySchedules?$filter=groupId eq 'groupId'
GET /identityGovernance/privilegedAccess/group/eligibilitySchedules?filter=principalId eq 'principalId'
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) objects in the response body.

## Examples

### Example 1

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroupeligibilityschedule"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilitySchedules?filter=principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilitySchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilitySchedules/$entity",
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
      "id": "8ba569e8-7024-f5f8-91ec-9b75d92897f1",
      "scheduleInfo": {
          "startDateTime": "2022-04-12T14:44:50.287Z",
          "recurrence": null,
          "expiration": {
              "type": "afterDateTime",
              "endDateTime": "2024-04-10T00:00:00Z",
              "duration": null
          }
      },
      "createdUsing": "77f71919-62f3-4d0c-9f88-0a0391b665cd",
      "createdDateTime": "2022-04-12T14:44:50.287Z",
      "modifiedDateTime": "0001-01-01T08:00:00Z",
      "status": "Provisioned",
      "memberType": "Direct",
      "accessId": "member",
      "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
      "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    }
  ]
}
```

### Example 2

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroupeligibilityschedule"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilitySchedules?$select=accessId,principalId,groupId
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilitySchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilitySchedules/$entity",
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
      "accessId": "member",
      "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
      "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    }
  ]
}
```
