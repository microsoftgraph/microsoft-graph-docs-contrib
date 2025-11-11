---
title: "List photoUpdateSettings"
description: "Get a list of the photoUpdateSettings objects and their properties."
author: "fondieki"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
ms.date: 08/14/2024
---

# List photoUpdateSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [photoUpdateSettings](../resources/photoupdatesettings.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_list_photoupdatesettings" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-list-photoupdatesettings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /admin/people/photoUpdateSettings
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [photoUpdateSettings](../resources/photoupdatesettings.md) objects in the response body.

## Examples

### Request


```http
GET /admin/people/photoUpdateSettings
```

### Response

If successful, this method returns a 200 OK response code and an photoUpdateSettings object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.photoUpdateSettings",
      "id": "20a03e03-52a3-3c97-6c4f-db600fca32ba",
      "source": "String",
      "allowedRoles": [
        "String"
      ]
    }
  ]
}
```
