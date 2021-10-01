---
title: "Update accessReviewScheduleDefinition"
description: "Update the properties of an accessReviewScheduleDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update accessReviewScheduleDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

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
PATCH /me/pendingAccessReviewInstances/{accessReviewInstanceId}/definition
PATCH /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}
PATCH /users/{usersId}/pendingAccessReviewInstances/{accessReviewInstanceId}/definition
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

The following table shows the properties that are required when you update the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|additionalNotificationRecipients|[accessReviewNotificationRecipientItem](../resources/accessreviewnotificationrecipientitem.md) collection|**TODO: Add Description**|
|backupReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customData|[accessReviewCustomData](../resources/accessreviewcustomdata.md)|**TODO: Add Description**|
|customDataProvider|String|**TODO: Add Description**|
|descriptionForAdmins|String|**TODO: Add Description**|
|descriptionForReviewers|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_accessreviewscheduledefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/{accessReviewInstanceId}/definition
Content-Type: application/json
Content-length: 1122

{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "additionalNotificationRecipients": [
    {
      "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem"
    }
  ],
  "backupReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "customDataProvider": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "displayName": "String",
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  },
  "status": "String"
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
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "9f2f467a-467a-9f2f-7a46-2f9f7a462f9f",
  "additionalNotificationRecipients": [
    {
      "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem"
    }
  ],
  "backupReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "customDataProvider": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "displayName": "String",
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  },
  "status": "String"
}
```

