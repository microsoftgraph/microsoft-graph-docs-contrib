---
title: "Update alert"
description: "Update the properties of an alert object."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 11/01/2024
---

# Update alert

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a Microsoft Entra health monitoring [alert](../resources/healthmonitoring-alert.md) object. For example, change an alert's state from active to resolved.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "healthmonitoring_alert_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-alert-update-permissions.md)]

[!INCLUDE [rbac-healthmonitoring-alert-apis-write](../includes/rbac-for-apis/rbac-healthmonitoring-alert-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /reports/healthMonitoring/alerts/{alertId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|state|microsoft.graph.healthMonitoring.alertState|The current lifecycle state of the alert. The possible values are: `active`, `resolved`, `unknownFutureValue`. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_alert"
}
-->
```http
PATCH https://graph.microsoft.com/beta/reports/healthMonitoring/alerts/{alertId}
Content-Type: application/json

{
  "state": "resolved"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-alert-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-alert-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-alert-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-alert-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-alert-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-alert-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-alert-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

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
  "state": "resolved",
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

