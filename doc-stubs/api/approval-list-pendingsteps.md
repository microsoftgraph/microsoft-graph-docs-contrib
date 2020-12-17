---
title: "List pendingSteps"
description: "Get the approvalStep resources from the pendingSteps navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List pendingSteps
Namespace: microsoft.graph

Get the approvalStep resources from the pendingSteps navigation property.

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
GET /request/approval/pendingSteps
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

If successful, this method returns a `200 OK` response code and a collection of [approvalStep](../resources/approvalstep.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_approvalstep"
}
-->
``` http
GET https://graph.microsoft.com/beta/request/approval/pendingSteps
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.approvalStep)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.approvalStep",
      "id": "8c684b23-4b23-8c68-234b-688c234b688c",
      "displayName": "String",
      "reviewedBy": {
        "@odata.type": "microsoft.graph.identity"
      },
      "reviewedDateTime": "String (timestamp)",
      "reviewResult": "String",
      "justification": "String"
    }
  ]
}
```

