---
title: "personalTeamsAppInstallationScopeInfo resource type"
description: "Represents the installation scope details when the Teams app is installed, updated, or deleted for a user."
author: "sthapliyal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 06/05/2026
---

# personalTeamsAppInstallationScopeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the installation scope details when the Teams app is installed, updated, or deleted for a [user](../resources/user.md).

Inherits from [teamsAppInstallationScopeInfo](../resources/teamsappinstallationscopeinfo.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|scope|teamsAppInstallationScopes|The scope in which the Teams app is updated, installed, or deleted. The possible values are: `team`, `groupChat`, `personal`, `unknownFutureValue`. Inherited from [teamsAppInstallationScopeInfo](../resources/teamsappinstallationscopeinfo.md).|
|userId|String|The ID of the user for whom the Teams app is installed.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.personalTeamsAppInstallationScopeInfo",
  "baseType": "microsoft.graph.teamsAppInstallationScopeInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personalTeamsAppInstallationScopeInfo",
  "scope": "String",
  "userId": "String"
}
```
