---
title: "List cloudPcDevices"
description: "Get a list of the cloudPcDevice objects and their properties."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
---

# List cloudPcDevices
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managedtenant_list_cloudpcdevices" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managedtenant-list-cloudpcdevices-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/cloudPcDevices
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$apply`, `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcdevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/cloudPcDevices
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcdevice-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-cloudpcdevice-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcdevice-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcdevice-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcdevice-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcdevice-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcdevice-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcdevice-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.cloudPcDevice)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id": "2fd04a0b-ed49-46c0-a62d-e7980d829058",
            "organizationId": "8fd04a0b-ed49-46c0-a62d-e7980d829118",
            "organizationDisplayName": "Fabrikam",
            "displayName": "Test Cloud PC Device - Deprovisioning",
            "managedDeviceId": "618f7b25-b146-4c0e-a21b-2f1c67e78648",
            "managedDeviceName": "device01",
            "userPrincipalName": "lisa@fabrikam.com",
            "servicePlanName": "Cloud PC Business 2vCPU/8GB/128GB",
            "servicePlanType": "Business",
            "deviceSpecification": "2vCPU/8GB/128GB",
            "status": "deprovisioning",
            "lastRefreshedDateTime": "2022-02-16T11:32:37.5389729Z"
        },
        {
            "id": "1fd04a0b-ed49-46c0-a62d-e7980d829058",
            "organizationId": "4fd04a0b-ed49-46c0-a62d-e7980d829118",
            "organizationDisplayName": "Fabrikam",
            "displayName": "Test Cloud PC Device - Not Provisioned",
            "managedDeviceId": "318f7b25-b146-4c0e-a21b-2f1c67e78648",
            "managedDeviceName": "device02",
            "userPrincipalName": "john@fabrikam.com",
            "servicePlanName": "Cloud PC Enterprise 2vCPU/4GB/64GB",
            "servicePlanType": "Enterprise",
            "deviceSpecification": "2vCPU/4GB/64GB",
            "status": "notProvisioned",
            "lastRefreshedDateTime": "2022-01-16T11:32:33.5382129Z"
        }
    ]
}
```
