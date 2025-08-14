---
title: "fileStorageContainerAgentSettings resource type"
description: "Settings related to the agent used for FileStorageContainers"
author: "tmarwendo"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerAgentSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for agents on a SharePoint Embedded application.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|chatEmbedAllowedHosts|String collection|Determines which host URLs are allowed to embed the agent chat experience. Limited to 10 hosts.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerAgentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerAgentSettings",
  "chatEmbedAllowedHosts": [
    "String"
  ]
}
```