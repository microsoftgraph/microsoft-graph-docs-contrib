---
title: "Create webFilteringPolicy"
description: "Create a new webFilteringPolicy object."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create webFilteringPolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-networkaccessroot-post-webfilteringpolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-post-webfilteringpolicies-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /networkAccess/webFilteringPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) object.

You can specify the following properties when creating a **webFilteringPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the object. Optional.|
|name|String|The display name of the object. Required.|
|settings|[microsoft.graph.networkaccess.webFilteringPolicySettings](../resources/networkaccess-webfilteringpolicysettings.md)|The settings for the object. Required.|
|version|String|The version of the object. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_webfilteringpolicy_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/networkAccess/webFilteringPolicies
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
HTTP/1.1 201 Created
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
