---
title: "List galleryImages"
description: "List the properties and relationships of gallery images of the organization."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/19/2024
---

# List galleryImages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the properties and relationships of the [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_galleryimages" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-galleryimages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /deviceManagement/virtualEndpoint/galleryImages
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcgalleryimage"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/galleryImages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcgalleryimage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcgalleryimage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcgalleryimage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcgalleryimage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcgalleryimage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcgalleryimage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcgalleryimage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcGalleryImage)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/virtualEndpoint/galleryImages",
  "value": [
    {
      "id": "microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc",
      "displayName": "Windows 11 Enterprise 23H2",
      "offerDisplayName": "Windows 11 Enterprise",
      "skuDisplayName": "23H2",
      "publisher": "microsoftwindowsdesktop",
      "publisherName": "microsoftwindowsdesktop",
      "offer": "windows-ent-cpc",
      "offerName": "windows-ent-cpc",
      "sku": "win11-23h2-ent-cpc",
      "skuName": "win11-23h2-ent-cpc",
      "recommendedSku": "light",
      "status": "supported",
      "sizeInGB": 64,
      "startDate": "2023-10-31",
      "endDate": "2026-11-10",
      "expirationDate": "2027-05-10",
      "osVersionNumber": "10.0.22631.0",
      "osArchitecture": "x64"
    },
    {
      "id": "microsoftwindowsdesktop_windows-ent-cpc_win11-24H2-ent-cpc",
      "displayName": "Windows 11 Enterprise 24H2",
      "offerDisplayName": "Windows 11 Enterprise",
      "skuDisplayName": "24H2",
      "publisher": "microsoftwindowsdesktop",
      "publisherName": "microsoftwindowsdesktop",
      "offer": "windows-ent-cpc",
      "offerName": "windows-ent-cpc",
      "sku": "win11-24H2-ent-cpc",
      "skuName": "win11-24H2-ent-cpc",
      "recommendedSku": "light",
      "status": "supported",
      "sizeInGB": 64,
      "startDate": "2024-09-30",
      "endDate": "2027-10-11",
      "expirationDate": "2028-04-11",
      "osVersionNumber": "10.0.26100.0",
      "osArchitecture": "x64"
    }
  ]
}
```
