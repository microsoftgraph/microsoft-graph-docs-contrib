---
title: "List appManagementAudit objects"
description: "Get Microsoft Entra application management audit logs."
author: "yclkvnc"
ms.date: 08/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List appManagementAudit objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [appManagementAudit](../resources/appmanagementaudit.md) objects that represent Microsoft Entra application management audit logs.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "appmanagementaudit_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/appmanagementaudit-list-permissions.md)]

[!INCLUDE [rbac-directoryaudit-apis](../includes/rbac-for-apis/rbac-directoryaudit-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /auditLogs/directoryAudits/microsoft.graph.appManagementAudit
```

## Optional query parameters

This method supports the `$filter` (`eq`) and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appManagementAudit](../resources/appmanagementaudit.md) objects in the response body.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_appmanagementaudit"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/directoryAudits/microsoft.graph.appManagementAudit
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appManagementAudit"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.appManagementAudit",
      "id": "B2C_491230e0-ffbd-44d0-ae95-914bb5534bf8",
      "category": "ApplicationManagement",
      "appliedAppManagementPolicyRestrictions": [
        {
          "restrictionType": "passwordAddition",
          "restrictionState": "audit",
          "restrictionResult": "allowed",
          "auditResult": "wouldHaveBeenBlocked",
          "policyId": "c6a3b713-1251-474a-9ea9-67753933af74",
          "policyType": "tenant",
          "restrictionDetails": {},
          "attemptedChanges": {}
        }
      ]
    }
  ]
}
```
