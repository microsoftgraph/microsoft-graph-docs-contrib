---
title: "Get UsageRight"
description: "Read the properties and relationships of an UsageRight object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get UsageRight
Namespace: microsoft.graph

Read the properties and relationships of an [UsageRight](../resources/usageright.md) object.

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
GET /usageRights/{usageRightsId}
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

If successful, this method returns a `200 OK` response code and an [UsageRight](../resources/usageright.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_usageright"
}
-->
``` http
GET https://graph.microsoft.com/beta/usageRights/{usageRightsId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Commerce.Licensing.UsageRight"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.Commerce.Licensing.UsageRight",
    "id": "011669b0-69b0-0116-b069-1601b0691601",
    "catalogId": "String",
    "serviceIdentifier": "String",
    "state": "String"
  }
}
```

