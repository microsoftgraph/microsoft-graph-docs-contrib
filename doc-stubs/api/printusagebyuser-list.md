---
title: "List printUsageByUsers"
description: "Get a list of the printUsageByUser objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List printUsageByUsers
Namespace: microsoft.graph

Get a list of the [printUsageByUser](../resources/printusagebyuser.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.printUsageByUser not found
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

If successful, this method returns a `200 OK` response code and a collection of [printUsageByUser](../resources/printusagebyuser.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_printusagebyuser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0** Collection URI for microsoft.graph.printUsageByUser not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printUsageByUser)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printUsageByUser",
      "id": "799de92b-e92b-799d-2be9-9d792be99d79",
      "usageDate": "Date",
      "completedBlackAndWhiteJobCount": "Integer",
      "completedColorJobCount": "Integer",
      "incompleteJobCount": "Integer",
      "userPrincipalName": "String"
    }
  ]
}
```

