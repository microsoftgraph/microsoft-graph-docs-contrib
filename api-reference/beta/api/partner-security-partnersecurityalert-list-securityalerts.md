---
title: "List securityAlerts"
description: "Get a list of the partnerSecurityAlert objects and their properties."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: apiPageType
ms.date: 07/11/2024
---

# List securityAlerts

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "partner_security_partnersecurityalert_list_securityalerts" } -->
[!INCLUDE [permissions-table](../includes/permissions/partner-security-partnersecurityalert-list-securityalerts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/partner/securityAlerts
```

## Optional query parameters

This method supports the `$count`, `$filter`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_partnersecurityalert"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/partner/securityAlerts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-partnersecurityalert-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-partnersecurityalert-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-partnersecurityalert-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-partnersecurityalert-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-partnersecurityalert-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-partnersecurityalert-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-partnersecurityalert-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-partnersecurityalert-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.partner.security.partnerSecurityAlert)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "d8b202fc-a216-3404-69ef-bdffa445eff6",
      "displayName": "Action Required: Virtual machine connecting to crypto currency mining pool Detected",
      "description": "Analysis of Azure resource network activity detected the resource was connecting to a crypto currency mining pool. This would often be an indication that your Azure resource is compromised.",
      "alertType": "networkConnectionsToCryptoMiningPools",
      "status": "active",
      "severity": "high",
      "confidenceLevel": "medium",
      "customerTenantId": "1889e718-414b-4bad-8bbe-c1135bd39a41",
      "subscriptionId": "5f6e6521-6e5f-4b0b-80aa-bd44fad7a398",
      "valueAddedResellerTenantId": "c296b2ce-8cd1-4346-9e82-d8eccca70d65",
      "catalogOfferId": "MS-AZR-0017G",
      "detectedDateTime": "2024-01-23T16:03:33.05Z",
      "firstObservedDateTime": "2024-01-23T16:03:33.05Z",
      "lastObservedDateTime": "2024-01-23T16:03:33.05Z",
      "resolvedReason": "fraud",
      "resolvedOnDateTime": "2024-02-23T16:03:33.05Z",
      "resolvedBy": "danas@contoso.com",
      "isTest": false,
      "affectedResources": [
        {
          "resourceId": "/subscriptions/subscription-id/resourceGroups/resourcegroup-name/providers/Microsoft.Compute/virtualMachines/vm-name",
          "resourceType": "AzureResource"
        }
      ],
      "activityLogs": [
        {
          "statusFrom": "active",
          "statusTo": "investigating",
          "updatedBy": "samanthab@contoso.com",
          "updatedDateTime": "2023-08-10T08:47:10.8454142Z"
        },
        {
          "statusFrom": "investigating",
          "statusTo": "resolved",
          "updatedBy": "samanthab@contoso.com",
          "updatedDateTime": "2023-08-10T08:47:25.2089246Z"
        }
      ],
      "additionalDetails": {
        "VM_IP": "[  \"vm-ip\"]",
        "MiningPool_IP": "[  \"mining-pool-ip\"]",
        "ConnectionCount": "5",
        "CryptoCurrencyMiningPoolDomainName": "pool-name.com"
      }
    },
    {
      "id": "5f6e6521-6e5f-4b0b-80aa-bd44fad7a398-758e2259-f00b-4dec-8087-0950afe6d6a4",
      "displayName": "Action Required: Subscription Usage Anomaly Detected",
      "description": "Analysis of Azure resource detected anomalies in: Anomalous increase in Machine Learning General purpose CPU deployment regions compared to trend in the last 30 days Subscription is part of a cluster of subscriptions that are controlled from the same login session IP Address.",
      "alertType": "usageAnomalyDetection",
      "status": "investigating",
      "severity": "high",
      "confidenceLevel": "medium",
      "customerTenantId": "1889e718-414b-4bad-8bbe-c1135bd39a41",
      "subscriptionId": "5f6e6521-6e5f-4b0b-80aa-bd44fad7a398",
      "valueAddedResellerTenantId": "c296b2ce-8cd1-4346-9e82-d8eccca70d65",
      "catalogOfferId": null,
      "detectedDateTime": "2024-01-23T16:03:33.05Z",
      "firstObservedDateTime": "2024-01-23T16:03:33.05Z",
      "lastObservedDateTime": "2024-01-23T16:03:33.05Z",
      "resolvedReason": null,
      "resolvedOnDateTime": null,
      "resolvedBy": "danas@contoso.com",
      "isTest": false,
      "affectedResources": [
        {
          "resourceId": "/subscriptions/subscription-id/resourceGroups/resourcegroup-name/providers/Microsoft.Compute/virtualMachines/vm-name",
          "resourceType": "AzureResource"
        }
      ],
      "activityLogs": [
        {
          "statusFrom": "active",
          "statusTo": "investigating",
          "updatedBy": "samanthab@contoso.com",
          "updatedDateTime": "2023-08-10T08:47:10.8454142Z"
        }
      ],
      "additionalDetails": {
        "VM_IP": "[  \"vm-ip\"]",
        "MiningPool_IP": "[  \"mining-pool-ip\"]",
        "ConnectionCount": "5",
        "CryptoCurrencyMiningPoolDomainName": "pool-name.com"
      }
    }
  ]
}
```

