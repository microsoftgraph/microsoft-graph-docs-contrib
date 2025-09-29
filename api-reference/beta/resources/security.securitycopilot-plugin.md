---
title: "Security Copilot plugin resource type"
description: "Security Copilot Plugin resource"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: resourcePageType
---

# Security Copilot plugin resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources related to the Security Copilot plugin resource.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security.securitycopilot-workspace-list-plugins.md)|[microsoft.graph.security.securityCopilot.plugin](../resources/security.securitycopilot-plugin.md) collection|Get a list of the plugin objects and their properties.|
|[Get](../api/security.securitycopilot-plugin-get.md)|[microsoft.graph.security.securityCopilot.plugin](../resources/security.securitycopilot-plugin.md)|Read the properties and relationships of [microsoft.graph.security.securityCopilot.plugin](../resources/security.securitycopilot-plugin.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorization|[microsoft.graph.security.securitycopilot.pluginAuth](../resources/security.securitycopilot-pluginauth.md)|Authorization for the plugin|
|catalogScope|microsoft.graph.security.securitycopilot.pluginCatalogScope|Lists the scope available for the plugin. The possible values are: `none`, `user`, `workspace`, `tenant`, `global`, `geoGlobal`, `userWorkspace`, `unknownFutureValue`.|
|category|microsoft.graph.security.securitycopilot.pluginCategory|Category of the plugin. The possible values are: `hidden`, `microsoft`, `microsoftConnectors`, `other`, `web`, `testing`, `plugin`, `unknownFutureValue`.|
|description|String|Brief description of the plugin|
|displayName|String|Display name of the plugin|
|isEnabled|Boolean|Displays whether the plugin is enabled for use within the scope|
|name|String|Name of plugin. This is unique for the scope|
|previewState|microsoft.graph.security.securitycopilot.pluginPreviewStates|Describes the use and availability of the plugin. The possible values are: `ga`, `public`, `private`, `unknownFutureValue`.|
|settings|[microsoft.graph.security.securitycopilot.pluginSetting](../resources/security.securitycopilot-pluginsetting.md) collection|Settings for the plugin|
|supportedAuthTypes|microsoft.graph.security.securitycopilot.pluginAuthTypes|Authorization types used for the plugin. The possible values are: `none`, `basic`, `aPIKey`, `oAuthAuthorizationCodeFlow`, `oAuthClientCredentialsFlow`, `aad`, `serviceHttp`, `aadDelegated`, `oAuthPasswordGrantFlow`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.security.securityCopilot.plugin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.plugin",
  "name": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "category": "String",
  "catalogScope": "String",
  "previewState": "String",
  "isEnabled": "Boolean",
  "settings": [
    {
      "@odata.type": "microsoft.graph.security.securityCopilot.pluginSetting"
    }
  ],
  "authorization": {
    "@odata.type": "microsoft.graph.security.securityCopilot.pluginAuth"
  },
  "supportedAuthTypes": "String"
}
```

