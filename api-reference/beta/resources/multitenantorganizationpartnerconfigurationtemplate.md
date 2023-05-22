---
title: "multiTenantOrganizationPartnerConfigurationTemplate resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationPartnerConfigurationTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get multiTenantOrganizationPartnerConfigurationTemplate](../api/multitenantorganizationpartnerconfigurationtemplate-get.md)|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|Read the properties and relationships of a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object.|
|[Update multiTenantOrganizationPartnerConfigurationTemplate](../api/multitenantorganizationpartnerconfigurationtemplate-update.md)|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|Update the properties of a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object.|
|[resetToDefaultSettings](../api/multitenantorganizationpartnerconfigurationtemplate-resettodefaultsettings.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|automaticUserConsentSettings|[inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md)|Determines the partner-specific configuration for automatic user consent settings. Unless specifically configured, the **inboundAllowed** and **outboundAllowed** properties are `null` and inherit from the default settings, which is always `false`.|
|b2bCollaborationInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.|
|b2bCollaborationOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.|
|b2bDirectConnectInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect.|
|b2bDirectConnectOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.|
|inboundTrust|[crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|Determines the partner-specific configuration for trusting other Conditional Access claims from external Azure AD organizations.|

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
  }
}
```

