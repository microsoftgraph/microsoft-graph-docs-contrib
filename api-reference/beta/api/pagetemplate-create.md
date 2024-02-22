---
author: Yadong1106
description: "Create a new page template in the templates folder in a site."
ms.date: 05/07/2018
title: Create a new page template in a site
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Create a page template in a site

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [pageTemplate](../resources/pagetemplate.md) in the templates folder in a [site](../resources/site.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{site-id}/pagetemplates
```
## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [pageTemplate](../resources/pagetemplate.md) resource to create.

> **Notes:** :
> 1. To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.pageTemplate` must be included in the request body.
> 2. If you're using the response from the [Get pageTemplate](../api/pagetemplate-get.md) operation to create a **page template**, we recommend that you add the HTTP header `Accept: application/json;odata.metadata=none`. This will remove all OData metadata from the response. You can also manually remove all OData metadata.
## Response

If successful, this method returns a `201` and the created [pageTemplate](../resources/pagetemplate.md) object.

## Example

The following example shows how to create a new page template.

### Request

<!-- { "blockType": "request", "name": "create-pagetemplate", "scopes": "sites.readwrite.all" } -->


### Response

If successful, this method returns a [pageTemplate](../resources/pagetemplate.md) in the response body for the created page template.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.pageTemplate", "truncated": true } -->


**Note:** The response object is truncated for clarity. Default properties will be returned from the actual call.

[list]: ../resources/list.md
[listitem]: ../resources/listitem.md
[site]: ../resources/site.md
[pageTemplate]: ../resources/pagetemplate.md

<!--
{
  "type": "#pagetemplate.annotation",
  "description": "Create a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Create",
  "suppressions": []
}
-->
