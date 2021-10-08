---
title: "crossTenantAccessPolicyOutboundSetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# crossTenantAccessPolicyOutboundSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantAccessPolicyOutboundSettings](../api/crosstenantaccesspolicyoutboundsetting-list.md)|[crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) collection|Get a list of the [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) objects and their properties.|
|[Create crossTenantAccessPolicyOutboundSetting](../api/crosstenantaccesspolicyoutboundsetting-create.md)|[crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md)|Create a new [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.|
|[Get crossTenantAccessPolicyOutboundSetting](../api/crosstenantaccesspolicyoutboundsetting-get.md)|[crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md)|Read the properties and relationships of a [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.|
|[Update crossTenantAccessPolicyOutboundSetting](../api/crosstenantaccesspolicyoutboundsetting-update.md)|[crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md)|Update the properties of a [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.|
|[Delete crossTenantAccessPolicyOutboundSetting](../api/crosstenantaccesspolicyoutboundsetting-delete.md)|None|Deletes a [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|
|isAccessAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|
|isNativeFederationAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|
|targets|[crossTenantAccessPolicyTarget](../resources/crosstenantaccesspolicytarget.md) collection|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyOutboundSetting",
  "baseType": "Microsoft.DirectoryServices.crossTenantAccessPolicySettingsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyOutboundSetting",
  "id": "String (identifier)",
  "isAccessAllowed": "Boolean",
  "isNativeFederationAllowed": "Boolean",
  "targets": [
    {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
    }
  ]
}
```

