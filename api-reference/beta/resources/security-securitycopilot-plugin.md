---
title: "plugin resource type"
description: "Represents a plugin in Security Copilot."
author: "spunukol"
ms.date: 11/03/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# plugin resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a plugin scoped to a [workspace](../resources/security-securitycopilot-workspace.md) in Security Copilot. For more information, see [Plugins in Microsoft Security Copilot](/copilot/security/plugin-overview).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-securitycopilot-workspace-list-plugins.md)|[microsoft.graph.security.securityCopilot.plugin](../resources/security-securitycopilot-plugin.md) collection|Get a list of the plugin objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorization|[microsoft.graph.security.securityCopilot.pluginAuth](../resources/security-securitycopilot-pluginauth.md)|Authorization for the plugin.|
|catalogScope|microsoft.graph.security.securityCopilot.pluginCatalogScope|Lists the scope available for the use of the plugin. The possible values are: `none`, `user`, `workspace`, `tenant`, `global`, `geoGlobal`, `userWorkspace`, `unknownFutureValue`.|
|category|microsoft.graph.security.securityCopilot.pluginCategory|Category of the plugin. The possible values are: `hidden`, `microsoft`, `microsoftConnectors`, `other`, `web`, `testing`, `plugin`, `unknownFutureValue`.|
|description|String|Brief description of the plugin.|
|displayName|String|Display name of the plugin. <br> <br> Supports `$filter` (`eq`).|
|isEnabled|Boolean|Displays whether the plugin is enabled for use within the catalogScope. <br> <br> Supports `$filter` (`eq`).|
|name|String|Represents the name of the plugin. Primary key. <br> <br> Supports `$filter` (`eq`, `contains`).|
|previewState|microsoft.graph.security.securityCopilot.pluginPreviewStates|Describes the use and availability of the plugin. The possible values are: `ga`, `public`, `private`, `unknownFutureValue`.|
|settings|[microsoft.graph.security.securityCopilot.pluginSetting](../resources/security-securitycopilot-pluginsetting.md) collection|Settings for the plugin.|
|supportedAuthTypes|microsoft.graph.security.securityCopilot.pluginAuthTypes|Authorization types used for the plugin. The possible values are: `none`, `basic`, `aPIKey`, `oAuthAuthorizationCodeFlow`, `oAuthClientCredentialsFlow`, `aad`, `serviceHttp`, `aadDelegated`, `oAuthPasswordGrantFlow`, `unknownFutureValue`. Currently unsupported.|

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

