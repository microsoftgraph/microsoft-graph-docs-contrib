---
title: "Create manualAlert"
description: "Create a manual security alert in Microsoft 365 Defender."
author: "a-merberg"
ms.date: 05/18/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create manualAlert

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a manual security alert in Microsoft 365 Defender with specified entities and metadata. When the alert is created, the backend automatically creates a new incident to contain the alert, or links the alert to an existing incident if **linkToIncident** is specified.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-alert-post-manualalert-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-alert-post-manualalert-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/alerts_v2
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [manualAlert](../resources/security-manualalert.md) object.

You must include the `@odata.type` property with the value `#microsoft.graph.security.manualAlert` in the request body.

The following table lists the properties that are required when you create a manual alert.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Must be `#microsoft.graph.security.manualAlert`. Required.|
|category|String|MITRE ATT&CK category (for example, `InitialAccess`, `Execution`). Required.|
|description|String|Detailed description of the alert. Maximum 5000 characters. Required.|
|entityDefinitions|[microsoft.graph.security.entityDefinitionInput](../resources/security-entitydefinitioninput.md) collection|Collection of entity definitions associated with the alert. Must contain 1 to 100 items. Required.|
|isExcludedFromCorrelation|Boolean|When `true`, excludes the alert from automatic correlation. Default is `false`. Optional.|
|linkToIncident|Int64|Numeric ID of an existing incident to link to (corresponds to the **incidentId** in the response). If not provided, a new incident is created. Optional.|
|mitreTechniques|String collection|List of MITRE ATT&CK technique IDs (for example, `T1566`, `T1078`). Optional.|
|recommendedActions|String|Recommended remediation actions. Optional.|
|sentinelWorkspace|String|Sentinel workspace identifier for workspace routing. Optional.|
|severity|microsoft.graph.security.alertSeverity|Severity level. The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`. Required.|
|title|String|Title of the alert. Required.|

For the supported **entityIdentifier** values per entity type, see [entityDefinitionInput](../resources/security-entitydefinitioninput.md#supported-entity-identifiers).

## Response

If successful, this method returns a `201 Created` response code and an [alert](../resources/security-alert.md) object in the response body. The response includes the **incidentId** of the automatically created or linked incident.

## Examples

### Example 1: Create a manual alert with a new incident

#### Request

The following example shows a request to create a manual alert. Because **linkToIncident** isn't specified, a new incident is automatically created.

<!-- {
  "blockType": "request",
  "name": "create_manualalert_new_incident"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/alerts_v2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.manualAlert",
  "title": "Suspicious login from TOR exit node",
  "description": "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.",
  "category": "InitialAccess",
  "severity": "high",
  "recommendedActions": "Reset user credentials, enable MFA, review recent user activity",
  "mitreTechniques": ["T1078"],
  "entityDefinitions": [
    {
      "entityType": "user",
      "entityIdentifier": "userPrincipalName",
      "identifierValue": "john.doe@contoso.com",
      "role": "impacted"
    },
    {
      "entityType": "ip",
      "entityIdentifier": "address",
      "identifierValue": "185.220.101.50",
      "role": "related"
    }
  ]
}
```

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
  "id": "da637551227677560813_-961444813",
  "providerAlertId": "manual_da637551227677560813",
  "incidentId": "28282",
  "title": "Suspicious login from TOR exit node",
  "description": "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.",
  "severity": "high",
  "status": "new",
  "classification": "unknown",
  "determination": "unknown",
  "category": "InitialAccess",
  "detectionSource": "manual",
  "serviceSource": "microsoft365Defender",
  "tenantId": "b3cdbae4-eb1d-4b7c-a9e1-8c9f6d8e4f3a",
  "createdDateTime": "2026-05-19T15:30:00Z",
  "lastUpdateDateTime": "2026-05-19T15:30:00Z",
  "recommendedActions": "Reset user credentials, enable MFA, review recent user activity",
  "mitreTechniques": ["T1078"],
  "alertWebUrl": "https://security.microsoft.com/alerts/da637551227677560813_-961444813"
}
```

### Example 2: Create a manual alert linked to an existing incident

#### Request

The following example shows a request to create a manual alert that links to an existing incident.

<!-- {
  "blockType": "request",
  "name": "create_manualalert_link_incident"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/alerts_v2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.manualAlert",
  "title": "Malicious file detected on device",
  "description": "Sandbox analysis revealed malicious behavior in downloaded file.",
  "category": "Execution",
  "severity": "high",
  "recommendedActions": "Isolate device, remove file, scan for additional IOCs",
  "linkToIncident": 28282,
  "entityDefinitions": [
    {
      "entityType": "file",
      "entityIdentifier": "sha256",
      "identifierValue": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
      "role": "related"
    },
    {
      "entityType": "device",
      "entityIdentifier": "deviceName",
      "identifierValue": "DESKTOP-VICTIM01",
      "role": "impacted"
    }
  ]
}
```

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
  "id": "da637551227677560814_-961444814",
  "providerAlertId": "manual_da637551227677560814",
  "incidentId": "28282",
  "title": "Malicious file detected on device",
  "description": "Sandbox analysis revealed malicious behavior in downloaded file.",
  "severity": "high",
  "status": "new",
  "classification": "unknown",
  "determination": "unknown",
  "category": "Execution",
  "detectionSource": "manual",
  "serviceSource": "microsoft365Defender",
  "tenantId": "b3cdbae4-eb1d-4b7c-a9e1-8c9f6d8e4f3a",
  "createdDateTime": "2026-05-19T15:35:00Z",
  "lastUpdateDateTime": "2026-05-19T15:35:00Z",
  "recommendedActions": "Isolate device, remove file, scan for additional IOCs",
  "alertWebUrl": "https://security.microsoft.com/alerts/da637551227677560814_-961444814"
}
```
