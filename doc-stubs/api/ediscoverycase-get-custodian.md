---
title: "Get custodians"
description: "Read the properties and relationships of a custodian object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get custodians
Namespace: microsoft.graph

Read the properties and relationships of a [custodian](../resources/custodian.md) object.

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
GET /compliance/ediscovery/cases/{ediscoveryCaseId}/custodians
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

If successful, this method returns a `200 OK` response code and a [custodian](../resources/custodian.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_custodian"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{ediscoveryCaseId}/custodians
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.custodian"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.custodian",
    "id": "33d7484f-484f-33d7-4f48-d7334f48d733",
    "email": "String",
    "applyHoldToSources": "Boolean",
    "status": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "releasedDateTime": "String (timestamp)",
    "acknowledgedDateTime": "String (timestamp)",
    "displayName": "String"
  }
}
```

