---
title: "Update partnerSecurityAlert"
description: "Update the properties of a partnerSecurityAlert object."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: apiPageType
---

# Update partnerSecurityAlert

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partner-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partnersecurityalert-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/partner/securityAlerts/{partnerSecurityAlertId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.partner.security.securityAlertStatus|The status of the alert. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`. Required.|
|resolvedReason|microsoft.graph.partner.security.securityAlertResolvedReason|The reason provided by the partner for addressing the alert. The possible values are: `legitimate`, `ignore`, `fraud`, `unknownFutureValue`. Optional.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_partnersecurityalert"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/partner/securityAlerts/d8b202fc-a216-3404-69ef-bdffa445eff6
Content-Type: application/json

{
  "status": "resolved", 
  "resolvedReason": "fraud"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
}
```

