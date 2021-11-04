---
title: "Update retentionLabel"
description: "Update the properties of a retentionLabel object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Update retentionLabel
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [retentionLabel](../resources/recordsmanagement-retentionlabel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**recordsManagement.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not supported**|
|Application|**recordsManagement.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /compliance/recordsManagement/labels/{retentionLabelId}
PATCH /compliance/recordsManagement/events/{retentionEventId}/labels/{retentionLabelId}
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
|displayName|String|**Unique string defining the name of the label** Optional.|
|behaviorDuringRetentionPeriod|behaviorDuringRetentionPeriod|**Specifies the behaviour of a document that has been labeled with this label during the retention period**. The possible values are: `doNotRetain`, `retain`, `retainAsRecord`, `retainAsRegulatoryRecord`, `unknownFutureValue`. Optional.|
|actionAfterRetentionPeriod|actionAfterRetentionPeriod|**Specifies the action of a document that has been labeled with this label after the retention period**. The possible values are: `none`, `delete`, `startDispositionReview`, `unknownFutureValue`. Optional.|
|retentionTrigger|retentionTrigger|**Specifies if the retention duration is calculated from the content creation date, labeled date, or last modification date**. The possible values are: `dateLabeled`, `dateCreated`, `dateModified`, `dateOfEvent`, `unknownFutureValue`. Optional.|
|retentionDurationInDays|Int32|**Specifies the number of days to retain the content** Optional.|
|isInUse|Boolean|**Specifies if the label is currently being used** Optional.|
|descriptionForAdmins|String|**Optional information about the label for the Admin** Optional.|
|descriptionForUsers|String|**Optional information about the label for the User** Optional.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|**The user who created the entity.** Optional.|
|createdDateTime|DateTimeOffset|**The date time when the entity was created.** Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|**The latest user who modified the entity.** Optional.|
|lastModifiedDateTime|DateTimeOffset|**The latest date time when the entity was modified.** Optional.|
|dispositionReviewStages|[microsoft.graph.recordsManagement.dispositionReviewStage](../resources/recordsmanagement-dispositionreviewstage.md) collection|**A multi stage collection of reviewers that will be notified and have to approve before an item is deleted** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [retentionLabel](../resources/recordsmanagement-retentionlabel.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_retentionlabel"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/recordsManagement/labels/{retentionLabelId}
Content-Type: application/json
Content-length: 570

{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionLabel",
  "displayName": "String",
  "behaviorDuringRetentionPeriod": "String",
  "actionAfterRetentionPeriod": "String",
  "retentionTrigger": "String",
  "retentionDurationInDays": "Integer",
  "isInUse": "Boolean",
  "descriptionForAdmins": "String",
  "descriptionForUsers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "dispositionReviewStages": [
    {
      "@odata.type": "microsoft.graph.recordsManagement.dispositionReviewStage"
    }
  ]
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
  "@odata.type": "#microsoft.graph.recordsManagement.retentionLabel",
  "id": "4cce81b5-81b5-4cce-b581-ce4cb581ce4c",
  "displayName": "String",
  "behaviorDuringRetentionPeriod": "String",
  "actionAfterRetentionPeriod": "String",
  "retentionTrigger": "String",
  "retentionDurationInDays": "Integer",
  "isInUse": "Boolean",
  "descriptionForAdmins": "String",
  "descriptionForUsers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "dispositionReviewStages": [
    {
      "@odata.type": "microsoft.graph.recordsManagement.dispositionReviewStage"
    }
  ]
}
```

