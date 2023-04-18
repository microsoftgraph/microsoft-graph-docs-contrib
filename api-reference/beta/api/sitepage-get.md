---
author: rahmit
description: "Returns the metadata for a sitePage in the site pages list in a site."
ms.date: 03/15/2018
title: Get sitePage
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Get sitePage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the metadata for a [sitePage][] in the site pages [list][] in a [site][].

[sitePage]: ../resources/sitePage.md
[list]: ../resources/list.md
[site]: ../resources/site.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

```http
GET /sites/{site-id}/pages/{page-id}/microsoft.graph.sitepage
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderBy`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. 

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |


## Example
