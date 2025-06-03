---
title: "Create tlsInspectionPolicy"
description: "Create a new TLS inspection policy that configures TLS termination for network traffic within Global Secure Access."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create tlsInspectionPolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) object.

## Permissions

One of these permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-networkaccessroot-post-tlsinspectionpolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-post-tlsinspectionpolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/tlsInspectionPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) object.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the policy. Required.|
|description|String|Optional description of the policy.|
|settings|[microsoft.graph.networkaccess.tlsInspectionPolicySettings](../resources/networkaccess-tlsinspectionpolicysettings.md)|Settings that configure the default behavior of the policy. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_tlsinspectionpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies
Content-Type: application/json

{
  "name": "Default TLS Inspection Policy",
  "description": "Policy for inspecting TLS traffic",
  "settings": {
    "defaultAction": "bypass"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/tlsInspectionPolicies/$entity",
    "id": "b712c469-e7cd-e7cb-738f-94b199570b0d",
    "name": "Default TLS Inspection Policy",
    "description": "Policy for inspecting TLS traffic",
    "version": "1.0.0",
    "lastModifiedDateTime": "2025-06-02T20:54:19.146638Z",
    "settings": {
        "defaultAction": "bypass"
    }
}
