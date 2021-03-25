---
title: "Update accessReviewHistoryDefinition"
description: "Update the properties of an accessReviewHistoryDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update accessReviewHistoryDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.

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
PATCH /identityGovernance/accessReviews/historyDefinitions/{accessReviewHistoryDefinitionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.

The following table shows the properties that are required when you update the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|displayName|String|**TODO: Add Description**|
|status|accessReviewHistoryStatus|**TODO: Add Description**. Possible values are: `done`, `inprogress`, `error`, `requested`.|
|decisions|accessReviewHistoryDecisionFilter collection|**TODO: Add Description**. Possible values are: `approve`, `deny`, `notReviewed`, `dontKnow`, `notNotified`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|fulfilledDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewHistoryPeriodStartDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|scopes|[accessReviewScope](../resources/accessreviewscope.md) collection|**TODO: Add Description**|
|downloadUri|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_accessreviewhistorydefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/accessReviews/historyDefinitions/{accessReviewHistoryDefinitionId}
Content-Type: application/json
Content-length: 522

{
  "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
  "displayName": "String",
  "status": "String",
  "decisions": [
    "String"
  ],
  "fulfilledDateTime": "String (timestamp)",
  "reviewHistoryPeriodStartDateTime": "String (timestamp)",
  "reviewHistoryPeriodEndDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "downloadUri": "String"
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
  "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
  "id": "2189cb4d-cb4d-2189-4dcb-89214dcb8921",
  "displayName": "String",
  "status": "String",
  "decisions": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "fulfilledDateTime": "String (timestamp)",
  "reviewHistoryPeriodStartDateTime": "String (timestamp)",
  "reviewHistoryPeriodEndDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "downloadUri": "String"
}
```

