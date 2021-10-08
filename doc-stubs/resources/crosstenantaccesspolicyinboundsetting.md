---
title: "crossTenantAccessPolicyInboundSetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# crossTenantAccessPolicyInboundSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantAccessPolicyInboundSettings](../api/crosstenantaccesspolicyinboundsetting-list.md)|[crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md) collection|Get a list of the [crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md) objects and their properties.|
|[Create crossTenantAccessPolicyInboundSetting](../api/crosstenantaccesspolicyinboundsetting-create.md)|[crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md)|Create a new [crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md) object.|
|[Get crossTenantAccessPolicyInboundSetting](../api/crosstenantaccesspolicyinboundsetting-get.md)|[crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md)|Read the properties and relationships of a [crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md) object.|
|[Update crossTenantAccessPolicyInboundSetting](../api/crosstenantaccesspolicyinboundsetting-update.md)|[crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md)|Update the properties of a [crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md) object.|
|[Delete crossTenantAccessPolicyInboundSetting](../api/crosstenantaccesspolicyinboundsetting-delete.md)|None|Deletes a [crossTenantAccessPolicyInboundSetting](../resources/crosstenantaccesspolicyinboundsetting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|
|isAccessAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|
|isCompliantDeviceAccepted|Boolean|**TODO: Add Description**|
|isHybridAzureADJoinedDeviceAccepted|Boolean|**TODO: Add Description**|
|isMfaAccepted|Boolean|**TODO: Add Description**|
|isNativeFederationAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|
|isServiceProviderAllowed|Boolean|**TODO: Add Description**|
|targets|[crossTenantAccessPolicyTarget](../resources/crosstenantaccesspolicytarget.md) collection|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundSetting",
  "baseType": "Microsoft.DirectoryServices.crossTenantAccessPolicySettingsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyInboundSetting",
  "id": "String (identifier)",
  "isAccessAllowed": "Boolean",
  "isNativeFederationAllowed": "Boolean",
  "targets": [
    {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
    }
  ],
  "isServiceProviderAllowed": "Boolean",
  "isMfaAccepted": "Boolean",
  "isCompliantDeviceAccepted": "Boolean",
  "isHybridAzureADJoinedDeviceAccepted": "Boolean"
}
```

