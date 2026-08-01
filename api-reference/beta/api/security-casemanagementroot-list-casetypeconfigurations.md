---
title: "List caseTypeConfigurations"
description: "Get a list of the caseTypeConfiguration objects and their properties."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List caseTypeConfigurations

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) objects and their properties. Each object describes the allowed status tree and the custom-field schema for one case type (`genericCase`, `incidentCase`, or `exposureCase`).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagementroot_list_casetypeconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagementroot-list-casetypeconfigurations-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations
```

## Optional query parameters

This method supports the `$count`, `$expand`, and `$select` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters). Use `$expand=customFields` or `$expand=statuses` to return the contained definitions inline for each case type.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_list_casetypeconfigurations"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.caseManagement.caseTypeConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations",
  "value": [
    {
      "id": "incidentCase",
      "displayName": "Incident",
      "defaultStatusId": "2b1f4e6a-9c3d-4b7a-8e21-5f6a7b8c9d01"
    },
    {
      "id": "exposureCase",
      "displayName": "Exposure",
      "defaultStatusId": "8b7c01c0-5293-4bd0-e487-1f2a3b4c5d67"
    }
  ]
}
```
