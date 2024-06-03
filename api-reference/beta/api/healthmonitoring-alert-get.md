---
title: "Get alert"
description: "Read the properties and relationships of a microsoft.graph.healthMonitoring.alert object."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Get alert

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "healthmonitoring-alert-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-alert-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/healthMonitoring/alerts/{alertId}
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

When no `$expand` query parameter is added, this API does not return `resourceSampling` property by default. To view `resourceSampling` in [directoryObjectImpactSummary](../resources//healthmonitoring-directoryobjectimpactsummary.md), you can add `$expand=enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "healthmonitoring_get_alert"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts/{alertId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.healthMonitoring.alert"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.healthMonitoring.alert",
    "id": "34e36570-f30c-6b6f-e922-262b19f1c68b",
    "alertType": "String",
    "scenario": "String",
    "category": "String",
    "createdDateTime": "String (timestamp)",
    "state": "String",
    "enrichment": {
      "@odata.type": "microsoft.graph.healthMonitoring.enrichment"
    },
    "signals": {
      "@odata.type": "microsoft.graph.healthMonitoring.signals"
    },
    "documentation": {
      "@odata.type": "microsoft.graph.healthMonitoring.documentation"
    }
  }
}
```

