---
title: "List managedLicenses"
description: "Get information about cloudPcManagedLicense objects that the Cloud PC service manages directly."
author: "Yu-Lan"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List managedLicenses

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get information about [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) objects that the Cloud PC service manages directly.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_managedlicenses" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-managedlicenses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/virtualEndpoint/managedLicenses
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcmanagedlicense"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/managedLicenses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcmanagedlicense-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcmanagedlicense-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcmanagedlicense-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcmanagedlicense-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcmanagedlicense-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcmanagedlicense-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcManagedLicense)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcManagedLicense",
      "id": "7c3adc13-42ff-14c5-c29f-24fb5528f76b",
      "licenseType": "reserve",
      "status": "active",
      "displayName": "Windows 365 Reserve 2 vCPU 8 GB 128 GB",
      "licensesCount": 100,
      "assignedCount": 75,
      "allotmentLicensesCount": 25,
      "subscriptionId": "12345678-1234-1234-1234-123456789012",
      "servicePlanId": "beb10e72-c936-4008-a780-146daa26c0c7",
      "expirationDateTime": "2024-12-31T23:59:59Z",
      "latestLicenseStartDateTime": "2024-01-01T00:00:00Z",
      "nextBillingDateTime": "2024-11-01T00:00:00Z",
      "activeDateTime": "2024-01-01T08:30:00Z"
    }
  ]
}
```

