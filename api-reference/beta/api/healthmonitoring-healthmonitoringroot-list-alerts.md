---
title: "List alerts"
description: "Get the list of Microsoft Entra health monitoring alerts and their properties from the past 30 days."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 11/01/2024
---

# List alerts

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of the Microsoft Entra health monitoring [alert](../resources/healthmonitoring-alert.md) objects and their properties from the past 30 days.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "healthmonitoring_healthmonitoringroot_list_alerts" } -->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-healthmonitoringroot-list-alerts-permissions.md)]

[!INCLUDE [rbac-healthmonitoring-alert-apis-read](../includes/rbac-for-apis/rbac-healthmonitoring-alert-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /reports/healthMonitoring/alerts
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. `$skip` isn't supported. The default and maximum page sizes are 100 alert objects.

`$orderby` is only supported on `createdDateTime` property.

When no `$expand` query parameter is added, this API doesn't return `resourceSampling` property by default. When you want to retrieve a sample of the resources involved in triggering the alert for root cause investigation, you can add `$expand=enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling` to view `resourceSampling` in [directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [alert](../resources/healthmonitoring-alert.md) objects in the response body.

## Examples

### Example 1: Get all alerts

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_alert1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-alert1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-alert1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-alert1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-alert1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-alert1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-alert1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-alert1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.healthMonitoring.alert)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts",
  "value": [
    {
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
    },
  ]
}
```

### Example 2: Get all active alerts

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_alert2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts?$filter=state eq microsoft.graph.healthmonitoring.alertState'active'&$select=id, alertType
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-alert2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-alert2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-alert2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-alert2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-alert2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-alert2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-alert2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.healthMonitoring.alert)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts(id,alertType)",
  "value": [
    {
      "id": "0c56dfcb-13db-4128-bda2-fc3e42742467",
      "alertType": "mfaSignInFailure"
    },
    {
      "id": "564bc4e2-10f6-4d76-b10c-25657637f748",
      "alertType": "managedDeviceSignInFailure"
    },
  ]
}
```

### Example 3: List the state of all alerts in a specific time range

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_alert3"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts?$filter=createdDateTime gt 2024-06-10T11:23:44Z&$select=id, alertType, createdDateTime, state
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-alert3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-alert3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-alert3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-alert3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-alert3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-alert3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-alert3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.healthMonitoring.alert)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts(id,alertType,createdDateTime,state)",
  "value": [
    {
      "id": "0c56dfcb-13db-4128-bda2-fc3e42742467",
      "alertType": "mfaSignInFailure",
      "createdDateTime": "2024-06-19T11:23:44.1234567Z",
      "state": "active"
    },
    {
      "id": "564bc4e2-10f6-4d76-b10c-25657637f748",
      "alertType": "managedDeviceSignInFailure",
      "createdDateTime": "2024-06-11T01:25:24.1234567Z",
      "state": "active"
    },
  ]
}
```

### Example 4: Use $expand to get all alerts with directory object resource sampling

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_alert4"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alerts?$expand=enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling&$select=alertType, createdDateTime, enrichment'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-alert4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-alert4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-alert4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-alert4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-alert4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-alert4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.healthMonitoring.alert)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alerts(alertType,createdDateTime,enrichment,enrichment/impacts/microsoft.graph.healthMonitoring.directoryObjectImpactSummary/resourceSampling())",
  "value": [
    {
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
    },
  ]
}
```
