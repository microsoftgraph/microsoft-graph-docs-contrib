---
title: "Update teamsUserActivityUserDetail"
description: "Update the properties of a teamsUserActivityUserDetail object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update teamsUserActivityUserDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) object.

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
PATCH /teamsUserActivityUserDetail
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|reportRefreshDate|Date|**TODO: Add Description** Optional.|
|userPrincipalName|String|**TODO: Add Description** Optional.|
|isLicensed|Boolean|**TODO: Add Description** Optional.|
|lastActivityDate|Date|**TODO: Add Description** Optional.|
|isDeleted|Boolean|**TODO: Add Description** Optional.|
|deletedDate|Date|**TODO: Add Description** Optional.|
|assignedProducts|String collection|**TODO: Add Description** Optional.|
|teamChatMessageCount|Int64|**TODO: Add Description** Optional.|
|privateChatMessageCount|Int64|**TODO: Add Description** Optional.|
|callCount|Int64|**TODO: Add Description** Optional.|
|meetingCount|Int64|**TODO: Add Description** Optional.|
|meetingsOrganizedCount|Int64|**TODO: Add Description** Optional.|
|meetingsAttendedCount|Int64|**TODO: Add Description** Optional.|
|adHocMeetingsOrganizedCount|Int64|**TODO: Add Description** Optional.|
|adHocMeetingsAttendedCount|Int64|**TODO: Add Description** Optional.|
|scheduledOneTimeMeetingsOrganizedCount|Int64|**TODO: Add Description** Optional.|
|scheduledOneTimeMeetingsAttendedCount|Int64|**TODO: Add Description** Optional.|
|scheduledRecurringMeetingsOrganizedCount|Int64|**TODO: Add Description** Optional.|
|scheduledRecurringMeetingsAttendedCount|Int64|**TODO: Add Description** Optional.|
|audioDuration|Duration|**TODO: Add Description** Optional.|
|videoDuration|Duration|**TODO: Add Description** Optional.|
|screenShareDuration|Duration|**TODO: Add Description** Optional.|
|hasOtherAction|Boolean|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_teamsuseractivityuserdetail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamsUserActivityUserDetail
Content-Type: application/json
Content-length: 1012

{
  "@odata.type": "#microsoft.graph.teamsUserActivityUserDetail",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

