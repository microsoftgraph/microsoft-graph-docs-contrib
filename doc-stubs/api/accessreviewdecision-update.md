---
title: "Update accessReviewDecision"
description: "Update the properties of an accessReviewDecision object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update accessReviewDecision
Namespace: microsoft.graph

Update the properties of an [accessReviewDecision](../resources/accessreviewdecision.md) object.

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
PATCH /accessReviewDecisions/{accessReviewDecisionsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewDecision](../resources/accessreviewdecision.md) object.

The following table shows the properties that are required when you update the [accessReviewDecision](../resources/accessreviewdecision.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|accessReviewId|String|**TODO: Add Description**|
|reviewedBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|reviewedDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewResult|String|**TODO: Add Description**|
|justification|String|**TODO: Add Description**|
|appliedBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|appliedDateTime|DateTimeOffset|**TODO: Add Description**|
|applyResult|String|**TODO: Add Description**|
|accessRecommendation|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [accessReviewDecision](../resources/accessreviewdecision.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_accessreviewdecision"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/accessReviewDecisions/{accessReviewDecisionsId}
Content-Type: application/json
Content-length: 457

{
  "@odata.type": "#microsoft.graph.accessReviewDecision",
  "accessReviewId": "String",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String",
  "appliedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "appliedDateTime": "String (timestamp)",
  "applyResult": "String",
  "accessRecommendation": "String"
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
  "@odata.type": "#microsoft.graph.accessReviewDecision",
  "id": "befb65a7-65a7-befb-a765-fbbea765fbbe",
  "accessReviewId": "String",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String",
  "appliedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "appliedDateTime": "String (timestamp)",
  "applyResult": "String",
  "accessRecommendation": "String"
}
```

