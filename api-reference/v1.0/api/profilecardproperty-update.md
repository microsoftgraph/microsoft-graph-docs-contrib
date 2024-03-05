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

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "profilecardproperty_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/profilecardproperty-update-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /admin/people/profileCardProperties/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|annotations|profileCardAnnotation collection| Any alternative or localized labels an administrator chose to specify.|
|directoryPropertyName|String|The name of the directory property that is intended to surface on the profile card. |

## Response

If successful, this method returns a `200 OK` response code and an updated [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request

The following example adds a localized label `Kostnadssenter` for the locale `no`.

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
          "languageTag": "no",
          "displayName": "Kostnadssenter"
        }
      ]
    }
  ]
}
```

### Response

The following example shows the response.

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
          "languageTag": "no",
          "displayName": "Kostnadssenter"
        }
      ]
    }
  ]
}
```
