---
author: Yadong1106
description: "Get the collection of pageTemplate objects from the page templates in a site. All page templates in the site are returned."
ms.date: 03/15/2018
title: List PageTemplate
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# List PageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the collection of [pageTemplate](../resources/pagetemplate.md) objects in a site [site](../resources/site.md). All page templates in the site are returned (with pagination). Sort alphabetically by `name` in ascending order.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{site-id}/pagetemplates
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. 

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200` and a list of [pageTemplate](../resources/pagetemplate.md) object in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!--{
	"blockType": "request",
	"name": "get-pagetemplates",
	"scopes": "sites.read.all",
	"tags": "service.sharepoint"
}
-->

### Response

<!--
{
    "blockType": "response",
    "@odata.type": "microsoft.graph.pageTemplate",
    "truncated": true,
    "isCollection":true
}
-->


<!--
{
  "type": "#pagetemplate.annotation",
  "description": "Enumerate the list of page templates in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Enumerate",
  "suppressions": [
  ]
}
-->
