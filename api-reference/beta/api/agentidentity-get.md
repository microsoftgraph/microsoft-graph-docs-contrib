---
title: "Get agentIdentity"
description: "Read the properties and relationships of agentIdentity object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Get agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentIdentity](../resources/agentidentity.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-get-permissions.md)]

## HTTP request

You can address the agent identity using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/Microsoft.Graph.AgentIdentity
GET /servicePrincipals(appId='{appId}')/Microsoft.Graph.AgentIdentity
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

By default, this API doesn't return the public key value of the **key** in the **keyCredentials** property unless **keyCredentials** is specified in a `$select` query.
For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for agent identities has a throttling limit of 150 requests per minute for every tenant.

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language| Language code. Optional.   |

Providing the **Accept-Language** header with a supported language code, such as `es-ES` or `de-DE`, will return localized values where available. Note that the header is not supported for [list operations](serviceprincipal-list.md).

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentIdentity](../resources/agentidentity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_agentidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/{id}/Microsoft.Graph.AgentIdentity
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "1b7313c4-05d0-4a08-88e3-7b76c003a0a2",
  "displayName": "My Agent Identity",
  "createdDateTime": "2019-09-17T19:10:35.2742618Z",
  "createdByAppId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
  "agentIdentityBlueprintId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
  "accountEnabled": true,
  "disabledByMicrosoftStatus": null,
  "servicePrincipalType": "ServiceIdentity",
  "tags": [],
  "lifecycle": {
    "expirationDateTime": "2024-12-31T23:59:59Z"
  }
}
```