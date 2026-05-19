---
title: "crossTenantAccessPolicyConfigurationPartner resource type"
description: "Represents the partner-specific configuration for cross-tenant access and tenant restrictions."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Partner settings
ms.date: 07/19/2024
---

# crossTenantAccessPolicyConfigurationPartner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the partner-specific configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Microsoft Entra B2B collaboration and B2B direct connect.

For any partner-specific property that is `null`, these settings inherit the behavior configured in your [default cross-tenant access settings](../resources/crosstenantaccesspolicyconfigurationdefault.md).

Inherits from [policyDeletableItem](../resources/policydeletableitem.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [List](../api/crosstenantaccesspolicy-list-partners.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection | Get a list of all partner-specific configurations. |
| [Create](../api/crosstenantaccesspolicy-post-partners.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Create a new partner-specific configuration. |
| [Get](../api/crosstenantaccesspolicyconfigurationpartner-get.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Read the partner-specific configuration settings. |
| [Update](../api/crosstenantaccesspolicyconfigurationpartner-update.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Update the properties of a partner-specific configuration. |
| [Delete](../api/crosstenantaccesspolicyconfigurationpartner-delete.md) | None | Delete the partner-specific configuration. |
| [List deleted policies](../api/policydeletableitem-list.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection | List all deleted partner-specific configuration policies. |
| [Get deleted policy](../api/policydeletableitem-get.md) | [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) | Get a single deleted partner-specific configuration policy. |
| [Permanently delete deleted policy](../api/policydeletableitem-delete.md) | None | Permanently delete a deleted partner-specific configuration policy. |
|[Restore deleted policy](../api/crosstenantaccesspolicyconfigurationpartner-restore.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)| Restore the partner-specific configuration policy. |
|[List Microsoft 365 capabilities](../api/crosstenantaccesspolicyconfigurationpartner-list-m365capabilities.md)|[m365CapabilityBase](../resources/m365capabilitybase.md) collection|Get a list of Microsoft 365 cross-tenant capabilities configured for a partner organization in the [cross-tenant access policy](../resources/crosstenantaccesspolicy-overview.md).|
|[Create Microsoft 365 capability](../api/crosstenantaccesspolicyconfigurationpartner-post-m365capabilities.md)|[m365CapabilityBase](../resources/m365capabilitybase.md)|Create a new Microsoft 365 cross-tenant capability for a partner organization in the [cross-tenant access policy](../resources/crosstenantaccesspolicy-overview.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| appServiceConnectInbound | [crossTenantAccessPolicyAppServiceConnectSetting](../resources/crosstenantaccesspolicyappserviceconnectsetting.md) | Defines your partner-specific configuration for inbound app service connect settings that control which applications can connect across tenant boundaries with the partner organization. |
| automaticUserConsentSettings | [inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md) | Determines the partner-specific configuration for automatic user consent settings. Unless configured, the **inboundAllowed** and **outboundAllowed** properties are `null` and inherit from the default settings, which is always `false`. |
| b2bCollaborationInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users from other organizations accessing your resources via Microsoft Entra B2B collaboration. |
| b2bCollaborationOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B collaboration. |
| b2bDirectConnectInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect. |
| b2bDirectConnectOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B direct connect. |
| blockServiceProviderOutboundAccess | Boolean | Specifies whether users can use granular delegated admin privileges (GDAP) to sign-in and access resources in other organizations. Default value is `false`. |
|deletedDateTime|DateTimeOffset|Shows the last date and time the policy was deleted.|
| inboundTrust | [crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md) | Determines the partner-specific configuration for trusting other Conditional Access claims from external Microsoft Entra organizations. |
| isInMultiTenantOrganization | Boolean | Identifies whether a tenant is a member of a multitenant organization. |
| isServiceProvider | Boolean | Identifies whether the partner-specific configuration is a Cloud Service Provider for your organization. |
| m365CollaborationInbound | [crossTenantAccessPolicyM365CollaborationInboundSetting](../resources/crosstenantaccesspolicym365collaborationinboundsetting.md) | Defines your partner-specific configuration for inbound Microsoft 365 collaboration settings that determine which users from the partner organization can collaborate with your organization using Microsoft 365 apps. |
| m365CollaborationOutbound | [crossTenantAccessPolicyM365CollaborationOutboundSetting](../resources/crosstenantaccesspolicym365collaborationoutboundsetting.md) | Defines your partner-specific configuration for outbound Microsoft 365 collaboration settings that determine which users in your organization can collaborate with the partner organization using Microsoft 365 apps. |
| tenantId | String | The tenant identifier for the partner Microsoft Entra organization. Read-only. Key.|
| tenantRestrictions | [crossTenantAccessPolicyTenantRestrictions](../resources/crosstenantaccesspolicytenantrestrictions.md) | Defines the partner-specific tenant restrictions configuration for users in your organization who access a partner organization using partner supplied identities on your network or devices. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identitySynchronization|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Defines the cross-tenant policy for the synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multitenant organization by automating the creation, update, and deletion of users from one tenant to another.|
|m365Capabilities|[m365CapabilityBase](../resources/m365capabilitybase.md) collection|Defines the partner-specific Microsoft 365 cross-tenant capabilities for inbound access from the partner organization.|

## JSON representation

The following JSON representation shows the resource type.
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
  "appServiceConnectInbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyAppServiceConnectSetting"},
  "automaticUserConsentSettings": {"@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"},
  "b2bCollaborationInbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "b2bCollaborationOutbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "b2bDirectConnectInbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "b2bDirectConnectOutbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"},
  "blockServiceProviderOutboundAccess": "Boolean",
  "deletedDateTime": "String (timestamp)",
  "inboundTrust": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"},
  "isInMultiTenantOrganization": "Boolean",
  "isServiceProvider": "Boolean",
  "m365CollaborationInbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyM365CollaborationInboundSetting"},
  "m365CollaborationOutbound": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyM365CollaborationOutboundSetting"},
  "tenantId": "String (identifier)",
  "tenantRestrictions": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"}
}
```
