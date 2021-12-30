---
title: "List accessReviewScheduleDefinitions"
description: "Get a list of the accessReviewScheduleDefinition objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List accessReviewScheduleDefinitions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties.

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
GET /accessReviewSet/definitions
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

If successful, this method returns a `200 OK` response code and a collection of [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_accessreviewscheduledefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/accessReviewSet/definitions
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewScheduleDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

