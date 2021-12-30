---
title: "Create accessReviewScheduleDefinition"
description: "Create a new accessReviewScheduleDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create accessReviewScheduleDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

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
POST /accessReviewSet/definitions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

You can specify the following properties when creating an **accessReviewScheduleDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|status|String|**TODO: Add Description** Optional.|
|descriptionForAdmins|String|**TODO: Add Description** Optional.|
|descriptionForReviewers|String|**TODO: Add Description** Optional.|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description** Optional.|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description** Optional.|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description** Optional.|
|backupReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description** Optional.|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description** Optional.|
|additionalNotificationRecipients|[accessReviewNotificationRecipientItem](../resources/accessreviewnotificationrecipientitem.md) collection|**TODO: Add Description** Optional.|
|instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description** Optional.|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|**TODO: Add Description** Optional.|
|stageSettings|[accessReviewStageSettings](../resources/accessreviewstagesettings.md) collection|**TODO: Add Description** Optional.|
|customData|[accessReviewCustomData](../resources/accessreviewcustomdata.md)|**TODO: Add Description** Optional.|
|customDataProvider|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_accessreviewscheduledefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/accessReviewSet/definitions
Content-Type: application/json
Content-length: 1230

{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "displayName": "String",
  "status": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "backupReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "additionalNotificationRecipients": [
    {
      "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  },
  "stageSettings": [
    {
      "@odata.type": "microsoft.graph.accessReviewStageSettings"
    }
  ],
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "customDataProvider": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "6179b37e-b37e-6179-7eb3-79617eb37961",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "backupReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "additionalNotificationRecipients": [
    {
      "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  },
  "stageSettings": [
    {
      "@odata.type": "microsoft.graph.accessReviewStageSettings"
    }
  ],
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "customDataProvider": "String"
}
```

