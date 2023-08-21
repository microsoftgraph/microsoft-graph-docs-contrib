---
title: "crossTenantAccessPolicyConfigurationPartner resource type"
description: "The partner-specific configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Azure AD B2B collaboration and B2B direct connect."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantAccessPolicyConfigurationPartner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The partner-specific configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Azure AD B2B collaboration and B2B direct connect.

For any partner-specific property that is `null`, these settings will inherit the behavior configured in your [default cross tenant access settings](../resources/crosstenantaccesspolicyconfigurationdefault.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [List partners](../api/crosstenantaccesspolicy-list-partners.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection | Get a list of all partner-specific configurations. |
| [Create crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicy-post-partners.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Create a new partner-specific configuration. |
| [Get crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicyconfigurationpartner-get.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Read the partner-specific configuration settings. |
| [Update crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicyconfigurationpartner-update.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Update the properties of a partner-specific configuration. |
| [Delete crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicyconfigurationpartner-delete.md) | None | Delete the partner-specific configuration. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
| automaticUserConsentSettings | [inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md) | Determines the partner-specific configuration for automatic user consent settings. Unless specifically configured, the **inboundAllowed** and **outboundAllowed** properties are `null` and inherit from the default settings, which is always `false`. |
| b2bCollaborationInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users from other organizations accessing your resources via Azure AD B2B collaboration. |
| b2bCollaborationOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration. |
| b2bDirectConnectInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect. |
| b2bDirectConnectOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect. |
| inboundTrust | [crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md) | Determines the partner-specific configuration for trusting other Conditional Access claims from external Azure AD organizations. |
| tenantRestrictions | [crossTenantAccessPolicyTenantRestrictions](../resources/crosstenantaccesspolicytenantrestrictions.md) | Defines the partner-specific tenant restrictions configuration for your organization users accessing a partner organization using partner supplied idenities on your network or devices. |
| isServiceProvider | Boolean | Identifies whether the partner-specific configuration is a Cloud Service Provider for your organization. |
| tenantId | String | The tenant identifier for the partner Azure AD organization. Read-only. Key.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identitySynchronization|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Defines the cross-tenant policy for the synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "automaticUserConsentSettings": {
    "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
  },
  "tenantId": "String (identifier)",
  "inboundTrust": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"
  },
  "b2bCollaborationOutbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bCollaborationInbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bDirectConnectOutbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bDirectConnectInbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "tenantRestrictions": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
  },
  "isServiceProvider": "Boolean"
}
```
