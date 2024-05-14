---
title: "crossTenantAccessPolicyConfigurationDefault resource type"
description: "The default configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Microsoft Entra B2B collaboration and B2B direct connect."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantAccessPolicyConfigurationDefault resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The default configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Microsoft Entra B2B collaboration and B2B direct connect.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicyconfigurationdefault-get.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Get the default configuration for B2B collaboration and B2B direct connect inbound and outbound settings.|
|[Update crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicyconfigurationdefault-update.md)|None|Update the default configuration for B2B collaboration and B2B direct connect inbound and outbound settings.|
|[Reset to system default](../api/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault.md)|None|Reset the default configuration for a cross-tenant access policy to the system default settings.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| automaticUserConsentSettings | [inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md) | Determines the default configuration for automatic user consent settings. The **inboundAllowed** and **outboundAllowed** properties are always `false` and can't be updated in the default configuration. Read-only. |
| b2bCollaborationInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) |Defines your default configuration for users from other organizations accessing your resources via Microsoft Entra B2B collaboration. |
| b2bCollaborationOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) |Defines your default configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B collaboration. |
| b2bDirectConnectInbound  |[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users from other organizations accessing your resources via Microsoft Entra B2B direct connect. |
| b2bDirectConnectOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) |Defines your default configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B direct connect. |
| inboundTrust | [crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md) | Determines the default configuration for trusting other Conditional Access claims from external Microsoft Entra organizations. |
| invitationRedemptionIdentityProviderConfiguration | [defaultInvitationRedemptionIdentityProviderConfiguration](../resources/defaultInvitationRedemptionIdentityProviderConfiguration.md) | Defines the priority order based on which an identity provider is selected during invitation redemption for a guest user. |
| tenantRestrictions  |[crossTenantAccessPolicyTenantRestrictions](../resources/crosstenantaccesspolicytenantrestrictions.md) | Defines the default tenant restrictions configuration for your organization users accessing an external organization on your network or devices. |
| isServiceDefault | Boolean | If `true`, the default configuration is set to the system default configuration. If `false`, the default settings are customized. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationDefault",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationDefault",
  "automaticUserConsentSettings": {"@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"},"inboundTrust": {
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
  "invitationRedemptionIdentityProviderConfiguration": {
    "@odata.type": "microsoft.graph.defaultInvitationRedemptionIdentityProviderConfiguration"
  },
  "isServiceDefault": "Boolean"
}
```
