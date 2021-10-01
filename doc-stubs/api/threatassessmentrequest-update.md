---
title: "Update threatAssessmentRequest"
description: "Update the properties of a threatAssessmentRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update threatAssessmentRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [threatAssessmentRequest](../resources/threatassessmentrequest.md) object.

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
PATCH /me/informationProtection/threatAssessmentRequests/{threatAssessmentRequestId}
PATCH /users/{usersId}/informationProtection/threatAssessmentRequests/{threatAssessmentRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [threatAssessmentRequest](../resources/threatassessmentrequest.md) object.

The following table shows the properties that are required when you update the [threatAssessmentRequest](../resources/threatassessmentrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|category|threatCategory|**TODO: Add Description**. The possible values are: `undefined`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|contentType|threatAssessmentContentType|**TODO: Add Description**. The possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|expectedAssessment|threatExpectedAssessment|**TODO: Add Description**. The possible values are: `block`, `unblock`.|
|requestSource|threatAssessmentRequestSource|**TODO: Add Description**. The possible values are: `undefined`, `user`, `administrator`.|
|status|threatAssessmentStatus|**TODO: Add Description**. The possible values are: `pending`, `completed`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [threatAssessmentRequest](../resources/threatassessmentrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_threatassessmentrequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/informationProtection/threatAssessmentRequests/{threatAssessmentRequestId}
Content-Type: application/json
Content-length: 280

{
  "@odata.type": "#microsoft.graph.threatAssessmentRequest",
  "category": "String",
  "contentType": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "expectedAssessment": "String",
  "requestSource": "String",
  "status": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.threatAssessmentRequest",
  "id": "96d63c74-3c74-96d6-743c-d696743cd696",
  "category": "String",
  "contentType": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "expectedAssessment": "String",
  "requestSource": "String",
  "status": "String"
}
```

