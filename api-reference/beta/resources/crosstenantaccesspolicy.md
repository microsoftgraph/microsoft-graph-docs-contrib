---
title: "crossTenantAccessPolicy resource type"
description: "Cross-tenant access settings let you manage both B2B collaboration and B2B direct connect for your organization."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cross-tenant access settings let you control and manage collaboration between users in your organization and other organizations. This collaboration is mainly through the Azure Active Directory (Azure AD) B2B and Azure AD B2B Direct Connect (future) features. The control can be on either **outbound access** (how your users collaborate with other organizations), **inbound access** (how other organizations collaborate with you), or both.

Granular controls let you determine the people, groups, and apps, both in your organization and in external organizations, that can participate in Azure AD B2B and Azure AD B2B Direct Connect collaboration. These controls are implemented through:

+ **Default cross-tenant access settings** which set the baseline inbound and outbound access settings.
    + In Azure AD B2B collaboration, both access settings are enabled by default. This means all your users can be invited to external organizations, and all your users can invite external users.
    + In Azure AD B2B Direct Connect, both access settings are disabled by default.
+ **Partner-specific access settings** which allow you to configure customized settings for individual organizations. For the configured organizations, this configuration takes precedence over the default settings. Therefore, while Azure AD B2B and Azure AD B2B Direct Connect might be disabled across your organization by default, you can enable these features for a specific external organization.

> **Note:** By configuring B2B direct connect outbound settings, you agree to allow external organizations that you have enabled outbound settings with to access limited contact data about your users. Microsoft shares this data with those organizations to help them send a request to connect with your users. Data collected by external organizations, including limited contact data, is subject to the privacy policies and practices of those organizations.

Inherits from [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get crossTenantAccessPolicy](../api/crosstenantaccesspolicy-get.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Read the properties and relationships of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[Update crossTenantAccessPolicy](../api/crosstenantaccesspolicy-update.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Update the properties of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| displayName | String | The display name of the cross-tenant access policy. Inherited from [policyBase](../resources/policybase.md).|
| lastModifiedDateTime | DateTimeOffset | The time that the cross tenant access policy was last modified represented using ISO 8601 format and always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
| definition (deprecated) | String | The raw JSON definition of the cross tenant access policy. **Deprecated. Do not use.**|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|default|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Defines the default configuration for how your organization interacts with external Azure Active Directory organizations.|
|partners|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Defines partner-specific configurations for external Azure Active Directory organizations.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicy",
  "baseType": "microsoft.graph.tenantRelationshipAccessPolicyBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicy",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "definition": "String"
}
```
