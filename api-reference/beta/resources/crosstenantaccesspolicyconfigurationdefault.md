---
title: "crossTenantAccessPolicyConfigurationDefault resource type"
description: "Represents the default configuration for cross-tenant access and tenant restrictions."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Default settings
ms.date: 07/19/2024
---

# crossTenantAccessPolicyConfigurationDefault resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the default configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Microsoft Entra B2B collaboration and B2B direct connect.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/crosstenantaccesspolicyconfigurationdefault-get.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Get the default configuration for B2B collaboration and B2B direct connect inbound and outbound settings.|
|[Update](../api/crosstenantaccesspolicyconfigurationdefault-update.md)|None|Update the default configuration for B2B collaboration and B2B direct connect inbound and outbound settings.|
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
| isServiceDefault | Boolean | If `true`, the default configuration is set to the system default configuration. If `false`, the default settings are customized. |
| tenantRestrictions  |[crossTenantAccessPolicyTenantRestrictions](../resources/crosstenantaccesspolicytenantrestrictions.md) | Defines the default tenant restrictions configuration for users in your organization who access an external organization on your network or devices. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "automaticUserConsentSettings": {"@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"},
  "b2bCollaborationInbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "b2bCollaborationOutbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "b2bDirectConnectInbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "b2bDirectConnectOutbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "inboundTrust": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"},
  "invitationRedemptionIdentityProviderConfiguration": {"@odata.type": "microsoft.graph.defaultInvitationRedemptionIdentityProviderConfiguration"},
  "isServiceDefault": "Boolean",
  "tenantRestrictions": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"}
}
```
