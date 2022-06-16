---
title: "teamsAppSettings resource type"
description: "Represents Teams App Settings"
author: "subray2014"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide settings for all [Teams apps](teamsapp.md). Organizations use Teams apps to connect with their customers, provide services, and share information. These settings include the ability to control tenant-wide functionality related to these apps such as allowing the apps to acquire [Resource-specific permissions](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamsAppSettings](../api/teamsappsettings-get.md)|[teamsAppSettings](../resources/teamsappsettings.md)|Read the properties and relationships of a [teamsAppSettings](../resources/teamsappsettings.md) object.|
|[Update teamsAppSettings](../api/teamsappsettings-update.md)|[teamsAppSettings](../resources/teamsappsettings.md)|Update the properties of a [teamsAppSettings](../resources/teamsappsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isChatResourceSpecificConsentEnabled|Boolean|Indicates whether Chat Resource Specific Consent has been enabled for the tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAppSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppSettings",
  "id": "String (identifier)",
  "isChatResourceSpecificConsentEnabled": "Boolean"
}
```

## See also

- [Resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)