---
title: "Update entraIdProtectionRiskyUserApproval"
description: "Update the properties of an entraIdProtectionRiskyUserApproval object."
author: "OWinfreyATL"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/06/2025
---

# Update entraIdProtectionRiskyUserApproval

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entraidprotectionriskyuserapproval-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entraidprotectionriskyuserapproval-update-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /identityGovernance/entitlementManagement/controlConfigurations/entraIdProtectionRiskyUserApproval
Content-Type: application/json

{
  "isApprovalRequired": true,
  "minimumRiskLevel": "elevated"
}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object.

The following table shows the properties that can be updated for an [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md).

|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequired|Boolean|Indicates whether approval is required for risky users.|
|minimumRiskLevel|riskLevel|The minimum risk level for which approval is required. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_entraidprotectionriskyuserapproval"
}
-->
``` http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/controlConfigurations/entraIdProtectionRiskyUserApproval
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.entraIdProtectionRiskyUserApproval",
  "id": "EntraIdProtectionRiskyUserApproval",
  "isApprovalRequired": true,
  "minimumRiskLevel": "medium"
}
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/controlConfigurations/$entity",
  "@odata.type": "#microsoft.graph.entraIdProtectionRiskyUserApproval",
  "id": "EntraIdProtectionRiskyUserApproval",
  "createdBy": "kayat@elmdev.com",
  "createdDateTime": "2025-10-29T09:50:23Z",
  "modifiedBy": "kayat@elmdev.com",
  "modifiedDateTime": "2025-10-32T03:45:28Z",
  "isApprovalRequired": true,
  "minimumRiskLevel": "medium"
}
```
