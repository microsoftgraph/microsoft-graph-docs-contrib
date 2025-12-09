---
title: "Create agentIdentityBlueprint"
description: "Create a new agent identity blueprint."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---


# Create agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agent identity blueprint](../resources/agentidentityblueprint.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "application_post_applications" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-post-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications/microsoft.graph.agentIdentityBlueprint
```

## Request headers
| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body
In the request body, supply a JSON representation of [agent identity blueprint](../resources/agentidentityblueprint.md) object. You must specify the **displayName** and **sponsors**.

## Response

If successful, this method returns `201 Created` response code and an [agent identity blueprint](../resources/agentidentityblueprint.md) object in the response body.

## Examples

#### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/applications/microsoft.graph.agentIdentityBlueprint
Content-type: application/json

{
  "displayName": "Display name",
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/beta/users/e64405d7-f156-4ce1-b1f5-b0d801c367f3"
   ]
}
```

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications/microsoft.graph.agentIdentityBlueprint/$entity",
    "id": "03ef14b0-ca33-4840-8f4f-d6e91916010e",
    "appId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
    "identifierUris": [],
    "createdDateTime": "2019-09-17T19:10:35.2742618Z",
    "displayName": "Display name",
    "publisherDomain": "contoso.com",
    "signInAudience": "AzureADMyOrg"
}
```