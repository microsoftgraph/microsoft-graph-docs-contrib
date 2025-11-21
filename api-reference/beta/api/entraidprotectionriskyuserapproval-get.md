---
title: "Get entraIdProtectionRiskyUserApproval"
description: "Read the properties and relationships of an entraIdProtectionRiskyUserApproval object."
author: "OWinfreyATL"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/06/2025
---

# Get entraIdProtectionRiskyUserApproval

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entraidprotectionriskyuserapproval-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entraidprotectionriskyuserapproval-get-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/controlConfigurations/entraIdProtectionRiskyUserApproval
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_entraidprotectionriskyuserapproval"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/controlConfigurations/entraIdProtectionRiskyUserApproval
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.entraIdProtectionRiskyUserApproval"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/stagingbeta/$metadata#identityGovernance/entitlementManagement/controlConfigurations/$entity",
  "@odata.type": "#microsoft.graph.entraIdProtectionRiskyUserApproval",
  "id": "EntraIdProtectionRiskyUserApproval",
  "isEnabled": true,
  "createdBy": "kayat@elmdev.com",
  "createdDateTime": "2025-11-01T11:00:00Z",
  "modifiedBy": "kayat@elmdev.com",
  "modifiedDateTime": "2025-11-02T03:30:00Z",
  "isApprovalRequired": true,
  "minimumRiskLevel": "high"
}
```
