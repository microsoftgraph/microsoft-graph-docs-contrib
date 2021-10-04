---
title: "federatedIdentityCredential resource type"
description: "Represents a federated identity credential on an application."
author: "kjyam98"
localization_priority: Normal
ms.prod: "applications"
doc_type: resourcePageType
---

# federatedIdentityCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Today, developers can use certificates or client secrets for their application's credentials. Federated identity credentials are a new type of credential that will allow the impersonation of an Azure Active Directory (Azure AD) application. This credential will be used to exchange a token from a trusted issuer for an access token of an Azure AD application.

Key scenarios:

1) Cross-tenant Customer Managed Keys scenario for ISVs: with federated identities on multi-tenant Azure AD applications, a managed identity  can be used to get tokens as the application in the tenants in which the application has been installed.
   
2) Kubernetes service account tokens exchanged for AAD access tokens: set a federated identity on an Azure AD application allowing a Kubernetes trusted token to assume that application and get token to access resources
   
3) GitHub tokens exchanged for AAD access tokens: set a federated identity on an Azure AD application allowing a GitHub Actions workflow to deploy resources associated with that application


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List federatedIdentityCredentials](../api/federatedidentitycredential-list.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Get a list of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects and their properties.|
|[Create federatedIdentityCredential](../api/federatedidentitycredential-create.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Get federatedIdentityCredential](../api/federatedidentitycredential-get.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Update federatedIdentityCredential](../api/federatedidentitycredential-update.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Delete federatedIdentityCredential](../api/federatedidentitycredential-delete.md)|None|Deletes a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audiences|String collection|The list of audiences that can appear in the issued token|
|description|String|A user-provided description of what the federatedIdentityCredential is used for (this field is optional)
|issuer|String|The URL of the incoming trusted issuer (Secure Token Service). Matches the issuer claim of an access token. For Azure AD, this is: <ul><li>Azure AD (global service): "https://login.microsoftonline.com/{tenantid}/v2.0"</li><li>Azure AD for US Government: "https://login.microsoftonline.us/{tenantid}/v2.0"</li><li>Azure AD Germany: "https://login.microsoftonline.de/{tenantid}/v2.0"</li><li>Azure AD China operated by 21Vianet: "https://login.chinacloudapi.cn/{tenantid}/v2.0"</li></ul> <br>The combination of `issuer` and `subject` must be unique on the app.| No | Yes | No |
|name|String|The unique identifier for the federated identity to be used in ARM scenarios. Has a character limit of 120 characters and must be URL friendly. It is immutable.|
|subject|String|<li>For AAD issuer, the `objectId` of the servicePrincipal (can represent a managed identity) that can impersonate the app. The object associated with this guid needs to exist in the tenant.</li><li>For all other issuers, a string with no additional validation</ul><br><br>The combination of `issuer` and `subject` must be unique on the app.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.federatedIdentityCredential",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.federatedIdentityCredential",
  "name": "String",
  "issuer": "String",
  "subject": "String",
  "description": "String",
  "audiences": [
    "String"
  ]
}
```

