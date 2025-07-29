---
title: "homeRealmDiscoveryPolicy resource type"
description: "Represents a policy to control Microsoft Entra authentication behavior for federated users."
ms.localizationpriority: medium
author: "nickludwig"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 07/05/2024
---

# homeRealmDiscoveryPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy to control Microsoft Entra authentication behavior for federated users, in particular for autoacceleration and user authentication restrictions in federated domains. You can set homeRealmDiscoveryPolicy for all service principals in your organization, or for specific service principals in your organization. For more scenario and policy details, see [Configure Microsoft Entra sign-in behavior for an application by using a Home Realm Discovery policy](/azure/active-directory/manage-apps/configure-authentication-for-federated-users-portal) and [Sign-in to Microsoft Entra ID using email as an alternate login ID](/azure/active-directory/authentication/howto-authentication-use-email-signin).

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/homerealmdiscoverypolicy-list.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) | Read properties and relationships of homeRealmDiscoveryPolicies objects. |
| [Create](../api/homerealmdiscoverypolicy-post-homerealmdiscoverypolicies.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) | Create a homeRealmDiscoveryPolicy object. |
| [Get](../api/homerealmdiscoverypolicy-get.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) | Read properties and relationships of a homeRealmDiscoveryPolicy object. |
| [Update](../api/homerealmdiscoverypolicy-update.md) | None | Update a homeRealmDiscoveryPolicy object. |
| [Delete](../api/homerealmdiscoverypolicy-delete.md) | None | Delete a homeRealmDiscoveryPolicy object. |
| [List applies to](../api/homerealmdiscoverypolicy-list-appliesto.md) | [directoryObject](directoryobject.md) collection | Get the list of directoryObjects that this policy has been applied to. |
| [Assign to service principal](../api/serviceprincipal-post-homerealmdiscoverypolicies.md) | None | Assign a homeRealmDiscoveryPolicy object to a [servicePrincipal](serviceprincipal.md) object. |
| [List assigned to service principal](../api/serviceprincipal-list-homerealmdiscoverypolicies.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection | List the homeRealmDiscoveryPolicy objects that are assigned to a [servicePrincipal](serviceprincipal.md) object. |
| [Unassign from service principal](../api/serviceprincipal-delete-homerealmdiscoverypolicies.md) | None | Remove a homeRealmDiscoveryPolicy object from a [servicePrincipal](serviceprincipal.md) object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. For more information about the JSON schema for this property, see [Properties of a home realm discovery policy definition](#properties-of-a-home-realm-discovery-policy-definition). Required.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. Required.|
|isOrganizationDefault|Boolean|If set to `true`, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is `false`.|


### Properties of a home realm discovery policy definition
The following object shows the properties that form the JSON object for a token lifetime policy definition. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property as shown in the following example.

<!-- {
  "blockType": "ignored"
}-->
``` json
"definition": [
    "{
        \"HomeRealmDiscoveryPolicy\": {
          \"AccelerateToFederatedDomain\":true,
          \"AllowCloudPasswordValidation\": false,
          \"PreferredDomain\":\"federated.example.edu\",
          \"AlternateIdLogin\":{
            \"Enabled\":true
          }
        }
      }"
  ]
```

| Property       | Type    |Description| 
|:---------------|:--------|:----------|
|AccelerateToFederatedDomain|Boolean| Set to `true` for autoacceleration (bypass home realm discovery). If `true` and there's only one verified and federated domain in the tenant, then users are taken straight to the federated identity provider (such as ADFS) for sign in. If `true` and there's more than one verified domain in the tenant, **PreferredDomain** must be specified. Optional.|
|AllowCloudPasswordValidation|Boolean| Set to `true` to allow an application to authenticate a federated user by presenting username/password credentials directly to the Microsoft Entra token endpoint. Only works if Password Hash Sync is enabled. Optional.|
|AlternateIdLogin| Json |Set to `{\"Enabled\": true}` to allow Microsoft Entra sign-in using email as [an alternate login ID](/azure/active-directory/authentication/howto-authentication-use-email-signin). Only works when **IsOrganizationDefault** is set to `true`. Optional.|
|PreferredDomain|String| Specifies a domain to accelerate sign-in to. It can be omitted if the tenant has only one federated domain. If it's omitted, and there's more than one verified federated domain, this policy has no effect. Required if **AccelerateToFederatedDomain** is `true`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.homeRealmDiscoveryPolicy",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "homeRealmDiscoveryPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
