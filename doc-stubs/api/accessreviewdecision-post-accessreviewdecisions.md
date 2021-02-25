---
title: "Create accessReviewDecision"
description: "Create a new accessReviewDecision object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create accessReviewDecision
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [accessReviewDecision](../resources/accessreviewdecision.md) object.

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
POST /accessReviewDecisions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewDecision](../resources/accessreviewdecision.md) object.

The following table shows the properties that are required when you create the [accessReviewDecision](../resources/accessreviewdecision.md).

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

If successful, this method returns a `201 Created` response code and an [accessReviewDecision](../resources/accessreviewdecision.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_accessreviewdecision_from_accessreviewdecisions"
}
-->
``` http
POST https://graph.microsoft.com/beta/accessReviewDecisions
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
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewDecision"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewDecision",
  "id": "89cdcc10-cc10-89cd-10cc-cd8910cccd89",
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

