---
title: "Upsert agentIdentityBlueprint"
description: "Create a new agentIdentityBlueprint object if it doesn't exist, or update the properties of an existing agentIdentityBlueprint object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Upsert agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agent identity blueprint](../resources/agentidentityblueprint.md) object if it doesn't exist, or update the properties of an existing object.

> [!IMPORTANT]
> Using PATCH to set [**passwordCredential**](../resources/passwordcredential.md) is not supported. Use the [addPassword](./application-addpassword.md) and [removePassword](./application-removepassword.md) methods to update the password or secret for an agent identity blueprint.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprint_upsert" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-upsert-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

To create or update an application, specify the **uniqueName** client-provided alternate key.

<!-- { "blockType": "ignored" } -->
```http
PATCH /applications(uniqueName='{uniqueName}')/microsoft.graph.agentIdentityBlueprint
```

## Request headers
| Name          | Description|
|:--------------|:----------|
| Authorization |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |
| Prefer        | `create-if-missing`. Required for upsert behavior, otherwise the request is treated as an update operation. |

## Request body

In the request body, supply a JSON representation of the [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object. The request body must contain  **displayName**, which is a required property. Specify other writable properties as necessary for your agentIdentityBlueprint, for creation or update.

## Response

If an object with **uniqueName** doesn't exist, this method returns a `201 Created` response code and a new agent identity blueprint object in the response body. The agent identity blueprint is assigned the uniqueName value.

If an object with **uniqueName** doesn't exist and the `Prefer: create-if-missing` header is *not* specified, this method returns a `404 Not Found` error code.

If an application object with **uniqueName** already exists, this method updates the object and returns a `204 No Content` response code.

## Examples

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "upsert_agent_identity_blueprint_create"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/applications(uniqueName='app-65278')/microsoft.graph.agentIdentityBlueprint
Content-Type: application/json
Prefer: create-if-missing

{
  "displayName": "Display name"
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentityBlueprint"
}
-->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications/$entity",
    "id": "03ef14b0-ca33-4840-8f4f-d6e91916010e",
    "deletedDateTime": null,
    "appId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
    "identifierUris": [],
    "createdDateTime": "2019-09-17T19:10:35.2742618Z",
    "displayName": "Display name",
    "groupMembershipClaims": null,
    "optionalClaims": null,
    "publisherDomain": "contoso.onmicrosoft.com",
    "signInAudience": "AzureADandPersonalMicrosoftAccount",
    "tags": [],
    "tokenEncryptionKeyId": null,
    "api": {
        "requestedAccessTokenVersion": 2,
        "acceptMappedClaims": null,
        "knownClientApplications": [],
        "oauth2PermissionScopes": [],
        "preAuthorizedApplications": []
    },
    "appRoles": [],
    "info": {
        "termsOfServiceUrl": null,
        "supportUrl": null,
        "privacyStatementUrl": null,
        "marketingUrl": null,
        "logoUrl": null
    },
    "keyCredentials": [],
    "passwordCredentials": [],
    "uniqueName": "app-65278",
    "web": {
        "redirectUris": [],
        "homePageUrl": null,
        "logoutUrl": null,
        "implicitGrantSettings": {
            "enableIdTokenIssuance": false,
            "enableAccessTokenIssuance": false
        }
    }, 
}
```