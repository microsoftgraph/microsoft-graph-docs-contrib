---
title: "crossTenantAccessPolicy resource type"
description: "Cross-tenant access settings let you manage both B2B collaboration and B2B direct connect for your organization."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cross-tenant access settings let you manage both B2B collaboration and B2B direct connect for your organization. You can determine how your users collaborate with other organizations (outbound access) and how other organizations collaborate with you (inbound access). Granular controls let you determine the people, groups, and apps, both in your organization and in external organizations, that can participate in B2B collaboration and B2B direct connect.

- Default cross-tenant access settings let you determine your baseline inbound and outbound settings for both B2B collaboration and B2B direct connect for your organization and all external organizations. B2B collaboration, both inbound and outbound, is enabled by default. This means all your users can be invited to external organizations, and all your users can invite external users for B2B collaboration. B2B direct connect is disabled by default.

- Organization-specific access settings let you configure customized settings for individual organizations, which take precedence over default settings. This means that although B2B collaboration and B2B direct connect might be disabled across your organization by default, you could enable these features for a specific external organization.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get crossTenantAccessPolicy](../api/crosstenantaccesspolicy-get.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Read the properties and relationships of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[Update crossTenantAccessPolicy](../api/crosstenantaccesspolicy-update.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Update the properties of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[List partners](../api/crosstenantaccesspolicy-list-partners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Get a list of all partner specific configurations.|
|[Create crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicy-post-partners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)|Create a new partner specific configuration.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the cross tenant access policy. Inherited from [policyBase](../resources/policybase.md).|
|lastModifiedDateTime|DateTimeOffset|The time that the cross tenant access policy was last modified.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|default|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Defines the default configuration for how your organization interacts with external Azure Active Directory organizations.|
|partners|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Defines partner specific configurations for external Azure Active Directory organizations.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicy",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicy",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "default": "microsoft.graph.crossTenantAccessPolicyConfigurationDefault",
  "partners": ["microsoft.graph.crossTenantAccessPolicyConfigurationPartner"]
}
```
