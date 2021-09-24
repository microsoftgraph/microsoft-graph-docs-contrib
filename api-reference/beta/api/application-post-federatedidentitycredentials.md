---
title: "Create federatedIdentityCredential"
description: "Create a new federatedIdentityCredential object."
author: "kjyam98"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.All, Application.Readwrite.Ownedby, Application.Readwrite.All    |
|Delegated (personal Microsoft account) | Application.Read.All, Application.Readwrite.Ownedby, Application.Readwrite.All    |
|Application | Application.Read.All, Application.Readwrite.Ownedby, Application.Readwrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /applications/{applicationsId}/federatedIdentityCredentials
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

The following table shows the properties that are required when you create the [federatedIdentityCredential](../resources/federatedidentitycredential.md).

|Property|Type|Description|
|:---|:---|:---|
|audiences|String collection|The list of audiences that can appear in the issued token|
|description|String|A user-provided description of what the federatedIdentityCredential is used for (this field is optional)
|issuer|String|The URL of the incoming trusted issuer (Secure Token Service). Matches the issuer claim of an access token. For Azure AD, this is: <ul><li>Azure AD (global service): "https://login.microsoftonline.com/{tenantid}/v2.0"</li><li>Azure AD for US Government: "https://login.microsoftonline.us/{tenantid}/v2.0"</li><li>Azure AD Germany: "https://login.microsoftonline.de/{tenantid}/v2.0"</li><li>Azure AD China operated by 21Vianet: "https://login.chinacloudapi.cn/{tenantid}/v2.0"</li></ul> <br>The combination of `issuer` and `subject` must be unique on the app.| No | Yes | No |
|name|String|The unique identifier for the federated identity to be used in ARM scenarios. Has a character limit of 120 characters and must be URL friendly. It is immutable.|
|subject|String|<li>For AAD issuer, the `objectId` of the servicePrincipal (can represent a managed identity) that can impersonate the app. The object associated with this guid needs to exist in the tenant.</li><li>For all other issuers, a string with no additional validation</ul><br><br>The combination of `issuer` and `subject` must be unique on the app.



## Response

If successful, this method returns a `201 Created` response code and a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_federatedidentitycredential_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/
Content-Type: application/json
Content-length: 215

{
    "name": "testing02",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "This is a test federated credential",
    "audiences": [
        "api://AzureADTokenExchange"
    ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.federatedIdentityCredential"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('bcd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/directoryObjects/$/Microsoft.DirectoryServices.Application('bcd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials/d9b7bf1e-429e-4678-8132-9b00c9846cc4",
    "id": "d9b7bf1e-429e-4678-8132-9b00c9846cc4",
    "name": "testing02",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "This is a test federated credential",
    "audiences": [
        "api://AzureADTokenExchange"
    ]
}
```

