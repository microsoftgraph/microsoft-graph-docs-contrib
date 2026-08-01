---
title: "List statuses"
description: "Get the statusDefinition objects that make up the allowed status tree for a case type."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List statuses

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [statusDefinition](../resources/security-casemanagement-statusdefinition.md) objects that make up the allowed status tree for a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md). Each top-level status carries its inline custom statuses in the **customStatuses** property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_casetypeconfiguration_list_statuses" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-casetypeconfiguration-list-statuses-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/statuses
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [statusDefinition](../resources/security-casemanagement-statusdefinition.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_list_statuses"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/statuses
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.caseManagement.statusDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations('incidentCase')/statuses",
  "value": [
    {
      "id": "2b1f4e6a-9c3d-4b7a-8e21-5f6a7b8c9d01",
      "displayName": "Active",
      "sortOrder": 1,
      "customStatuses": [
        {
          "customStatusId": "3c2f5e7b-0d4e-4c8b-9f32-6a7b8c9d0e12",
          "displayName": "Triage",
          "sortOrder": 1,
          "isFinal": false
        }
      ]
    },
    {
      "id": "4d3f6e8c-1e5f-4d9c-a043-7b8c9d0e1f23",
      "displayName": "Resolved",
      "sortOrder": 2,
      "customStatuses": [
        {
          "customStatusId": "5e4f7e9d-2f60-4ead-b154-8c9d0e1f2a34",
          "displayName": "Closed - Fixed",
          "sortOrder": 1,
          "isFinal": true
        }
      ]
    }
  ]
}
```
