---
title: "federatedIdentityCredential resource type"
description: "References an application's federated identity credentials. These federated identity credentials are used in workload identity federation when exchanging a token from a trusted issuer for an access token linked to an application registered on Azure AD."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# federatedIdentityCredential resource type

Namespace: microsoft.graph


References an application's federated identity credentials. These federated identity credentials are used in [workload identity federation](/azure/active-directory/develop/workload-identity-federation) when exchanging a token from a trusted issuer for an access token linked to an application registered on Microsoft Entra ID.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/application-list-federatedidentitycredentials.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Get a list of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects and their properties.|
|[Create](../api/application-post-federatedidentitycredentials.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Get](../api/federatedidentitycredential-get.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Update](../api/federatedidentitycredential-update.md)|None|Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Upsert](../api/federatedidentitycredential-upsert.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) if it doesn't exist, or update the properties of an existing [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Delete](../api/federatedidentitycredential-delete.md)|None|Deletes a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| audiences | String collection | The audience that can appear in the external token. This field is mandatory and should be set to `api://AzureADTokenExchange` for Microsoft Entra ID. It says what Microsoft identity platform should accept in the `aud` claim in the incoming token. This value represents Microsoft Entra ID in your external identity provider and has no fixed value across identity providers - you might need to create a new application registration in your identity provider to serve as the audience of this token. This field can only accept a single value and has a limit of 600 characters. Required. |
| description | String | The unvalidated description of the federated identity credential, provided by the user. It has a limit of 600 characters. Optional.  |
| id| String | The unique identifier for the federated identity. Required. Read-only.  |
| issuer | String | The URL of the external identity provider, which must match the `issuer` claim of the external token being exchanged. The combination of the values of **issuer** and **subject** must be unique within the app. It has a limit of 600 characters. Required. |
| name | String | The unique identifier for the federated identity credential, which has a limit of 120 characters and must be URL friendly. The string is immutable after it's created. Alternate key. Required. Not nullable. Supports `$filter` (`eq`). |
| subject | String | Required. The identifier of the external software workload within the external identity provider. Like the audience value, it has no fixed format; each identity provider uses their own - sometimes a GUID, sometimes a colon delimited identifier, sometimes arbitrary strings. The value here must match the `sub` claim within the token presented to Microsoft Entra ID. The combination of **issuer** and **subject** must be unique within the app. It has a limit of 600 characters. Supports `$filter` (`eq`). |


## Relationships

None.


## JSON representation
The following JSON representation shows the resource type.
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
  "audiences": [
    "String"
  ],
  "description": "String",
  "issuer": "String",
  "name": "String",
  "subject": "String"
}
```
