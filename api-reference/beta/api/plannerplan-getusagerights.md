---
title: "plannerPlan: getUsageRights"
description: "Get the usage rights for a specific plan based on its sensitivity label assignment and the requesting user permissions."
author: "ankku"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# plannerPlan: getUsageRights

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the usage rights for a specific [plan](../resources/plannerplan.md) based on its sensitivity label assignment and the requesting user permissions. This method returns information about whether the plan has a sensitivity label applied and which specific actions (view, edit, print, copy, and export) the user is allowed to perform on the plan content, based on Rights Management Services (RMS) evaluation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plannerplan-getusagerights-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-getusagerights-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/plans/{plannerPlanId}/getUsageRights
```

## Optional query parameters

This method doesn't support OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [planUsageRight](../resources/planusageright.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "plannerplanthis.getusagerights"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/plans/xqQg5FS2LkCp935s-FIFm2QAFkHM/getUsageRights
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.planUsageRight"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.planUsageRight",
  "planId": "xqQg5FS2LkCp935s-FIFm2QAFkHM",
  "hasSensitivityLabel": true,
  "usageRights": {
    "@odata.type": "microsoft.graph.usageRightsInfo",
    "allowView": true,
    "allowEdit": true,
    "allowPrint": true,
    "allowCopy": true,
    "allowExport": true
  }
}
```
