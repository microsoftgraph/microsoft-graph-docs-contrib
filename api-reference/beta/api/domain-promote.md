---
title: "domain: promote"
description: "Promote a verified subdomain to the root domain."
author: "franqq"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# domain: promote

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Promote a verified subdomain to the root domain. A verified domain has its **isVerified** property set to `true`.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions  |
|:--------------------|:-------------|
|Delegated (work or school account) | Domain.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Domain.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /domains/{id}/promote
```

> For {id}, specify the domain with its fully qualified domain name.

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type  | application/json |

## Request body

## Response

If successful, this method returns `200 OK` response code with a boolean value of `true`.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "domain_promote"
}-->
```http
POST https://graph.microsoft.com/beta/domains/contoso.com/promote
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "domain: promote",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
