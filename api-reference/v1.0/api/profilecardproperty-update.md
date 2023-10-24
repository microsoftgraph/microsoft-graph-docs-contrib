---
title: "Update profileCardProperty"
description: "Update the properties of a profileCardProperty object, identified by its directoryPropertyName property."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update profileCardProperty

Namespace: microsoft.graph

Update the properties of a [profileCardProperty](../resources/profilecardproperty.md) object, identified by its **directoryPropertyName** property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PeopleSettings.ReadWrite.All                |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /admin/people/profileCardProperties/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required. |

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|annotations|profileCardAnnotation collection| Any alternative or localized labels an administrator has chosen to specify.|
|directoryPropertyName|String|The name of the directory property that is intended to surface on the profile card. |

## Response

If successful, this method returns a `200 OK` response code and an updated [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request

The following example adds a localized label `Kostnadssenter` for the locale `nb-NO`.

<!-- {
  "blockType": "request",
  "name": "update_profilecardproperty",
  "sampleKeys": ["CustomAttribute1"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/admin/people/profileCardProperties/CustomAttribute1
Content-type: application/json; charset=utf-8

{
  "annotations": [
    {
      "displayName": "Cost Center",
      "localizations": [
        {
          "languageTag": "nb-NO",
          "displayName": "Kostnadssenter"
        }
      ]
    }
  ]
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profileCardProperty"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json; charset=utf-8

{
  "directoryPropertyName": "CustomAttribute1",
  "annotations": [
    {
      "displayName": "Cost Center",
      "localizations": [
        {
          "languageTag": "ru-RU",
          "displayName": "центр затрат"
        },
        {
          "languageTag": "nb-NO",
          "displayName": "Kostnadssenter"
        }
      ]
    }
  ]
}
```
