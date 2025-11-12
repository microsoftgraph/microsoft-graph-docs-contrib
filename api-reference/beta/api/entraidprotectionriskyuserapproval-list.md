---
title: "List entraIdProtectionRiskyUserApprovals"
description: "Get a list of the entraIdProtectionRiskyUserApproval objects and their properties."
author: "OWinfreyATL"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/06/2025
---

# List entraIdProtectionRiskyUserApprovals

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entraidprotectionriskyuserapproval-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entraidprotectionriskyuserapproval-list-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/entraIdProtectionRiskyUserApprovals
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

If successful, this method returns a `200 OK` response code and a collection of [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_entraidprotectionriskyuserapproval"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/entraIdProtectionRiskyUserApprovals
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.entraIdProtectionRiskyUserApproval)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/entraIdProtectionRiskyUserApprovals",
  "value": [
    {
      "@odata.context": "https://localhost:44319/api/v1/$metadata#controlConfigurations/microsoft.graph.entraIdProtectionRiskyUserApproval/$entity",
      "@odata.type": "#microsoft.graph.entraIdProtectionRiskyUserApproval",
      "id": "1e927ee9-93b1-4814-9606-50877c55b4c3",
      "isEnabled": true,
      "createdBy": "kayat@elmdev.com",
      "createdDateTime": "2025-11-01T10:00:00Z",
      "modifiedBy": "kayat@elmdev.com",
      "modifiedDateTime": "2025-11-06T15:30:00Z",
      "isApprovalRequired": true,
      "minimumRiskLevel": "medium"
    }
  ]
}
```
