---
title: "Get accessReviewInstanceDecisionItem"
description: "Read the properties and relationships of an accessReviewInstanceDecisionItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get accessReviewInstanceDecisionItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.

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
GET /user/pendingAccessReviewInstances/{accessReviewInstanceId}/decisions/{accessReviewInstanceDecisionItemId}
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

If successful, this method returns a `200 OK` response code and an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_accessreviewinstancedecisionitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/pendingAccessReviewInstances/{accessReviewInstanceId}/decisions/{accessReviewInstanceDecisionItemId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
    "id": "6125050e-050e-6125-0e05-25610e052561",
    "accessReviewId": "String",
    "reviewedBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "reviewedDateTime": "String (timestamp)",
    "decision": "String",
    "justification": "String",
    "appliedBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "appliedDateTime": "String (timestamp)",
    "applyResult": "String",
    "recommendation": "String",
    "target": {
      "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemTarget"
    }
  }
}
```

