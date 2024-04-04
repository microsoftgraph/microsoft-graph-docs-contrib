---
title: "Create retentionLabel"
description: "Create a new retentionLabel object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create retentionLabel
Namespace: microsoft.graph.security

Create a new [retentionLabel](../resources/security-retentionlabel.md) object.

To create a [disposition review stage](../resources/security-dispositionreviewstage.md), include the **actionAfterRetentionPeriod** property in the request body with one of the possible values specified.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/retentionLabels
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [retentionLabel](../resources/security-retentionlabel.md) object.

Specify the following properties when you create a **retentionLabel**.

|Property|Type|Description|
|:---|:---|:---|
|actionAfterRetentionPeriod|microsoft.graph.security.actionAfterRetentionPeriod| Specifies the action to take on a document with this label applied during the retention period. The possible values are: `none`, `delete`, `startDispositionReview`, `unknownFutureValue`. |
|behaviorDuringRetentionPeriod|microsoft.graph.security.behaviorDuringRetentionPeriod|Specifies how the behavior of a document with this label should be during the retention period. The possible values are: `doNotRetain`, `retain`, `retainAsRecord`, `retainAsRegulatoryRecord`, `unknownFutureValue`. |
|descriptionForAdmins|String|Provides label information for the admin. Optional. |
|descriptionForUsers|String|Provides the label information for the user. Optional. |
|displayName|String|Unique string that defines a label name. |
|dispositionReviewStages|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md) collection|Review stages during which reviewers are notified to determine whether a document must be deleted or retained. |
|retentionDuration|[microsoft.graph.security.retentionDuration](../resources/security-retentionduration.md)|Specifies the number of days to retain the content. |
|retentionTrigger|microsoft.graph.security.retentionTrigger|Specifies whether the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: `dateLabeled`, `dateCreated`, `dateModified`, `dateOfEvent`, `unknownFutureValue`. |
|defaultRecordBehavior|microsoft.graph.security.defaultRecordBehavior|Specifies the locked or unlocked state of a record label when it's created. The possible values are: `startLocked`, `startUnlocked`, `unknownFutureValue`. |
|labelToBeApplied|String|Specifies the replacement label to be applied automatically after the retention period of the current label ends. |



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_retentionlabel_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/retentionLabels
Content-Type: application/json
Content-length: 555

{
  "@odata.type": "#microsoft.graph.security.retentionLabel",
  "displayName": "Retention Schedule 10005",
  "behaviorDuringRetentionPeriod": "retain",
  "actionAfterRetentionPeriod": "startDispositionReview",
  "retentionTrigger": "dateOfEvent",
  "retentionEventType@odata.bind": "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')",
  "retentionDuration": {
    "@odata.type": "microsoft.graph.security.retentionDurationInDays",
    "days": 2555
  },
   "dispositionReviewStages": [
    {
      "stageNumber" : 1,
      "name": "Stage1",
      "reviewersEmailAddresses ": [
        "Admin@contoso.onmicrosoft.com"
      ]
    }
  ],
  "descriptionForAdmins": "retain for 7 years",
  "descriptionForUsers": "retain for 7 years",
  "descriptors": {
    "authorityTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')",
    "categoryTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')",
    "citationTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')",
    "departmentTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')",
    "filePlanReferenceTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')"
  },
  "defaultRecordBehavior":"startLocked",
}
```


### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.retentionLabel"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.retentionLabel",
  "id": "64a99fb4-07be-0481-8746-44c15c0eef1f",
  "displayName": "Retention Schedule 10005",
  "behaviorDuringRetentionPeriod": "retain",
  "actionAfterRetentionPeriod": "startDispositionReview",
  "retentionTrigger": "dateOfEvent",
  "retentionDuration": {
    "@odata.type": "microsoft.graph.security.retentionDurationInDays",
    "days": 2555
  },
  "dispositionReviewStages": [
    {
     "stageNumber" : 1,
      "name": "Stage1",
      "reviewersEmailAddresses ": [
        "Admin@contoso.onmicrosoft.com"
      ]
    }
  ],
  "isInUse": true,
  "descriptionForAdmins": "retain for 7 years",
  "descriptionForUsers": "retain for 7 years",
  "defaultRecordBehavior":"startLocked",
  "createdBy": {
   "user": {
      "id": "9563a605-e827-4324-a5a9-09efddff1e90",
      "displayName": "Admin"
    }
  },
  "createdDateTime": "2021-08-23T16:43:55Z",
  "labelToBeApplied": " ",
  "defaultRecordBehavior": "startLocked",
  "descriptors": {
    "authority": {
      "displayName": "Business"
    },
    "category": {
      "displayName": "Accounts Payable",
    },
    "citation": {
      "displayName" : "Contoso Company Policy",
      "citationUrl": "www.citationUrl.com",
      "citationJurisdiction": "Contoso"
    },
    "department": {
      "displayName" : "Finance"
    },
    "filePlanReference": {
      "displayName" : "FIN 01-02-001"
    }
  }
}
```

