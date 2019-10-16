---
title: "Update accesspackagecatalog"
description: "Update the properties of accesspackagecatalog object."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Update accesspackagecatalog

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of [accessPackageCatalog](../resources/accesspackagecatalog.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | `EntitlementManagement.ReadWrite.All`. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /accessPackageCatalogs/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|The description of the access package catalog.|
|displayName|String|The display name of the access package catalog.|
|isExternallyVisible|Boolean|Whether the access packages in this catalog can be requested by users outside of the tenant.|


## Response

If successful, this method returns a `204 OK` response code.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_accesspackagecatalog"
}-->

```http
PATCH https://graph.microsoft.com/beta/accessPackageCatalogs/{id}
Content-type: application/json

{
  "displayName": "displayName-value",
  "description": "description-value",
  "isExternallyVisible": true
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageCatalog"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update accesspackagecatalog",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
