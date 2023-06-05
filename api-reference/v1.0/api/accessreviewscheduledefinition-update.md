---
title: "Update accessReviewScheduleDefinition"
description: "Update an existing accessReviewScheduleDefinition object to change one or more of its properties."
ms.localizationpriority: medium
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# Update accessReviewScheduleDefinition

Namespace: microsoft.graph

Update an existing [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object to change one or more of its properties.

>[!NOTE]
>Any updates made to an accessReviewScheduleDefinition only apply to future instances. Currently running instances cannot be updated.
>Additionally, this API is not intended to update properties, including decisions, on the accessReviewInstance level. See [accessReviewInstance](../resources/accessreviewinstance.md) for more information on instances.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application                            | AccessReview.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /identityGovernance/accessReviews/definitions/{review-id}
```
## Request headers
| Name         | Description |
|:-------------|:------------|
|Authorization|Bearer {token}. Required.|
| Content-type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.

The following table shows the properties accepted to update an accessReviewScheduleDefinition.

| Property | Type | Description |
|:-------------|:------------|:------------|
| descriptionForAdmins | String | Context of the review provided to admins. |
| descriptionForReviewers | String | Context of the review provided to reviewers. |
| displayName | String | Name of access review series. |
| fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|A collection of reviewer scopes used to define the list of fallback reviewers who are notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist.|
| reviewers | [accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|  Defines who the reviewers are. If none are specified, the review is a self-review (users review their own access). The **reviewers** property is only updatable if individual users are assigned as reviewers. See [accessReviewReviewerScope](../resources/accessreviewreviewerscope.md). |
|stageSettings|[accessReviewStageSettings](../resources/accessreviewstagesettings.md) collection| Defines how many stages each instance of an access review series will have. Stages will be created sequentially based on the **dependsOn** property. Each stage can have different set of reviewer, fallback reviewers and settings. Only reviewers and fallback reviewers are updatable. See [accessReviewStageSettings](../resources/accessreviewstagesettings.md).|
| settings | [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) | The settings for an access review series. See [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md). |

A **PUT** request expects the full object to be passed in, which includes all writable properties, not just the properties being updated.

## Response
If successful, this method returns a `204 No Content` response code and no response body.

## Examples

This is an example of updating the displayName of an existing access review series.

### Request
In the request body, supply a JSON representation of the new properties of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessReviewScheduleDefinition"
}-->
```http
PUT https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/60860cdd-fb4d-4054-91ba-f75e04444aa6
Content-type: application/json

{
  "id": "60860cdd-fb4d-4054-91ba-f75e04444aa6",
  "displayName": "Test world UPDATED NAME!",
  "descriptionForAdmins": "Test world",
  "descriptionForReviewers": "Test world",
  "scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers",
    "queryType": "MicrosoftGraph"
  },
  "instanceEnumerationScope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f",
    "queryType": "MicrosoftGraph"
  },
  "reviewers": [],
  "settings": {
    "mailNotificationsEnabled": true,
    "reminderNotificationsEnabled": true,
    "justificationRequiredOnApproval": true,
    "defaultDecisionEnabled": false,
    "defaultDecision": "None",
    "instanceDurationInDays": 3,
    "autoApplyDecisionsEnabled": false,
    "recommendationsEnabled": true,
    "recurrence": {
      "pattern": {
        "type": "weekly",
        "interval": 1
      },
      "range": {
        "type": "noEnd",
        "startDate": "2020-09-15"
      }
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accessreviewscheduledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accessreviewscheduledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accessreviewscheduledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accessreviewscheduledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accessreviewscheduledefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Update accessReviewScheduleDefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
