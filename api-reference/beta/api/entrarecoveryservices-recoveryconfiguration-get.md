---
title: "Get recoveryConfiguration"
description: "Read the Microsoft Entra Backup and Recovery configuration for a tenant, including its premium plan status."
author: "tafra00"
ms.date: 11/12/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Get recoveryConfiguration

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the [recoveryConfiguration](../resources/entrarecoveryservices-recoveryconfiguration.md) for a tenant, including its premium plan status. This read-only singleton is available even when the tenant hasn't enabled the premium plan.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entrarecoveryservices-recoveryconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-recoveryconfiguration-get-permissions.md)]

[!INCLUDE [rbac-read](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recovery/configuration
```

## Optional query parameters

This method doesn't support OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.entraRecoveryServices.recoveryConfiguration](../resources/entrarecoveryservices-recoveryconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_recoveryconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/configuration
```


### Response

The following example shows the response for a tenant with the premium plan enabled. For a tenant that has never enabled the premium plan, **status** is `disabled`, and **enabledDateTime** and **lastModifiedDateTime** are `null`.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recovery/configuration/$entity",
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryConfiguration",
  "premiumPlan": {
    "@odata.type": "#microsoft.graph.entraRecoveryServices.premiumPlanConfiguration",
    "status": "enabled",
    "enabledDateTime": "2026-07-17T09:32:00Z"
  },
  "lastModifiedDateTime": "2026-07-17T09:32:00Z"
}
```
