---
title: "List decisions"
description: "Get the accessReviewInstanceDecisionItem resources from the decisions navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List decisions
Namespace: microsoft.graph

Get the accessReviewInstanceDecisionItem resources from the decisions navigation property.

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
GET /user/pendingAccessReviewInstances/{accessReviewInstanceId}/decisions
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

If successful, this method returns a `200 OK` response code and a collection of [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_accessreviewinstancedecisionitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/pendingAccessReviewInstances/{accessReviewInstanceId}/decisions
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewInstanceDecisionItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
      "id": "66e48406-8406-66e4-0684-e4660684e466",
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
  ]
}
```

