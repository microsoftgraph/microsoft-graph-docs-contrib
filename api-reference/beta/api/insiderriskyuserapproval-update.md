---
title: "Update insiderRiskyUserApproval"
description: "Update the properties of an insiderRiskyUserApproval object."
author: "markwahl-msft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update insiderRiskyUserApproval

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "insiderriskyuserapproval-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/insiderriskyuserapproval-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/insiderRiskyUserApprovals/{insiderRiskyUserApprovalId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

The following table shows the properties that can be updated for an [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md).

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether the control configuration is enabled. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|isApprovalRequired|Boolean|Indicates whether approval is required for risky users.|
|minimumRiskLevel|purviewInsiderRiskManagementLevel|The minimum risk level for which approval is required. The possible values are: `none`, `minor`, `moderate`, `elevated`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_insiderriskyuserapproval"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/insiderRiskyUserApprovals/12c97a0b-be3a-4802-bddd-aaef83e35c09
Content-Type: application/json

{
  "isEnabled": true,
  "isApprovalRequired": true,
  "minimumRiskLevel": "elevated"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insiderRiskyUserApproval"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#controlConfigurations/microsoft.graph.insiderRiskyUserApproval/$entity",
  "@odata.type": "#microsoft.graph.insiderRiskyUserApproval",
  "id": "12c97a0b-be3a-4802-bddd-aaef83e35c09",
  "isEnabled": true,
  "createdBy": "kayat@elmdev.com",
  "createdDateTime": "2025-11-04T11:00:00Z",
  "modifiedBy": "kayat@elmdev.com",
  "modifiedDateTime": "2025-11-09T09:40:00Z",
  "isApprovalRequired": true,
  "minimumRiskLevel": "elevated"
}
```
