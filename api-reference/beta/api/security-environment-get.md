---
title: "Get environment"
description: "Get a specific environment associated with a zone. The environment ID must be URL-encoded."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get environment

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a specific [environment](../resources/security-environment.md) associated with a [zone](../resources/security-zone.md). The **environment ID** must be URL-encoded.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-environment-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-environment-get-permissions.md)]

[!INCLUDE [rbac-security-zone-apis-read](../includes/rbac-for-apis/rbac-security-zone-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/zones/{zoneId}/environments/{environmentId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.environment](../resources/security-environment.md) object in the response body.

## Examples

### Example 1: Get an AWS account environment

#### Request

The following example shows a request to get an AWS account environment.
<!-- {
  "blockType": "request",
  "name": "get_environment_aws"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/zones/05cfec937c214892a14448562ef4bf4a/environments/181994123251
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.environment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/security/zones/$metadata#environments/$entity",
  "@odata.type": "#microsoft.graph.security.environment",
  "kind": "awsAccount",
  "id": "181994123251"
}
```

### Example 2: Get an Azure subscription environment

The environment ID for Azure subscriptions uses the `/subscriptions/{subscription-id}` format and must be URL-encoded when used in the request URL.

| Format | Value |
|:---|:---|
| Original | `/subscriptions/18d1c06d-520b-46d1-b309-be218fbc811e` |
| URL-encoded | `%2Fsubscriptions%2F18d1c06d-520b-46d1-b309-be218fbc811e` |

#### Request

The following example shows a request to get an Azure subscription environment with a URL-encoded environment ID.
<!-- {
  "blockType": "request",
  "name": "get_environment_azure"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/zones/05cfec937c214892a14448562ef4bf4a/environments/%2Fsubscriptions%2F18d1c06d-520b-46d1-b309-be218fbc811e
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.environment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/security/zones/$metadata#environments/$entity",
  "@odata.type": "#microsoft.graph.security.environment",
  "kind": "azureSubscription",
  "id": "/subscriptions/18d1c06d-520b-46d1-b309-be218fbc811e"
}
```

