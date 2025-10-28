---
title: "Create remoteDesktopSecurityConfiguration"
description: "Create a new remoteDesktopSecurityConfiguration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create remoteDesktopSecurityConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new remoteDesktopSecurityConfiguration object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-post-remotedesktopsecurityconfiguration-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-post-remotedesktopsecurityconfiguration-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object.

You can specify the following properties when creating a **remoteDesktopSecurityConfiguration**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|isRemoteDesktopProtocolEnabled|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_remotedesktopsecurityconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "isRemoteDesktopProtocolEnabled": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.remoteDesktopSecurityConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "id": "ca738153-c98a-f822-a7d1-5a6e1058462b",
  "isRemoteDesktopProtocolEnabled": "Boolean"
}
```

