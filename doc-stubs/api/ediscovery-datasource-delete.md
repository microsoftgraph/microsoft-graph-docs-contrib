---
title: "Delete dataSource"
description: "Deletes a dataSource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Delete dataSource
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [dataSource](../resources/ediscovery-datasource.md) object.

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
DELETE /compliance/ediscovery/cases/{caseId}/noncustodialDataSources/{noncustodialDataSourceId}/dataSource
DELETE /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/custodianSources/{dataSourceId}
DELETE /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/additionalSources/{dataSourceId}
DELETE /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/noncustodialSources/{dataSourceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_datasource"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/noncustodialDataSources/{noncustodialDataSourceId}/dataSource
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

