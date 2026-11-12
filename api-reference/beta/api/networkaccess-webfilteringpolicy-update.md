---
title: "Update webFilteringPolicy"
description: "Update the properties of a webFilteringPolicy object."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update webFilteringPolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-webfilteringpolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-webfilteringpolicy-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/webFilteringPolicies/{webFilteringPolicyId}
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
|description|String|The description of the object.|
|name|String|The display name of the object.|
|settings|[microsoft.graph.networkaccess.webFilteringPolicySettings](../resources/networkaccess-webfilteringpolicysettings.md)|The settings for the object.|
|version|String|The version of the object.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_webfilteringpolicy"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/webFilteringPolicies/bb1d249e-0691-477c-aae4-adfca179746a
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicy",
  "name": "Block social networking sites",
  "description": "Blocks access to selected social networking destinations",
  "version": "1.0",
  "settings": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicySettings",
    "defaultAction": {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringActionAllow"
    }
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicy"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicy",
  "id": "252156ed-6901-389c-4cba-f4aa8856a307",
  "name": "Block social networking sites",
  "description": "Blocks access to selected social networking destinations",
  "version": "1.0",
  "lastModifiedDateTime": "2026-09-09T08:53:02Z",
  "settings": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicySettings",
    "defaultAction": {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringActionAllow"
    }
  }
}
```
