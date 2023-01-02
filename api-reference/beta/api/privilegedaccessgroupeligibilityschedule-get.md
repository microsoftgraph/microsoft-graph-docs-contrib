---
title: "Get privilegedAccessGroupEligibilitySchedule"
description: "Read the properties and relationships of a privilegedAccessGroupEligibilitySchedule object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegedAccessGroupEligibilitySchedule
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureADGroup, PrivilegedAccess.Read.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.ReadWrite.AzureADGroup, PrivilegedAccess.Read.AzureADGroup|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilitySchedules/{privilegedAccessGroupEligibilityScheduleId}
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

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object in the response body.

## Examples
Note: this method requires either the principalId or groupId filter property.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupeligibilityschedule"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilitySchedules?$filter=groupId eq '14b9e371-5c2c-4ee5-a4a5-2980060d4f4e'
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilitySchedule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
    "id": "37bf27ec-70a7-60e0-8239-aa3ffa7719ac",
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
    "memberType": "String"
  }
}
```

