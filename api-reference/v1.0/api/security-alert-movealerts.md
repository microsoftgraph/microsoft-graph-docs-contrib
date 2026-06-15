---
title: "alert: moveAlerts"
description: "Move one or more alerts to an incident."
author: "HarelDamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/06/2026
---

# alert: moveAlerts
Namespace: microsoft.graph.security

Move one or more [alert](../resources/security-alert.md) resources to a new or existing [incident](../resources/security-incident.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_alert_movealerts" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-alert-movealerts-permissions.md)]

[!INCLUDE [rbac-security-alerts-incidents-apis-write](../includes/rbac-for-apis/rbac-security-alerts-incidents-apis-write.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/alerts_v2/moveAlerts
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---|:---|:---|
| alertIds | String collection | Required. The IDs of the [alerts](../resources/security-alert.md) to move. |
| incidentId | String | Optional. The ID of the target [incident](../resources/security-incident.md). A request with `null` creates a new incident.  |
| alertComment | String | Optional. A comment to add when moving the alerts. |
| newCorrelationReasons | [microsoft.graph.security.correlationReason](../resources/security-correlationreason.md) | Optional. The correlation reasons to associate with the move operation. This object is a flags enum that allows multiple values to be specified. |

## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.security.mergeResponse](../resources/security-mergeresponse.md) object in the response body.

## Examples

### Example 1: Move alerts to an incident

#### Request

The following example moves two alerts to an existing incident.
<!-- {
  "blockType": "request",
  "name": "security_alert_movealerts_v1"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/alerts_v2/moveAlerts
Content-Type: application/json

{
  "alertIds": [
    "da637551227677560813_-961444813",
    "da637551227677560813_-961444814"
  ],
  "incidentId": "2972395",
  "alertComment": "Moving alerts for investigation consolidation",
  "newCorrelationReasons": "sameAsset, temporalProximity"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.mergeResponse"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "targetIncidentId": "2972395"
}
```
