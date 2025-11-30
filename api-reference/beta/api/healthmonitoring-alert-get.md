---
title: "Get alert"
description: "Read the properties and relationships of an alert object."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 11/01/2024
---

# Get alert

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a Microsoft Entra health monitoring [alert](../resources/healthmonitoring-alert.md) object. The returned alert object contains information about the state, type, date, and impact of each alert that fired within your tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "healthmonitoring_alert_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-alert-get-permissions.md)]

[!INCLUDE [rbac-healthmonitoring-alert-apis-read](../includes/rbac-for-apis/rbac-healthmonitoring-alert-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /reports/healthMonitoring/alerts/{alertId}
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

When no `$expand` query parameter is added, this API doesn't return `resourceSampling` property by default. When you want to retrieve a sample of the resources involved in triggering the alert for root cause investigation, you can add `$expand=enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling` to view `resourceSampling` in [directoryObjectImpactSummary](../resources//healthmonitoring-directoryobjectimpactsummary.md).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) object in the response body.

## Examples

### Example 1: Get the properties of the specified alert

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_alert1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-alert1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-alert1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-alert1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-alert1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-alert1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-alert1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-alert1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.healthMonitoring.alert"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts/$entity",
  "id": "0c56dfcb-13db-4128-bda2-fc3e42742467",
  "alertType": "mfaSignInFailure",
  "scenario": "mfa",
  "category": "authentication",
  "createdDateTime": "2024-06-19T11:23:44.1234567Z",
  "state": "active",
  "enrichment": {
    "state": "enriched",
    "impacts": [
      {
        "@odata.type": "#microsoft.graph.healthMonitoring.userImpactSummary",
        "resourceType": "user",
        "impactedCount": 143,
        "impactedCountLimitExceeded": false
      },
      {
        "@odata.type": "#microsoft.graph.healthMonitoring.applicationImpactSummary",
        "resourceType": "application",
        "impactedCount": 1,
        "impactedCountLimitExceeded": true
      }
    ],
    "supportingData": {
      "signIns": "https://graph.microsoft.com/beta/auditLogs/signIns?$filter=((status/errorCode eq 500121) and createdDateTime gt 2024-06-08T11:23:44.1234567Z and createdDateTime le 2024-06-19T11:23:44.1234567Z and (signInEventTypes/any(t:t eq 'interactiveUser' or t eq 'noninteractiveUser')))",
      "audits": "https://graph.microsoft.com/beta/auditLogs/directoryaudits?$filter=(activityDateTime ge 2024-06-08T11:23:44.1234567Z and activityDateTime le 2024-06-19T11:23:44.1234567Z)&$top=50&$orderby=activityDateTime desc"
    }
  },
  "signals": {
    "mfaSignInFailure": "https://graph.microsoft.com/beta/reports/serviceActivity/getMetricsForMfaSignInFailure(inclusiveIntervalStartDateTime=2024-06-08T11:23:44.1234567Z, exclusiveIntervalEndDateTime=2024-06-19T11:23:44.1234567Z, aggregationIntervalInMinutes=5)"
  },
  "documentation": {
    "troubleshootingGuide": "https://go.microsoft.com/fwlink/?linkid=2280158"
  }
}
```

### Example 2: Use $select to retrieve specific properties of an alert

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_alert2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts/{id}?$select=alertType, state, createdDateTime, signals
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-alert2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-alert2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-alert2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-alert2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-alert2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-alert2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-alert2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.healthMonitoring.alert"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts(alertType,state,createdDateTime,signals)/$entity",
  "alertType": "mfaSignInFailure",
  "createdDateTime": "2024-06-19T11:23:44.1234567Z",
  "state": "active",
  "signals": {
    "mfaSignInFailure": "https://graph.microsoft.com/beta/reports/serviceActivity/getMetricsForMfaSignInFailure(inclusiveIntervalStartDateTime=2024-06-08T11:23:44.1234567Z, exclusiveIntervalEndDateTime=2024-06-19T11:23:44.1234567Z, aggregationIntervalInMinutes=5)"
  }
}
```

### Example 3: Use $expand to show resource sampling of an alert

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_alert3"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts/{id}?$expand=enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling&$select=alertType, createdDateTime, enrichment'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-alert3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-alert3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-alert3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-alert3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-alert3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-alert3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.healthMonitoring.alert"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts/$entity",
  "alertType": "mfaSignInFailure",
  "createdDateTime": "2024-06-19T11:23:44.1234567Z",
  "enrichment": {
    "state": "enriched",
    "impacts": [
      {
        "@odata.type": "#microsoft.graph.healthMonitoring.userImpactSummary",
        "resourceType": "user",
        "impactedCount": 143,
        "impactedCountLimitExceeded": false,
        "resourceSampling": []
      },
      {
        "@odata.type": "#microsoft.graph.healthMonitoring.applicationImpactSummary",
        "resourceType": "application",
        "impactedCount": 1,
        "impactedCountLimitExceeded": true,
        "resourceSampling": [
          {
              "id": "63c83fa4-d90c-4274-8460-5463e96f1113"
          }
        ]
      }
    ],
    "supportingData": {
      "signIns": "https://graph.microsoft.com/beta/auditLogs/signIns?$filter=((status/errorCode eq 500121) and createdDateTime gt 2024-06-08T11:23:44.1234567Z and createdDateTime le 2024-06-19T11:23:44.1234567Z and (signInEventTypes/any(t:t eq 'interactiveUser' or t eq 'noninteractiveUser')))",
      "audits": "https://graph.microsoft.com/beta/auditLogs/directoryaudits?$filter=(activityDateTime ge 2024-06-08T11:23:44.1234567Z and activityDateTime le 2024-06-19T11:23:44.1234567Z)&$top=50&$orderby=activityDateTime desc"
    }
  }
}
```

> Note: Currently `resourceSampling` only contains `id` of the resource. In the future, it'll be able to show other properties of the resource as well.
