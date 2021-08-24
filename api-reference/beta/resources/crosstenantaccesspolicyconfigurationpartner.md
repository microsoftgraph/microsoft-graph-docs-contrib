---
title: "crossTenantAccessPolicyConfigurationPartner resource type"
description: "The partner specific configuration for B2B collaboration and B2B direct connect inbound and outbound settings."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicyConfigurationPartner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The partner specific configuration for B2B collaboration and B2B direct connect inbound and outbound settings.

Inherits from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List partners](../api/crosstenantaccesspolicy-list-partners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Get a list of all partner specific configurations.|
|[Create crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicy-post-partners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)|Create a new partner specific configuration.|
|[Get crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicyconfigurationpartner-get.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)|Read the partner specific configuration settings.|
|[Update crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicyconfigurationpartner-update.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)|Update the properties of a partner specific configuration.|
|[Delete crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicyconfigurationpartner-delete.md)|None|Delete the partner specific configuration.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|The tenant identifier (GUID) for the partner Azure Active Directory organization.|
|b2bCollaborationInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner specific configuration for users from other organizations accessing your resources via B2B collaboration. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bCollaborationOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner specific configuration for users in your organization going outbound to access resources in another organization via B2B collaboration. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bDirectConnectInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner specific configuration for users from other organizations accessing your resources via B2B direct connect. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bDirectConnectOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your partner specific configuration for users in your organization going outbound to access resources in another organization via B2B direct connect. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|inboundTrust|[crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|Determines the partner specific configuration for trusting other conditional access claims from external Azure Active Directory organizations. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|isServiceProvider|Boolean|Identifies whether the partner specific configuration is a cloud service provider for your organization.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "baseType": "microsoft.graph.crossTenantAccessPolicyConfigurationBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "tenantId": "String",
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
  "isServiceProvider": "Boolean"
}
```
