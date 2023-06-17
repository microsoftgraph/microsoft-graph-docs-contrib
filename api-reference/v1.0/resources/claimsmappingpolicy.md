---
title: "claimsMappingPolicy resource type"
description: "Represents the claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application."
ms.localizationpriority: medium
author: "paulgarn"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# claimsMappingPolicy resource type

Namespace: microsoft.graph

Represents the claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application. You can use claims-mapping policies to:

- Select which claims are included in tokens
- Create claim types that do not already exist
- Choose or change the source of data emitted in specific claims  

The number of claims and transformations that can be added to a claims-mapping policy are limited to reduce token size. Any claims schema entries or transformations that are encountered after the limit has been reached are ignored and included in the issued token. For more information about the limits, see [Properties of a claims-mapping policy definition](#properties-of-a-claims-mapping-policy-definition)

For more scenario and configuration details, see [Claims mapping policy type](/azure/active-directory/develop/reference-claims-mapping-policy-type) and [How to: Customize claims emitted in tokens for a specific app in a tenant](/azure/active-directory/develop/active-directory-claims-mapping#claims-mapping-policy-properties).

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create claimsMappingPolicy](../api/claimsmappingpolicy-post-claimsmappingpolicies.md) | [claimsMappingPolicy](claimsmappingpolicy.md) | Create a claimsMappingPolicy object. |
| [Get claimsMappingPolicy](../api/claimsmappingpolicy-get.md) | [claimsMappingPolicy](claimsmappingpolicy.md) | Read properties and relationships of a claimsMappingPolicy object. |
| [List claimsMappingPolicies](../api/claimsmappingpolicy-list.md) | [claimsMappingPolicy](claimsmappingpolicy.md) | Read properties and relationships of claimsMappingPolicies objects. |
| [Update claimsMappingPolicy](../api/claimsmappingpolicy-update.md) | None | Update a claimsMappingPolicy object. |
| [Delete claimsMappingPolicy](../api/claimsmappingpolicy-delete.md) | None | Delete a claimsMappingPolicy object. |
| **Directory objects** |  |  |
| [List appliesTo](../api/claimsmappingpolicy-list-appliesto.md) | [directoryObject](directoryobject.md) collection | Get the list of directoryObjects that this policy has been applied to. |
| [Assign claimsMappingPolicy](../api/serviceprincipal-post-claimsmappingpolicies.md) | None | Assign a claimsMappingPolicy to a [servicePrincipal](serviceprincipal.md) object. |
| [List assigned claimsMappingPolicy](../api/serviceprincipal-list-claimsmappingpolicies.md) | [claimsMappingPolicy](claimsmappingpolicy.md) collection | List the claimsMappingPolicy objects that are assigned to a [servicePrincipal](serviceprincipal.md) object. |
| [Remove claimsMappingPolicy](../api/serviceprincipal-delete-claimsmappingpolicies.md) | None | Remove a claimsMappingPolicy from a [servicePrincipal](serviceprincipal.md) object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. See [Properties of a claims-mapping policy definition](#properties-of-a-claims-mapping-policy-definition) for more details about the JSON schema for this property. Required.|
|displayName|String| Display name for this policy. Required.|
|id|String| Unique identifier for this policy. Read-only.|
|isOrganizationDefault|Boolean|Ignore this property. The claims-mapping policy can only be applied to service principals and can't be set globally for the organization.|

### Properties of a claims-mapping policy definition

The properties below form the JSON object that represents a claims-mapping policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. A few definition examples are shown below:

#### Example: **definition** to include the EmployeeID and TenantCountry as claims in tokens
<!-- {
  "blockType": "ignored"
}-->
``` json
{
    "definition": [
        "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"employeeid\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name\",\"JwtClaimType\":\"name\"},{\"Source\":\"company\",\"ID\":\"tenantcountry\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country\",\"JwtClaimType\":\"country\"}]}}"
    ],
    "displayName": "Test1234"
}
```

#### Example: **definition** that uses a claims transformation
<!-- {
  "blockType": "ignored"
}-->
``` json
{
    "definition": [
        "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier\"},{\"Source\":\"user\",\"ID\":\"givenname\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname\"},{\"Source\":\"user\",\"ID\":\"displayname\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name\"},{\"Source\":\"user\",\"ID\":\"surname\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname\"},{\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\":\"username\"}],\"ClaimsTransformation\":[{\"ID\":\"CreateTermsOfService\",\"TransformationMethod\":\"CreateStringClaim\",\"InputParameters\": [{\"ID\":\"value\",\"DataType\":\"string\", \"Value\":\"sandbox\"}],\"OutputClaims\":[{\"ClaimTypeReferenceId\":\"TOS\",\"TransformationClaimType\":\"createdClaim\"}]}]}}"
    ],
    "displayName": "Test1234"
}
```

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ClaimsSchema|JSON object|Defines which claims are present in the tokens affected by the policy, in addition to the basic claim set and the core claim set. For each claim schema entry defined in this property, certain information is required. Specify where the data is coming from (Value or Source/ID pair), and which claim the data is emitted as (Claim Type). A maximum of 50 claims are included in the token through the ClaimsSchema object. Any claims schema entries that are encountered after the limit has been reached will be ignored and will not appear in the issued token. Further details are available in the [ClaimsSchema definition](/azure/active-directory/develop/active-directory-claims-mapping#claims-schema).|
|ClaimsTransformation|JSON object| Defines common transformations that can be applied to source data, to generate the output data for claims specified in the ClaimsSchema. A maximum of 50 transformations are included in the token through the ClaimsTransformation object. Any transformations that are encountered after the limit has been reached will be ignored and will not appear in the issued token. For more information about ClaimsTransformation and the supported functions, see [Claims transformation](/azure/active-directory/develop/active-directory-claims-mapping#claims-transformation).|
|IncludeBasicClaimSet|Boolean|If set to `true`, all claims in the basic claim set are emitted in tokens affected by the policy. If set to `false`, claims in the basic claim set are not in the tokens, unless they are individually added in the ClaimsSchema property of the same policy.|
|Version|Integer|Set value of 1. Required.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.claimsMappingPolicy",
  "baseType": "microsoft.graph.stsPolicy",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": false,
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "claimsMappingPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
