---
title: "teamsUserActivityUserDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsUserActivityUserDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsUserActivityUserDetails](../api/teamsuseractivityuserdetail-list.md)|[teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) collection|Get a list of the [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) objects and their properties.|
|[Get teamsUserActivityUserDetail](../api/teamsuseractivityuserdetail-get.md)|[teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md)|Read the properties and relationships of a [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) object.|
|[Update teamsUserActivityUserDetail](../api/teamsuseractivityuserdetail-update.md)|[teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md)|Update the properties of a [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) object.|
|[Delete teamsUserActivityUserDetail](../api/teamsuseractivityuserdetail-delete.md)|None|Deletes a [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adHocMeetingsAttendedCount|Int64|**TODO: Add Description**|
|adHocMeetingsOrganizedCount|Int64|**TODO: Add Description**|
|assignedProducts|String collection|**TODO: Add Description**|
|audioDuration|Duration|**TODO: Add Description**|
|callCount|Int64|**TODO: Add Description**|
|deletedDate|Date|**TODO: Add Description**|
|hasOtherAction|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isDeleted|Boolean|**TODO: Add Description**|
|isLicensed|Boolean|**TODO: Add Description**|
|lastActivityDate|Date|**TODO: Add Description**|
|meetingCount|Int64|**TODO: Add Description**|
|meetingsAttendedCount|Int64|**TODO: Add Description**|
|meetingsOrganizedCount|Int64|**TODO: Add Description**|
|privateChatMessageCount|Int64|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|scheduledOneTimeMeetingsAttendedCount|Int64|**TODO: Add Description**|
|scheduledOneTimeMeetingsOrganizedCount|Int64|**TODO: Add Description**|
|scheduledRecurringMeetingsAttendedCount|Int64|**TODO: Add Description**|
|scheduledRecurringMeetingsOrganizedCount|Int64|**TODO: Add Description**|
|screenShareDuration|Duration|**TODO: Add Description**|
|teamChatMessageCount|Int64|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|videoDuration|Duration|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsUserActivityUserDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsUserActivityUserDetail",
  "id": "String (identifier)",
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

