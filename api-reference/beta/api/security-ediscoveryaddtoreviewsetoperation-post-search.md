---
title: "Add ediscoverySearch"
description: "Add search by posting to the search collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add ediscoverySearch
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add search by posting to the search collection.

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
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/addToReviewSetOperation/search/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoverySearch](../resources/security-ediscoverysearch.md) object.

You can specify the following properties when creating an **ediscoverySearch**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|contentQuery|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md). Optional.|
|dataSourceScopes|dataSourceScopes|**TODO: Add Description**. The possible values are: `none`, `allTenantMailboxes`, `allTenantSites`, `allCaseCustodians`, `allCaseNoncustodialDataSources`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `204 No Content` response code and an [ediscoverySearch](../resources/security-ediscoverysearch.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_ediscoverysearch_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/addToReviewSetOperation/search/$ref
Content-Type: application/json
Content-length: 259

{
  "@odata.type": "#microsoft.graph.security.ediscoverySearch",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "contentQuery": "String",
  "dataSourceScopes": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoverySearch"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.ediscoverySearch",
  "id": "e68a48e3-0b6d-4b07-093d-8cede8afb4c0",
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
  "dataSourceScopes": "String"
}
```

