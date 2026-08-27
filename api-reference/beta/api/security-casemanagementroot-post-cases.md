---
title: "Create case management case"
description: "Create a new security case in case management."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create case management case

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [case](../resources/security-casemanagement-case.md) object in case management.

> [!IMPORTANT]
> You can't use this API to create [incidentCase](../resources/security-casemanagement-incidentcase.md) objects. Incident cases are created by the service; API requests can't create new incident cases.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagementroot_post_cases" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagementroot-post-cases-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/cases
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [case](../resources/security-casemanagement-case.md) object. Include `@odata.type` to identify a supported derived type. The `microsoft.graph.security.caseManagement.incidentCase` derived type isn't supported for create requests.

When creating a [genericCase](../resources/security-casemanagement-genericcase.md) object, you can specify all its properties except `id`, `createdBy`, `createdDateTime`, `lastModifiedBy`, and `lastModifiedDateTime`, which are inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). The API ignores these properties if you include them in the request body.

Before constructing **customFields**, call [List customFields](../api/security-casemanagement-casetypeconfiguration-list-customfields.md) at `/security/caseManagement/caseTypeConfigurations/genericCase/customFields`. Use each definition's **displayName**, not its **id**, as the dynamic property name. The name must match exactly one definition. Each dynamic value must be an object that includes the mapped concrete `@odata.type` and the corresponding **value**, **values**, or **valueDateTime** property from the [custom field value mapping](../resources/security-casemanagement-customfieldvalues.md#custom-field-value-mapping); bare values aren't supported.

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the generic case. Optional.|
|closingNotes|String|Notes recorded when the generic case is closed. Optional.|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by the exact **displayName** of each custom field definition. Optional.|
|description|String|The description of the generic case. Optional.|
|displayName|String|The display name of the resource. Required.|
|dueDateTime|DateTimeOffset|The target completion date and time for the generic case. Optional.|
|priority|String|The priority assigned to the generic case. Possible values are: `veryLow`, `low`, `medium`, `high`, and `critical`. Optional.|
|status|String|The tenant-defined lifecycle status of the generic case. Use a **displayName** value returned in the status tree by [List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md) from `/security/caseManagement/caseTypeConfigurations/genericCase/statuses`. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_create_case"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/cases
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.genericCase",
  "displayName": "Security Breach Investigation",
  "status": "active",
  "description": "Investigating potential credential compromise.",
  "assignedTo": "john.doe@contoso.com",
  "priority": "high",
  "customFields": {
    "Customer impact": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "Executive mailbox affected"
    },
    "Affected users": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldNumberValue",
      "value": 12
    },
    "Review date": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldDateTimeValue",
      "valueDateTime": "2026-06-15T09:00:00Z"
    },
    "Affected services": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldOptionsValue",
      "values": [
        "Exchange Online",
        "Microsoft Teams"
      ]
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-create-case-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-create-case-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-create-case-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-create-case-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-create-case-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-create-case-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-create-case-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.case"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.genericCase",
  "id": "987757fb-6ef4-1061-17e7-9de0d088e1dd",
  "createdDateTime": "2026-06-01T10:00:00Z",
  "createdBy": "john.doe@contoso.com",
  "lastModifiedDateTime": "2026-06-01T10:00:00Z",
  "lastModifiedBy": "john.doe@contoso.com",
  "displayName": "Security Breach Investigation",
  "status": "active",
  "description": "Investigating potential credential compromise.",
  "assignedTo": "john.doe@contoso.com",
  "priority": "high",
  "customFields": {
    "Customer impact": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "Executive mailbox affected"
    },
    "Affected users": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldNumberValue",
      "value": 12
    },
    "Review date": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldDateTimeValue",
      "valueDateTime": "2026-06-15T09:00:00Z"
    },
    "Affected services": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldOptionsValue",
      "values": [
        "Exchange Online",
        "Microsoft Teams"
      ]
    }
  }
}
```
