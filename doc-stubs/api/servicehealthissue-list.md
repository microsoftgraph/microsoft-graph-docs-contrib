---
title: "List serviceHealthIssues"
description: "Get a list of the serviceHealthIssue objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List serviceHealthIssues
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [serviceHealthIssue](../resources/servicehealthissue.md) objects and their properties.

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
GET /admin/serviceAnnouncement/issues
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

If successful, this method returns a `200 OK` response code and a collection of [serviceHealthIssue](../resources/servicehealthissue.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_servicehealthissue"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/issues
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.serviceHealthIssue)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
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
  ]
}
```

