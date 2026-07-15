---
title: "Update case management case"
description: "Update the properties of a security case in case management."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update case management case

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-case-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-update-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/caseManagement/cases/{caseId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Supply a JSON representation of the resource. For polymorphic resources, include `@odata.type` to identify the concrete case type. The properties that can be updated depend on the case type.

The following properties can be updated for all case types.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the case.|
|status|String|The lifecycle status of the case.|

For [genericCase](../resources/security-casemanagement-genericcase.md) objects, you can also update the following properties.

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the generic case.|
|closingNotes|String|Notes recorded when the generic case is closed.|
|description|String|The description of the generic case.|
|dueDateTime|DateTimeOffset|The target completion date and time for the generic case.|
|priority|String|The priority assigned to the generic case.|

For [incidentCase](../resources/security-casemanagement-incidentcase.md) objects, you can also update the following properties. Changes to incident case properties might be synchronized with the related incident.

|Property|Type|Description|
|:---|:---|:---|
|classification|[microsoft.graph.security.caseManagement.incidentClassification](../resources/security-casemanagement-incidentcase.md#incidentclassification-values)|The classification assigned to the incident.|
|determination|[microsoft.graph.security.caseManagement.incidentDetermination](../resources/security-casemanagement-incidentcase.md#incidentdetermination-values)|The determination assigned to the incident.|
|emailNotificationRecipients|String collection|The email notification recipients for the incident.|
|priorityScore|Int32|The priority score assigned to the incident.|
|severity|[microsoft.graph.security.caseManagement.incidentSeverity](../resources/security-casemanagement-incidentcase.md#incidentseverity-values)|The severity assigned to the incident.|
|summary|String|A summary of the incident.|

## Response

If successful, this method returns one of the following response codes:

- For [incidentCase](../resources/security-casemanagement-incidentcase.md) objects, changes might be synchronized with the related incident. As a result, this method returns a `202 Accepted` response code, and the changes might take a few minutes to apply.
- For other case types, this method returns a `200 OK` response code and an updated [microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) object in the response body.

## Examples

### Example 1: Update a generic case

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_update_case"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.genericCase",
  "displayName": "Case MS-001",
  "status": "Open",
  "description": "Investigating potential credential compromise.",
  "assignedTo": "john.doe@contoso.com",
  "priority": "high",
  "dueDateTime": "2026-06-29T17:54:43Z",
  "closingNotes": "Follow up with the account owner."
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.case"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.genericCase",
  "id": "987757fb-6ef4-1061-17e7-9de0d088e1dd",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com",
  "displayName": "Case MS-001",
  "status": "Open",
  "description": "Investigating potential credential compromise.",
  "assignedTo": "john.doe@contoso.com",
  "priority": "high",
  "dueDateTime": "2026-06-29T17:54:43Z",
  "closingNotes": "Follow up with the account owner."
}
```

### Example 2: Update an incident case

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_update_incident_case"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentCase",
  "displayName": "Incident Case MS-002",
  "status": "InProgress",
  "classification": "truePositive",
  "determination": "phishing",
  "severity": "high",
  "summary": "Credential phishing campaign affecting multiple users."
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 202 Accepted
```
