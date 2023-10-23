---
title: "Add profileCardProperty"
description: "Add a new profileCardProperty resource for an organization."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# Add profileCardProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a new [profileCardProperty](../resources/profilecardproperty.md) for an organization. The new property is identified by its **directoryPropertyName** property.

For more information about how to add properties to the profile card for an organization, see [Add or delete custom attributes on a profile card using the profile card API](/graph/add-properties-profilecard).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
POST /admin/people/profileCardProperties
```

> **Note:** The `/organization/{organizationId}/settings` path is deprecated. Going forward, use the `/admin/people` path.

## Request headers

| Name          |Description                  |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

In the request body, supply a JSON representation of a [profileCardProperty](../resources/profilecardproperty.md) object.

You can specify the following properties when you add a **profileCardProperty** for an organization.

|Property|Type|Description|
|:---|:---|:---|
|annotations|[profileCardAnnotation](../resources/profilecardannotation.md) collection|Any alternative or localized labels that an administrator has chosen to specify.|
|directoryPropertyName|String|The name of the directory property that is intended to surface on the profile card.|

## Response

If successful, this method returns a `201 Created` response code and a new [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "add_profilecardproperty"
}-->
```http
POST https://graph.microsoft.com/beta/admin/people/profileCardProperties
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
HTTP/1.1 201 Created
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
        }
      ]
    }
  ]
}
```
