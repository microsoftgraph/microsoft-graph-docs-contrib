---
title: "alert: createAlert"
description: "Create a Microsoft 365 Defender alert by invoking a bound action on the alerts_v2 collection."
author: "a-merberg"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# alert: createAlert

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a Microsoft 365 Defender alert by invoking a bound action on the `alerts_v2` collection and returning the created [alert](../resources/security-alert.md) resource. The action accepts a [createAlertInput](../resources/security-createalertinput.md) complex type that combines alert metadata and creation-specific options in one request object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_alert_createalert" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-alert-createalert-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/alerts_v2/createAlert
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|createAlertInput|[microsoft.graph.security.createAlertInput](../resources/security-createalertinput.md)|Required. The input containing alert properties, incident-linking options, workspace routing, and inline entity definitions.|

## Response

If successful, this action returns a `201 Created` response code and an [alert](../resources/security-alert.md) object in the response body.

## Examples

### Example 1: Create an alert linked to an existing incident

#### Request

The following example shows a request that creates an alert and links it to incident 42.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "alert_createalert_linked"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/alerts_v2/createAlert
Content-Type: application/json

{
  "createAlertInput": {
    "title": "Suspicious PowerShell activity",
    "severity": "medium",
    "description": "PowerShell script execution was identified during analyst triage.",
    "category": "Execution",
    "recommendedActions": "Review the script contents and isolate the affected device.",
    "mitreTechniques": ["T1059.001"],
    "linkToIncident": 42,
    "isExcludedFromCorrelation": false,
    "entityDefinitions": [
      {
        "entityType": "device",
        "entityIdentifier": "deviceId",
        "identifierValue": "d1234567-abcd-4f01-8abc-890123456789",
        "role": "impacted"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/alert-createalert-linked-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/alert-createalert-linked-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/alert-createalert-linked-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/alert-createalert-linked-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/alert-createalert-linked-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/alert-createalert-linked-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.alert"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.alert",
  "id": "ea2c5e5341-c60a-42fc-953f-3da427c85e2d_aml",
  "providerAlertId": "manual_ea2c5e5341-c60a-42fc-953f-3da427c85e2d",
  "incidentId": "42",
  "title": "Suspicious PowerShell activity",
  "description": "PowerShell script execution was identified during analyst triage.",
  "severity": "medium",
  "status": "new",
  "classification": "unknown",
  "determination": "unknown",
  "category": "Execution",
  "serviceSource": "microsoft365Defender",
  "detectionSource": "manual",
  "createdDateTime": "2026-07-27T11:00:00Z",
  "lastUpdateDateTime": "2026-07-27T11:00:00Z",
  "recommendedActions": "Review the script contents and isolate the affected device.",
  "mitreTechniques": ["T1059.001"],
  "alertWebUrl": "https://security.microsoft.com/alerts/ea2c5e5341-c60a-42fc-953f-3da427c85e2d_aml"
}
```

### Example 2: Create an alert with a new incident

#### Request

The following example shows a request that creates an alert without specifying an incident, causing the backend to create a new incident.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "alert_createalert_new_incident"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/alerts_v2/createAlert
Content-Type: application/json

{
  "createAlertInput": {
    "title": "Unauthorized access attempt",
    "severity": "high",
    "description": "Multiple failed login attempts from an unusual location.",
    "category": "InitialAccess",
    "mitreTechniques": ["T1078"],
    "isExcludedFromCorrelation": false,
    "entityDefinitions": [
      {
        "entityType": "user",
        "entityIdentifier": "userPrincipalName",
        "identifierValue": "admin@contoso.com",
        "role": "impacted"
      },
      {
        "entityType": "ip",
        "entityIdentifier": "address",
        "identifierValue": "198.51.100.42",
        "role": "related"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/alert-createalert-new-incident-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/alert-createalert-new-incident-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/alert-createalert-new-incident-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/alert-createalert-new-incident-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/alert-createalert-new-incident-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/alert-createalert-new-incident-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.alert"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.alert",
  "id": "bf3c9e7812-a45b-44dc-8e2f-1a2b3c4d5e6f_aml",
  "providerAlertId": "manual_bf3c9e7812-a45b-44dc-8e2f-1a2b3c4d5e6f",
  "incidentId": "128",
  "title": "Unauthorized access attempt",
  "severity": "high",
  "status": "new",
  "category": "InitialAccess",
  "serviceSource": "microsoft365Defender",
  "detectionSource": "manual",
  "createdDateTime": "2026-07-27T12:30:00Z",
  "lastUpdateDateTime": "2026-07-27T12:30:00Z",
  "alertWebUrl": "https://security.microsoft.com/alerts/bf3c9e7812-a45b-44dc-8e2f-1a2b3c4d5e6f_aml"
}
```
