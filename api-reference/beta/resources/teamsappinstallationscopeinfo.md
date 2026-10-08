---
title: "teamsAppInstallationScopeInfo resource type"
description: "An abstract type that represents the details of the scope where the Teams app is installed."
author: "sthapliyal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 06/05/2026
---

# teamsAppInstallationScopeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the details of the scope where the Teams app is installed.

Base type of [groupChatTeamsAppInstallationScopeInfo](../resources/groupchatteamsappinstallationscopeinfo.md), [personalTeamsAppInstallationScopeInfo](../resources/personalteamsappinstallationscopeinfo.md), and [teamTeamsAppInstallationScopeInfo](../resources/teamteamsappinstallationscopeinfo.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|scope|teamsAppInstallationScopes|The scope in which the Teams app is installed. The possible values are: `team`, `groupChat`, `personal`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppInstallationScopeInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppInstallationScopeInfo",
  "scope": "String"
}
```
