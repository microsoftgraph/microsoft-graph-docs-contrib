---
title: "federatedIdentityCredential resource type"
description: "References an application's federated identity credentials. These federated identity credentials are used in workload identity federation when exchanging a token from a trusted issuer for an access token linked to an application registered on Azure AD."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
toc.keywords: [ Workload identity federation, workload identities ]
ms.date: 12/03/2024
---

# federatedIdentityCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

References the federated identity credentials for an [application](../resources/application.md) or [agentIdentityBlueprint](../resources/agentidentityblueprint.md). These federated identity credentials are used in [workload identity federation](/azure/active-directory/develop/workload-identity-federation) when exchanging a token from a trusted issuer for an access token linked to an application or an agent identity blueprint.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/federatedidentitycredential-list.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Get a list of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects and their properties.|
|[Create](../api/federatedidentitycredential-post.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Get](../api/federatedidentitycredential-get.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Update](../api/federatedidentitycredential-update.md)|None|Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Upsert](../api/federatedidentitycredential-upsert.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) if it doesn't exist, or update the properties of an existing [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Delete](../api/federatedidentitycredential-delete.md)|None|Delete a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| audiences | String collection | The audience that can appear in the external token. This field is mandatory and should be set to `api://AzureADTokenExchange` for Microsoft Entra ID. It says what Microsoft identity platform should accept in the `aud` claim in the incoming token. This value represents Microsoft Entra ID in your external identity provider and has no fixed value across identity providers - you may need to create a new application registration in your identity provider to serve as the audience of this token. This field can only accept a single value and has a limit of 600 characters. Required. |
| claimsMatchingExpression |[federatedIdentityExpression](../resources/federatedidentityexpression.md)| Nullable.  Defaults to `null` if not set. Enables the use of claims matching expressions against specified claims. If **claimsMatchingExpression** is defined, **subject** must be `null`. For the list of supported expression syntax and claims, visit the [Flexible FIC reference](https://aka.ms/flexiblefic). |
| description | String | The un-validated, user-provided description of the federated identity credential. It has a limit of 600 characters. Optional.  |
| id| String | The unique identifier for the federated identity. Required. Read-only.  |
| issuer | String | The URL of the external identity provider and must match the `issuer` claim of the external token being exchanged. The combination of the values of **issuer** and **subject** must be unique on the app. It has a limit of 600 characters. Required. |
| name | String | The unique identifier for the federated identity credential, which has a limit of 120 characters and must be URL friendly. It is immutable once created. Alternate key. Required. Not nullable. Supports `$filter` (`eq`). |
| subject | String | Nullable.  Defaults to `null` if not set. The identifier of the external software workload within the external identity provider. Like the audience value, it has no fixed format, as each identity provider uses their own - sometimes a GUID, sometimes a colon delimited identifier, sometimes arbitrary strings. The value here must match the `sub` claim within the token presented to Microsoft Entra ID. The combination of **issuer** and **subject** must be unique on the app. It has a limit of 600 characters. If **subject** is defined, **claimsMatchingExpression** must be `null`. Supports `$filter` (`eq`). |

## Relationships

None

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
  "id": "String (identifier)",
  "name": "String",
  "issuer": "String",
  "subject": "String",
  "description": "String",
  "audiences": [
    "String"
  ],
  "claimsMatchingExpression": {
    "@odata.type": "microsoft.graph.federatedIdentityExpression"
  }
}
```
