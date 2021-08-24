---
title: "crossTenantAccessPolicyConfigurationDefault resource type"
description: "The default configuration defined for B2B collaboration and B2B direct connect inbound and outbound settings."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicyConfigurationDefault resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The default configuration defined for B2B collaboration and B2B direct connect inbound and outbound settings.

Inherits from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicyconfigurationdefault-get.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Get the default configuration for B2B collaboration and B2B direct connect inbound and outbound settings.|
|[Update crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicyconfigurationdefault-update.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Update the default configuration for B2B collaboration and B2B direct connect inbound and outbound settings.|
|[Reset to system default](../api/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Reset the default configuration for a cross tenant access policy to the system default settings.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|b2bCollaborationInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users from other organizations accessing your resources via B2B collaboration. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bCollaborationOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users in your organization going outbound to access resources in another organization via B2B collaboration. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bDirectConnectInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users from other organizations accessing your resources via B2B direct connect. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bDirectConnectOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users in your organization going outbound to access resources in another organization via B2B direct connect. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|inboundTrust|[crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|Determines the default configuration for trusting other conditional access claims from external Azure Active Directory organizations. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|isServiceDefault|Boolean|If true, means the default configuration is set to the system default configuration. If false, means that the default settings have been customized.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationDefault",
  "baseType": "microsoft.graph.crossTenantAccessPolicyConfigurationBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationDefault",
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
  "isServiceDefault": "Boolean"
}
```
