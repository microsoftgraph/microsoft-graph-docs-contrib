---
title: "groupChatTeamsAppInstallationScopeInfo resource type"
description: "Represents the installation scope details when the Teams app is installed, updated, or deleted from a chat."
author: "sthapliyal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 06/05/2026
---

# groupChatTeamsAppInstallationScopeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the installation scope details when the Teams app is installed, updated, or deleted from a [chat](../resources/chat.md).

Inherits from [teamsAppInstallationScopeInfo](../resources/teamsappinstallationscopeinfo.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|chatId|String|The ID of the chat where the Teams app is installed.|
|scope|teamsAppInstallationScopes|The scope in which the Teams app is installed. The possible values are: `team`, `groupChat`, `personal`, `unknownFutureValue`. Inherited from [teamsAppInstallationScopeInfo](../resources/teamsappinstallationscopeinfo.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupChatTeamsAppInstallationScopeInfo",
  "baseType": "microsoft.graph.teamsAppInstallationScopeInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupChatTeamsAppInstallationScopeInfo",
  "chatId": "String",
  "scope": "String"
}
```
