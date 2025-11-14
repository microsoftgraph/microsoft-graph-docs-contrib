---
title: "List insiderRiskyUserApproval objects"
description: "Get a list of the insiderRiskyUserApproval objects and their properties."
author: "markwahl-msft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List insiderRiskyUserApproval objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "insiderriskyuserapproval-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/insiderriskyuserapproval-list-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/insiderRiskyUserApprovals
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderby`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_insiderriskyuserapproval"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/insiderRiskyUserApprovals
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.insiderRiskyUserApproval)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/insiderRiskyUserApprovals",
  "value": [
    {
      "@odata.type": "#microsoft.graph.insiderRiskyUserApproval",
      "id": "83171707-5e38-41b5-967e-8542684ecc6c",
      "isEnabled": true,
      "createdBy": "admin@contoso.com",
      "createdDateTime": "2025-11-01T10:00:00Z",
      "modifiedBy": "admin@contoso.com",
      "modifiedDateTime": "2025-11-06T15:30:00Z",
      "isApprovalRequired": true,
      "minimumRiskLevel": "moderate"
    }
  ]
}
```
