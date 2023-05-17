---
title: "List eligibilityScheduleInstances"
description: "Get a list of the privilegedAccessGroupEligibilityScheduleInstance objects and their properties."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List eligibilityScheduleInstances
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedEligibilitySchedule.Read.AzureADGroup, PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedEligibilitySchedule.Read.AzureADGroup, PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read-eligibilityschedules](../includes/rbac-for-apis/rbac-pim-groups-apis-read-eligibilityschedules.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilityScheduleInstances?$filter=groupId eq 'groupId'
GET /identityGovernance/privilegedAccess/group/eligibilityScheduleInstances?filter=principalId eq 'principalId'
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

If successful, this method returns a `200 OK` response code and a collection of [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroupeligibilityscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances$filter=groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/$entity",
  "value": [
    {
      "id": "772d5185-39b7-58be-4915-137ffaa7e42e",
      "startDateTime": "String (timestamp)",
      "endDateTime": null,
      "accessId": null,
      "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
      "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
      "memberType": "Direct",
    },
    {
      "id": "lAPpYvVpN0KRkAEhdxReEBLS8lac5ONCgpgBiOW-8JQ-1",
      "startDateTime": "String (timestamp)",
      "endDateTime": null,
      "accessId": null,
      "principalId": "56f2d212-e49c-42e3-8298-0188e5bef094",
      "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
      "memberType": "Direct",
    }
  ]
}
```

