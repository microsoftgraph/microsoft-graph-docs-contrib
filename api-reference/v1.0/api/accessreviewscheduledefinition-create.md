---
title: "Create accessReviewScheduleDefinition"
description: "Create a new accessReviewScheduleDefinition object."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# Create accessReviewScheduleDefinition
Namespace: microsoft.graph

Create a new [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| AccessReview.ReadWrite.All  |
|Delegated (personal Microsoft account)|Not supported.|
|Application| AccessReview.ReadWrite.All |

The signed-in user must also be in a directory role that permits them to create an access review.  For more details, see the role and permission requirements for [access reviews](../resources/accessreviewsv2-root.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

The following table shows the properties that are accepted when you create the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of access review series. Required.|
|descriptionForAdmins|String|Context of the review provided to admins.|
|descriptionForReviewers|String|Context of the review provided to reviewers in email notifications.|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|Defines the scope of users reviewed. See [accessReviewScope](../resources/accessreviewscheduledefinition.md). Required.|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| Defines who the reviewers are. If none are specified, the review is a self-review (users reviewed review their own access). See [accessReviewReviewerScope](../resources/accessreviewscheduledefinition.md).|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|If provided, the fallback reviewers will be asked to complete a review if the primary reviewers do not exist. For example, if managers are selected as `reviewers` and a principal under review does not have a manager in Azure AD, the fallback reviewers will be asked to review that principal.|
|instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)|In the case of an all groups review, this determines the scope of which groups will be reviewed. See [accessReviewScope](../resources/accessreviewscheduledefinition.md).|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|The settings for an access review series. Recurrence is determined here. See [accessReviewScheduleSettings](../resources/accessreviewscheduledefinition.md). Required.|

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
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions
Content-Type: application/json
Content-length: 752

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
  "fallbackReviewers": [
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
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "d6bf2f6c-2f6c-d6bf-6c2f-bfd66c2fbfd6",
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
  "fallbackReviewers": [
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

