---
title: "Update tlsInspectionPolicy"
description: "Update the properties of a tlsInspectionPolicy object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update tlsInspectionPolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicy-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/tlsInspectionPolicies/{tlsInspectionPolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional description of the policy.|
|name|String|The display name of the policy.|
|settings|[microsoft.graph.networkaccess.tlsInspectionPolicySettings](../resources/networkaccess-tlsinspectionpolicysettings.md)|Settings that configure the default behavior of the policy.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_tlsinspectionpolicy",
  "sampleKeys": ["b712c469-e7cd-e7cb-738f-94b199570b0d"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d
Content-Type: application/json

{
  "name": "New name TLS Inspection Policy",
  "description": "New description policy for inspecting TLS traffic",
  "settings": {
        "defaultAction": "inspect"
    }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
