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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_case_update" } -->
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

To update **customFields**, call [List customFields](../api/security-casemanagement-casetypeconfiguration-list-customfields.md) at `/security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/customFields`, where `{caseTypeConfigurationId}` matches the case type. Use each definition's **displayName**, not its **id**, as the dynamic property name. The name must match exactly one definition. Each dynamic value must be an object that includes the mapped concrete `@odata.type` and the corresponding **value**, **values**, or **valueDateTime** property from the [custom field value mapping](../resources/security-casemanagement-customfieldvalues.md#custom-field-value-mapping); bare values aren't supported.

For [genericCase](../resources/security-casemanagement-genericcase.md) objects, all properties can be updated except `id`, `createdBy`, `createdDateTime`, `lastModifiedBy`, and `lastModifiedDateTime`, which are inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). The API ignores these properties if you include them in the request body.

The following properties can be updated for all case types.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the case.|
|status|String|The tenant-defined lifecycle status of the case. Use a **displayName** value returned in the status tree by [List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md) from `/security/caseManagement/caseTypeConfigurations/genericCase/statuses` or `/security/caseManagement/caseTypeConfigurations/incidentCase/statuses`, depending on the case type.|

For [genericCase](../resources/security-casemanagement-genericcase.md) objects, you can also update the following properties.

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the generic case.|
|closingNotes|String|Notes recorded when the generic case is closed.|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by the exact **displayName** of each custom field definition.|
|description|String|The description of the generic case.|
|dueDateTime|DateTimeOffset|The target completion date and time for the generic case.|
|priority|String|The priority assigned to the generic case. Possible values are: `veryLow`, `low`, `medium`, `high`, and `critical`.|

For [incidentCase](../resources/security-casemanagement-incidentcase.md) objects, the following properties are synchronized with the underlying incident. A PATCH request that includes any of these properties returns `202 Accepted` with no response body. The changes might take a few minutes to synchronize and appear on the case.

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the incident case.|
|classification|[microsoft.graph.security.caseManagement.incidentClassification](../resources/security-casemanagement-incidentcase.md#incidentclassification-values)|The classification assigned to the incident.|
|determination|[microsoft.graph.security.caseManagement.incidentDetermination](../resources/security-casemanagement-incidentcase.md#incidentdetermination-values)|The determination assigned to the incident.|
|displayName|String|The display name of the incident case.|
|severity|[microsoft.graph.security.caseManagement.incidentSeverity](../resources/security-casemanagement-incidentcase.md#incidentseverity-values)|The severity assigned to the incident.|
|status|String|The tenant-defined lifecycle status of the incident case. Use a **displayName** value returned in the status tree by [List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md) from `/security/caseManagement/caseTypeConfigurations/incidentCase/statuses`.|

The following incident case properties aren't synchronized with the underlying incident. A PATCH request that updates only these properties returns `200 OK` with the updated [incidentCase](../resources/security-casemanagement-incidentcase.md) object in the response body.

|Property|Type|Description|
|:---|:---|:---|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by the exact **displayName** of each custom field definition.|
|dueDateTime|DateTimeOffset|The target completion date and time for the incident case.|

If a PATCH request includes properties from both groups, the method returns `202 Accepted` with no response body.

## Response

If successful, this method returns one of the following response codes:

- For [incidentCase](../resources/security-casemanagement-incidentcase.md) objects, a request that includes any property synchronized with the underlying incident returns `202 Accepted` with no response body. The changes might take a few minutes to synchronize and appear on the case.
- For [incidentCase](../resources/security-casemanagement-incidentcase.md) objects, a request that updates only properties that aren't synchronized returns `200 OK` and an updated [microsoft.graph.security.caseManagement.incidentCase](../resources/security-casemanagement-incidentcase.md) object in the response body.
- For other case types, this method returns a `200 OK` response code and an updated [microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) object in the response body.

## Examples

### Example 1: Update a generic case

#### Request

The following example shows a request.
# [HTTP](#tab/http)
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
  "closingNotes": "Follow up with the account owner.",
  "customFields": {
    "Customer impact": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "Multiple executive mailboxes affected"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-update-case-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-update-case-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-update-case-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-update-case-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-update-case-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-update-case-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-update-case-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "closingNotes": "Follow up with the account owner.",
  "customFields": {
    "Customer impact": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "Multiple executive mailboxes affected"
    }
  }
}
```

### Example 2: Update synchronized incident case properties

#### Request

The following example updates properties that are synchronized with the underlying incident.
# [HTTP](#tab/http)
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
  "severity": "high"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-update-incident-case-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-update-incident-case-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-update-incident-case-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-update-incident-case-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-update-incident-case-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-update-incident-case-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-update-incident-case-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 202 Accepted
```
