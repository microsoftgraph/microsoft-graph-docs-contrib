---
title: "List cloudPcOverviews"
description: "Get a list of the cloudPcOverview objects and their properties."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.topic: reference
---

# List cloudPcOverviews
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managedtenant_list_cloudpcsoverview" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managedtenant-list-cloudpcsoverview-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/cloudPcsOverview
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

If successful, this method returns a `200 OK` response code and a collection of [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcoverview"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/cloudPcsOverview
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcoverview-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-cloudpcoverview-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcoverview-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcoverview-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcoverview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcoverview-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcoverview-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcoverview-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.cloudPcOverview)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id":"8fd04a0b-ed49-46c0-a62d-e7980d829022",
            "organizationDisplayName":"Fabrikam",
            "cloudPcStatus_total": 100,
            "numberOfCloudPcStatusNotProvisioned": 10,
            "numberOfCloudPcStatusProvisioning": 20,
            "numberOfCloudPcStatusProvisioned": 30,
            "numberOfCloudPcStatusUpgrading": 1,
            "numberOfCloudPcStatusInGracePeriod": 2,
            "numberOfCloudPcStatusDeprovisioning": 2,
            "numberOfCloudPcStatusFailed": 30,
            "numberOfCloudPcStatusUnknown": 5,
            "totalCloudPcConnectionStatus": 40,
            "numberOfCloudPcConnectionStatusPending": 10,
            "numberOfCloudPcConnectionStatusRunning": 3,
            "numberOfCloudPcConnectionStatusPassed": 12,
            "numberOfCloudPcConnectionStatusFailed": 15,
            "numberOfCloudPcConnectionStatusUnkownFutureValue": 0,
            "totalEnterpriseLicenses":  43,
            "totalEnterpriseLicenses":  57,
            "lastRefreshedDateTime":"2021-02-01T09:28:32.8260338Z"
        },
        {
            "id":"8fd04a0b-ed49-46c0-a62d-e7980d829051",
            "organizationDisplayName":"Alpine Skis",
            "cloudPcStatus_total": 100,
            "numberOfCloudPcStatusNotProvisioned": 10,
            "numberOfCloudPcStatusProvisioning": 20,
            "numberOfCloudPcStatusProvisioned": 30,
            "numberOfCloudPcStatusUpgrading": 1,
            "numberOfCloudPcStatusInGracePeriod": 2,
            "numberOfCloudPcStatusDeprovisioning": 2,
            "numberOfCloudPcStatusFailed": 30,
            "numberOfCloudPcStatusUnknown": 5,
            "totalCloudPcConnectionStatus": 40,
            "numberOfCloudPcConnectionStatusPending": 10,
            "numberOfCloudPcConnectionStatusRunning": 3,
            "numberOfCloudPcConnectionStatusPassed": 12,
            "numberOfCloudPcConnectionStatusFailed": 15,
            "numberOfCloudPcConnectionStatusUnkownFutureValue": 0,
            "totalEnterpriseLicenses": 43,
            "totalEnterpriseLicenses": 57,
            "lastRefreshedDateTime":"2021-03-01T09:28:32.8260338Z"
        }
    ]
}
```
