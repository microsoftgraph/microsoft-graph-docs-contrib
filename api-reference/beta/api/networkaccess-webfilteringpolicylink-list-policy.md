---
title: "Get policy"
description: "Get the webFilteringPolicy associated with a web filtering policy link."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get policy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) associated with a web filtering policy link.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-webfilteringpolicylink-list-policy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-webfilteringpolicylink-list-policy-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_webfilteringpolicylink_policy"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies/70405a6c-b823-4521-8981-de9d08a21f8f/policy
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
  "id": "283f06b1-1d6a-c2f9-b285-4974e1c7c7b1",
  "name": "Block social networking sites",
  "description": "Blocks access to selected social networking destinations",
  "version": "1.0"
}
```
