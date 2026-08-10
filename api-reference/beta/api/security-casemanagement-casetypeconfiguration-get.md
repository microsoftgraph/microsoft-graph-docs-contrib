---
title: "Get caseTypeConfiguration"
description: "Read the properties and relationships of a caseTypeConfiguration object."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get caseTypeConfiguration

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) object. The object is keyed by the case type: `genericCase`, `incidentCase`, or `exposureCase`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_casetypeconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-casetypeconfiguration-get-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}
```

## Optional query parameters

This method supports the `$expand` and `$select` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters). Use `$expand=customFields` or `$expand=statuses` to return the contained custom-field or status definitions inline.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_get_casetypeconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.caseTypeConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations/$entity",
  "id": "incidentCase",
  "displayName": "Incident",
  "defaultStatusId": "2b1f4e6a-9c3d-4b7a-8e21-5f6a7b8c9d01"
}
```
