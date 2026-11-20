---
title: "Create agentIdentity"
description: "Create a new agent identity object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---


# Create agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agentIdentity](../resources/agentidentity.md) object from the specified [agent identity blueprint](../resources/agentidentityblueprint.md).

Alternatively, create an agent identity backed by a client ID metadata document (CIMD) by supplying the document URL instead of an agent identity blueprint identifier.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentity_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-post-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/microsoft.graph.agentIdentity
```

## Request headers
| Name       | Description|
|:-----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of an [agentIdentity](../resources/agentidentity.md) object. The request body must contain **displayName** and a valid **sponsor** reference. To create an identity from a blueprint, also supply **agentIdentityBlueprintId**. To create a CIMD-backed identity, supply **clientIdMetadataDocumentUrl** instead; don't supply an external **agentIdentityBlueprintId**.

The **clientIdMetadataDocumentUrl** must be an absolute HTTPS URL with a host and a path that contains no `.` or `..` segments. It must not contain user information, a query, or a fragment. An explicit port is allowed and preserved; URLs that differ only by an explicit port are distinct. The service validates and canonicalizes the URL but doesn't retrieve the document. The URL can't be changed after creation.

Don't supply **hasClientIdMetadataDocument** in the request body. This read-only property is computed by the service.

The **displayName** must follow the [agent identity display-name character rules](../resources/agentidentity.md#properties).

For a blueprint with **isSingleInstance** set to `true`, this operation creates an agent identity backed directly by that blueprint without creating an agent identity blueprint principal. Its **instanceMode** is `singleInstance`. For the default blueprint-based multi-instance topology, **instanceMode** is `multiInstance`. The service determines **instanceMode**; don't supply it in the request body.

## Response

If successful, this method returns a `201 Created` response code and a [agentIdentity](../resources/agentidentity.md) object in the response body.

If **displayName** contains prohibited characters, this method returns `400 Bad Request` with a property-specific `ProhibitedCharactersInDisplayName` error code for `displayName`. The error message identifies the prohibited Unicode code points.

If **clientIdMetadataDocumentUrl** doesn't satisfy the URL requirements in the request body section, this method returns `400 Bad Request`.

If a service principal for the same CIMD URL already exists, this method returns `409 Conflict` with the error code `Request_MultipleObjectsWithSameKeyValue`. The error message indicates that the service principal name is already in use. The response can also include `ObjectConflict` in `error.details[].code`.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

If an active single-instance agent identity already exists for the same blueprint in the tenant, this method returns `409 Conflict`.

## Examples

### Example 1: Create a multi-instance agent identity

#### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity
Content-type: application/json

{
  "displayName": "My Agent Identity",
  "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12",
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/acc9f0a1-9075-464f-9fe7-049bf1ae6481",
    "https://graph.microsoft.com/v1.0/groups/47309f33-e0ff-7be6-defe-28b504c8cd2e"
  ]
}
```

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals/$entity",
    "@odata.type": "#microsoft.graph.agentIdentity",
    "id": "59e617e5-e447-4adc-8b88-00af644d7c92",
    "createdByAppId": "f98c895e-6ce2-4f5b-a31b-da7e48f25daa",
    "displayName": "My Agent Identity",
    "instanceMode": "multiInstance",
    "servicePrincipalType": "ServiceIdentity",
    "tags": [],
    "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12"
}
```

### Example 2: Create a single-instance agent identity

The blueprint identified by **agentIdentityBlueprintId** was created with **isSingleInstance** set to `true`.

#### Request

<!-- { "blockType": "request", "name": "create_single_instance_agent_identity" } -->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity
Content-Type: application/json

{
  "displayName": "Contoso Single-Instance Agent",
  "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12",
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/acc9f0a1-9075-464f-9fe7-049bf1ae6481"
  ]
}
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.agentIdentity" } -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentIdentity",
  "id": "59e617e5-e447-4adc-8b88-00af644d7c92",
  "displayName": "Contoso Single-Instance Agent",
  "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12",
  "instanceMode": "singleInstance",
  "accountEnabled": true,
  "createdDateTime": "2026-11-02T23:00:00Z"
}
```

### Example 3: Create a CIMD-backed agent identity

#### Request

<!-- { "blockType": "request", "name": "create_cimd_agentidentity" } -->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity
Content-Type: application/json

{
  "displayName": "Contoso Agent",
  "clientIdMetadataDocumentUrl": "https://client.contoso.com/oauth/client-metadata.json",
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/acc9f0a1-9075-464f-9fe7-049bf1ae6481"
  ]
}
```

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.agentIdentity" } -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentIdentity",
  "id": "11111111-2222-3333-4444-555555555555",
  "agentIdentityBlueprintId": "a1b2c3d4-e5f6-4789-abcd-0123456789ab",
  "displayName": "Contoso Agent",
  "clientIdMetadataDocumentUrl": "https://client.contoso.com/oauth/client-metadata.json",
  "hasClientIdMetadataDocument": true
}
```
