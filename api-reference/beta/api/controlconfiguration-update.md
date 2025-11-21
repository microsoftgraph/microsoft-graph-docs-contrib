---
title: "Update controlConfiguration"
description: "Update the properties of a controlConfiguration object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/06/2025
---

# Update controlConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [controlConfiguration](../resources/controlconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "controlconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/controlconfiguration-update-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-identity-governance-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /identityGovernance/entitlementManagement/controlConfigurations/{controlConfigurationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [controlConfiguration](../resources/controlconfiguration.md) object.

The following table shows the properties that can be updated for a [controlConfiguration](../resources/controlconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Determines whether or not the control configuration is enabled.|

## Response

If successful, this method returns a `200 OK` response code and an updated [controlConfiguration](../resources/controlconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_controlconfiguration"
}
-->
``` http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/controlConfigurations/insiderRiskyUserApproval
Content-Type: application/json

{
  "@odata.type": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/controlConfigurations/$entity",
  "id": "InsiderRiskyUserApproval",
  "isApprovalRequired": true,
  "minimumRiskLevel": "moderate"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.controlConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#controlConfigurations/microsoft.graph.insiderRiskyUserApproval/$entity",
  "@odata.type": "#microsoft.graph.insiderRiskyUserApproval",
  "id": "InsiderRiskyUserApproval",
  "isEnabled": true,
  "createdBy": "Azure AD",
  "createdDateTime": "2025-10-27T18:42:37.163-07:00",
  "modifiedBy": "kayat@fimdev.com",
  "modifiedDateTime": "2025-10-28T13:58:38.983-07:00",
  "isApprovalRequired": true,
  "minimumRiskLevel": "moderate"
}
```
