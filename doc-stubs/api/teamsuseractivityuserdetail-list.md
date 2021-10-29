---
title: "List teamsUserActivityUserDetails"
description: "Get a list of the teamsUserActivityUserDetail objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List teamsUserActivityUserDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.teamsUserActivityUserDetail not found
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

If successful, this method returns a `200 OK` response code and a collection of [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_teamsuseractivityuserdetail"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.teamsUserActivityUserDetail not found
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsUserActivityUserDetail)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsUserActivityUserDetail",
      "id": "f94d5c86-5c86-f94d-865c-4df9865c4df9",
      "reportRefreshDate": "Date",
      "userPrincipalName": "String",
      "isLicensed": "Boolean",
      "lastActivityDate": "Date",
      "isDeleted": "Boolean",
      "deletedDate": "Date",
      "assignedProducts": [
        "String"
      ],
      "teamChatMessageCount": "Integer",
      "privateChatMessageCount": "Integer",
      "callCount": "Integer",
      "meetingCount": "Integer",
      "meetingsOrganizedCount": "Integer",
      "meetingsAttendedCount": "Integer",
      "adHocMeetingsOrganizedCount": "Integer",
      "adHocMeetingsAttendedCount": "Integer",
      "scheduledOneTimeMeetingsOrganizedCount": "Integer",
      "scheduledOneTimeMeetingsAttendedCount": "Integer",
      "scheduledRecurringMeetingsOrganizedCount": "Integer",
      "scheduledRecurringMeetingsAttendedCount": "Integer",
      "audioDuration": "String (duration)",
      "videoDuration": "String (duration)",
      "screenShareDuration": "String (duration)",
      "hasOtherAction": "Boolean",
      "reportPeriod": "String"
    }
  ]
}
```

