---
title: "agentIdentityBlueprint setVerifiedPublisher"
description: "Set the verified publisher of an agentIdentityBlueprint."
ms.localizationpriority: medium
author: "xurobertMSFT"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.date: 04/05/2024
---

# agentIdentityBlueprint setVerifiedPublisher

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the the [verifiedPublisher](../resources/verifiedPublisher.md) on an [agentIdentityBlueprint](../resources/agentIdentityBlueprint.md). For more information, including prerequisites to setting a verified publisher, see [Publisher verification](/azure/active-directory/develop/publisher-verification-overview).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentIdentityBlueprint_setverifiedpublisher" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-setverifiedpublisher-permissions.md)]

[!INCLUDE [rbac-application-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /applications/{id}/setVerifiedPublisher
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body

In the request body, provide the following required properties.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| verifiedPublisherId | string | The Microsoft Partner Network ID (MPNID) of the verified publisher to be set on the application, from the publisher's Partner Center account. |

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "agentIdentityBlueprint_setverifiedpublisher"
}-->

```http
POST https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint/setVerifiedPublisher
Content-type: application/json

{
    "verifiedPublisherId": "1234567"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/agentidentityblueprint-setverifiedpublisher-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
