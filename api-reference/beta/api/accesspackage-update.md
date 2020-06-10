---
title: "Update accessPackage"
description: "Update an existing accessPackage object to change one or more of its properties."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update accessPackage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [accessPackage](../resources/accesspackage.md) object to change one or more of its properties, such as the display name or description.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /accessPackages/{reviewId}
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
In the request body, supply a JSON representation of the parameters of an [accessPackage](../resources/accesspackage.md) object.

The following table shows the properties that can be supplied when you update an accessPackage.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `displayName`             |`String`                                                        | The access package name.  |
| `description`             |`String`                                                        | The description of the access package. |



## Response
If successful, this method returns a `204, No Content` response code.

## Example

##### Request
In the request body, supply a JSON representation of the new properties of the [accessPackage](../resources/accesspackage.md) object.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessPackage"
}-->
```http
PATCH https://graph.microsoft.com/beta/accessPackages/006111db-0810-4494-a6df-904d368bd81b
Content-type: application/json

{
    "displayName":"Catalog One"
}
```


##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackage"
} -->
```http
HTTP/1.1 204 No Content
Content-type: application/json

```

<!--
{
  "type": "#page.annotation",
  "description": "Update accessPackage",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
