---
title: "Update sourceCollection"
description: "Update the properties of a sourceCollection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update sourceCollection
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sourceCollection](../resources/ediscovery-sourcecollection.md) object.

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
PATCH /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}
PATCH /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/addToReviewSetOperation/sourceCollection
PATCH /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/lastEstimateStatisticsOperation/sourceCollection
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [sourceCollection](../resources/ediscovery-sourcecollection.md) object.

The following table shows the properties that are required when you update the [sourceCollection](../resources/ediscovery-sourcecollection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|contentQuery|String|**TODO: Add Description**|
|tenantSources|tenantSources|**TODO: Add Description**. Possible values are: `allMailboxes`, `allSites`, `unknownFutureValue`.|
|dataSourceScopes|dataSourceScopes|**TODO: Add Description**. Possible values are: `none`, `allTenantMailboxes`, `allTenantSites`, `allCaseCustodians`, `allCaseNoncustodialDataSources`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [sourceCollection](../resources/ediscovery-sourcecollection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_sourcecollection"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}
Content-Type: application/json
Content-length: 291

{
  "@odata.type": "#microsoft.graph.ediscovery.sourceCollection",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "contentQuery": "String",
  "tenantSources": "String",
  "dataSourceScopes": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.sourceCollection",
  "id": "5f0344b2-44b2-5f03-b244-035fb244035f",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "contentQuery": "String",
  "tenantSources": "String",
  "dataSourceScopes": "String"
}
```

