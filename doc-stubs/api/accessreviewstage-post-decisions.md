---
title: "Create accessReviewInstanceDecisionItem"
description: "Create a new accessReviewInstanceDecisionItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create accessReviewInstanceDecisionItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new accessReviewInstanceDecisionItem object.

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
POST /user/pendingAccessReviewInstances/{accessReviewInstanceId}/stages/{accessReviewStageId}/decisions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.

You can specify the following properties when creating an **accessReviewInstanceDecisionItem**.

|Property|Type|Description|
|:---|:---|:---|
|accessReviewId|String|**TODO: Add Description** Required.|
|reviewedBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description** Optional.|
|reviewedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|decision|String|**TODO: Add Description** Optional.|
|justification|String|**TODO: Add Description** Optional.|
|appliedBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description** Optional.|
|appliedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|applyResult|String|**TODO: Add Description** Optional.|
|recommendation|String|**TODO: Add Description** Optional.|
|target|[accessReviewInstanceDecisionItemTarget](../resources/accessreviewinstancedecisionitemtarget.md)|**TODO: Add Description** Optional.|
|principal|[identity](../resources/identity.md)|**TODO: Add Description** Optional.|
|principalLink|String|**TODO: Add Description** Optional.|
|resource|[accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)|**TODO: Add Description** Optional.|
|resourceLink|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_accessreviewinstancedecisionitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/pendingAccessReviewInstances/{accessReviewInstanceId}/stages/{accessReviewStageId}/decisions
Content-Type: application/json
Content-length: 789

{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
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
  },
  "principal": {
    "@odata.type": "microsoft.graph.identity"
  },
  "principalLink": "String",
  "resource": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
  },
  "resourceLink": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
  "id": "0c358c2c-8c2c-0c35-2c8c-350c2c8c350c",
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
  },
  "principal": {
    "@odata.type": "microsoft.graph.identity"
  },
  "principalLink": "String",
  "resource": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
  },
  "resourceLink": "String"
}
```

