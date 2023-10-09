---
title: "Get peopleAdminSettings"
description: "Retrieve the properties and relationships of a peopleAdminSettings object."
author: "rwaithera"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: apiPageType
---

# Get peopleAdminSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [peopleAdminSettings](../resources/peopleadminsettings.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
GET /admin/people
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [peopleAdminSettings](../resources/peopleadminsettings.md) object in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_peopleadminsettings"
}-->
```http
GET https://graph.microsoft.com/beta/admin/people
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.peopleAdminSettings"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/people/$entity",
  "pronouns@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/people/pronouns/$entity",
  "profileCardProperties@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/people/profileCardProperties/$entity",
  "pronouns": {
    "isEnabledInOrganization": true
  },
  "profileCardProperties": [
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
