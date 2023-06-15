---
title: "multiTenantOrganizationPartnerConfigurationTemplate resource type"
description: "Defines an optional cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationPartnerConfigurationTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines an optional cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization. For more information, see [crossTenantAccessPolicyConfigurationPartner resource type](crosstenantaccesspolicyconfigurationpartner.md).

Each tenant has its own template. This template is applied when a tenant joins a multi-tenant organization, or when other tenants join a multi-tenant organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get multiTenantOrganizationPartnerConfigurationTemplate](../api/multitenantorganizationpartnerconfigurationtemplate-get.md)|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|Get the inbound and outbound partner configuration settings of the template.|
|[Update multiTenantOrganizationPartnerConfigurationTemplate](../api/multitenantorganizationpartnerconfigurationtemplate-update.md)|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|Update the inbound and outbound partner configuration settings of the template.|
|[resetToDefaultSettings](../api/multitenantorganizationpartnerconfigurationtemplate-resettodefaultsettings.md)|None|Reset the inbound and outbound partner configuration settings of the template to the default values.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|automaticUserConsentSettings|[inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md)|Determines the partner-specific configuration for automatic user consent settings. Unless specifically configured, the **inboundAllowed** and **outboundAllowed** properties are `null` and inherit from the default settings, which is always `false`.|
|b2bCollaborationInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.|
|b2bCollaborationOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.|
|b2bDirectConnectInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect.|
|b2bDirectConnectOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.|
|inboundTrust|[crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|Determines the partner-specific configuration for trusting other Conditional Access claims from external Azure AD organizations.|
|templateApplicationLevel|templateApplicationLevel|**TODO: Add Description**.The possible values are: `none`, `newPartners`, `existingPartners`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.multiTenantOrganizationPartnerConfigurationTemplate",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationPartnerConfigurationTemplate",
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
  "automaticUserConsentSettings": {
    "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
  },
  "templateApplicationLevel": "String"
}
```

