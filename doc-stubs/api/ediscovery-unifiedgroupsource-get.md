---
title: "Get unifiedGroupSource"
description: "Read the properties and relationships of an unifiedGroupSource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get unifiedGroupSource
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) object.

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
GET /compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/unifiedGroupSources/{unifiedGroupSourceId}
GET /compliance/ediscovery/cases/{caseId}/legalHolds/{legalHoldId}/unifiedGroupSources/{unifiedGroupSourceId}
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

If successful, this method returns a `200 OK` response code and an [unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_unifiedgroupsource"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/unifiedGroupSources/{unifiedGroupSourceId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.unifiedGroupSource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.ediscovery.unifiedGroupSource",
    "id": "7f6666c8-66c8-7f66-c866-667fc866667f",
    "displayName": "String",
    "createdDateTime": "String (timestamp)",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "includedSources": "String"
  }
}
```

