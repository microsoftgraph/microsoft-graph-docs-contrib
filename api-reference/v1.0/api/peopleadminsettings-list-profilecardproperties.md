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

Get a collection of [profileCardProperty](../resources/profilecardproperty.md) resources for an organization. Each resource is identified by its **directoryPropertyName** property.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_list_profilecardproperties" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-list-profilecardproperties-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /admin/people/profileCardProperties
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          |Description                  |
|:--------------|:----------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [profileCardProperty](../resources/profilecardproperty.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_profilecardproperties"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/admin/people/profileCardProperties
```

### Response

The following example shows the response.

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
              "languageTag": "ru",
              "displayName": "центр затрат"
            }
          ]
        }
      ]
    }
  ]
}
```
