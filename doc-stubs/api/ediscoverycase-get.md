---
title: "Get ediscoveryCase"
description: "Read the properties and relationships of an ediscoveryCase object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get ediscoveryCase
Namespace: microsoft.graph

Read the properties and relationships of an [ediscoveryCase](../resources/ediscoverycase.md) object.

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
GET /compliance/ediscovery/cases/{ediscoveryCaseId}
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

If successful, this method returns a `200 OK` response code and an [ediscoveryCase](../resources/ediscoverycase.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_ediscoverycase"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{ediscoveryCaseId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.compliance.ediscovery.contract.ediscoveryCase"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.compliance.ediscovery.contract.ediscoveryCase",
    "description": "String",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "status": "String",
    "closedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "closedDateTime": "String (timestamp)",
    "externalId": "String",
    "id": "eacf10d5-10d5-eacf-d510-cfead510cfea",
    "displayName": "String",
    "createdDateTime": "String (timestamp)"
  }
}
```

