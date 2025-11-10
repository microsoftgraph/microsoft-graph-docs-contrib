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

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/controlConfigurations/{controlConfigurationId}
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
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/controlConfigurations/{controlConfigurationId}
Content-Type: application/json

{
  "isEnabled": false
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
  "@odata.type": "#microsoft.graph.controlConfiguration",
  "id": "12345678-1234-1234-1234-123456789012",
  "isEnabled": false,
  "createdBy": "admin@contoso.com",
  "createdDateTime": "2025-11-01T10:00:00Z",
  "modifiedBy": "admin@contoso.com",
  "modifiedDateTime": "2025-11-10T12:30:00Z"
}
```
