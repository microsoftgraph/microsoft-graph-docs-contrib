---
title: "accessReviewHistoryDefinition: generateDownloadUri"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# accessReviewHistoryDefinition: generateDownloadUri
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
POST /identityGovernance/accessReviews/historyDefinitions/{accessReviewHistoryDefinitionId}/generateDownloadUri
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "accessreviewhistorydefinition_generatedownloaduri"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/historyDefinitions/{accessReviewHistoryDefinitionId}/generateDownloadUri
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewHistoryDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
    "id": "String (identifier)",
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
}
```

