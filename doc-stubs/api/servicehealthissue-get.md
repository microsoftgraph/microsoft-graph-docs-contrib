---
title: "Get serviceHealthIssue"
description: "Read the properties and relationships of a serviceHealthIssue object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get serviceHealthIssue
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [serviceHealthIssue](../resources/servicehealthissue.md) object.

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
GET /admin/serviceAnnouncement/issues/{serviceHealthIssueId}
GET /admin/serviceAnnouncement/healthOverviews/{serviceHealthId}/issues/{serviceHealthIssueId}
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

If successful, this method returns a `200 OK` response code and a [serviceHealthIssue](../resources/servicehealthissue.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_servicehealthissue"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/issues/{serviceHealthIssueId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceHealthIssue"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.serviceHealthIssue",
    "id": "4ba43279-3279-4ba4-7932-a44b7932a44b",
    "details": [
      {
        "@odata.type": "microsoft.graph.keyValuePair"
      }
    ],
    "endDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "startDateTime": "String (timestamp)",
    "title": "String",
    "classification": "String",
    "feature": "String",
    "featureGroup": "String",
    "highImpact": "Boolean",
    "impactDescription": "String",
    "isResolved": "Boolean",
    "origin": "String",
    "posts": [
      {
        "@odata.type": "microsoft.graph.serviceHealthIssuePost"
      }
    ],
    "service": "String",
    "status": "String"
  }
}
```

