---
title: "List profileCardProperties"
description: "Get a collection of profileCardProperty resources for an organization."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# List profileCardProperties

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of [profileCardProperty](../resources/profilecardproperty.md) resources for an organization. Each resource is identified by its **directoryPropertyName** property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PeopleSettings.Read.All                     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /admin/people/profileCardProperties
```

> **Note:** The `/organization/{organizationId}/settings` path is deprecated. Going forward, use the `/admin/people` path.

## Optional query parameters

This method supports the `$select`, `$filter`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          |Description                  |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [profileCardProperty](../resources/profilecardproperty.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "list_profilecardproperties"
}-->
```http
GET https://graph.microsoft.com/beta/admin/people/profileCardProperties
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.profileCardProperty)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "directoryPropertyName": "CustomAttribute1",
      "annotations": [
        {
          "displayName": "Cost Center",
          "localizations": [
            {
              "languageTag": "ru-RU",
              "displayName": "центр затрат"
            }
          ]
        }
      ]
    }
  ]
}
```
