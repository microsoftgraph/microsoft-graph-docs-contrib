---
title: "Update accessReviewScheduleDefinition"
description: "Update the properties of an accessReviewScheduleDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update accessReviewScheduleDefinition
Namespace: microsoft.graph

Update the properties of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /accessReviewSet/definitions/{accessReviewScheduleDefinitionId}
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
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|
|descriptionForAdmins|String|**TODO: Add Description**|
|descriptionForReviewers|String|**TODO: Add Description**|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|backupReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|**TODO: Add Description**|



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
PATCH https://graph.microsoft.com/beta/accessReviewSet/definitions/{accessReviewScheduleDefinitionId}
Content-Type: application/json
Content-length: 750

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
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
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
  "id": "586deb50-eb50-586d-50eb-6d5850eb6d58",
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
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```

