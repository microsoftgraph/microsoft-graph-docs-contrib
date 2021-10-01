---
title: "Get accessReviewScheduleDefinition"
description: "Read the properties and relationships of an accessReviewScheduleDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get accessReviewScheduleDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

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
GET /me/pendingAccessReviewInstances/{accessReviewInstanceId}/definition
GET /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}
GET /users/{usersId}/pendingAccessReviewInstances/{accessReviewInstanceId}/definition
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

If successful, this method returns a `200 OK` response code and an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_accessreviewscheduledefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/{accessReviewInstanceId}/definition
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

