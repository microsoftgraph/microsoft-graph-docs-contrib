---
title: "federatedIdentityCredential resource type"
description: "References an application's federated identity credentials. These federated identities are used when exchanging a token from a trusted issuer for an access token linked to an application registered on Azure AD."
author: "kjyam98"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# federatedIdentityCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

References an application's federated identity credentials. These federated identities are used when exchanging a token from a trusted issuer for an access token linked to an application registered on Azure AD.

Inherits from [entity](../resources/entity.md).

>**NOTE:** This resource is not available in [national cloud](/graph/deployments) deployments.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List federatedIdentityCredentials](../api/application-list-federatedidentitycredentials.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Get a list of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects and their properties.|
|[Create federatedIdentityCredential](../api/application-post-federatedidentitycredentials.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Get federatedIdentityCredential](../api/federatedidentitycredential-get.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Update federatedIdentityCredential](../api/federatedidentitycredential-update.md)|None|Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Delete federatedIdentityCredential](../api/federatedidentitycredential-delete.md)|None|Deletes a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| audiences | String collection | The list of audiences that can appear in the issued token. The recommended value is `api://AzureADTokenExchange`. Required. |
| description | String | A user-provided description of what the federated identity credential is used for. Optional.  |
| id| String | The unique identifier for the federated identity. Required. Read-only.  |
| issuer | String | The URL of the incoming trusted issuer (Secure Token Service). Matches the issuer claim of an access token. The combination of the values of **issuer** and **subject** must be unique on the app. Required. |
| name | String | The unique identifier for the federated identity to be used in ARM scenarios. Has a character limit of 120 characters and must be URL friendly (for example, not include spaces). It is immutable. Required. Not nullable. Supports `$filter` (`eq`). |
| subject | String | Required. <li>For an Azure AD issuer, the value of the **id** of the **servicePrincipal** (with `managedIdentity` as the **servicePrincipalType**) that can impersonate the app. The object associated with this **id** must exist in the tenant.</li><li>For all other issuers, a string that is not validated by Azure AD.</ul><br><br>The combination of **issuer** and **subject** must be unique on the app. Supports `$filter` (`eq`). |


## Relationships

None


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

