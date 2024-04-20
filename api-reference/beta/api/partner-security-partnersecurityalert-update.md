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
PATCH https://graph.microsoft.com/beta/security/partner/securityAlerts/{partnerSecurityAlertId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.partner.security.partnerSecurityAlert",
  "status": "String", 
  "resolvedReason": "String"
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
  "@odata.type": "#microsoft.graph.partner.security.partnerSecurityAlert",
  "id": "d8b202fc-a216-3404-69ef-bdffa445eff6",
  "displayName": "String",
  "description": "String",
  "alertType": "String",
  "status": "String",
  "severity": "String",
  "confidenceLevel": "String",
  "customerTenantId": "String",
  "subscriptionId": "String",
  "valueAddedResellerTenantId": "String",
  "catalogOfferId": "String",
  "detectedDateTime": "String (timestamp)",
  "firstObservedDateTime": "String (timestamp)",
  "lastObservedDateTime": "String (timestamp)",
  "resolvedReason": "String",
  "resolvedOnDateTime": "String (timestamp)",
  "resolvedBy": "String",
  "isTest": "Boolean",
  "affectedResources": [
    {
      "@odata.type": "microsoft.graph.partner.security.affectedResource"
    }
  ],
  "activityLogs": [
    {
      "@odata.type": "microsoft.graph.partner.security.activityLog"
    }
  ],
  "additionalDetails": {
    "@odata.type": "microsoft.graph.partner.security.additionalDataDictionary"
  }
}
```

