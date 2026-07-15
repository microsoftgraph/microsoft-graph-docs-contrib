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

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagementroot-post-cases-permissions"
}
-->
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

You can specify the following properties when creating a **case**.

The **customFields** property is an open object keyed by custom field identifier. Each value must include an `@odata.type` annotation for the concrete custom field value type.

|Property|Type|Description|
|:---|:---|:---|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by custom field identifier. Optional.|
|displayName|String|The display name of the resource. Required.|
|status|String|The lifecycle status of the resource. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) object in the response body.

## Examples

### Request

The following example shows a request.
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
    "customerImpact": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "Executive mailbox affected"
    }
  }
}
```

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
    "customerImpact": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "Executive mailbox affected"
    }
  }
}
```
