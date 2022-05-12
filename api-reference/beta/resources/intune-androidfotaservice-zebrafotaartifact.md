---
title: "zebraFotaArtifact resource type"
description: "Describes a single artifact for a specific device model."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# zebraFotaArtifact resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes a single artifact for a specific device model.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List zebraFotaArtifacts](../api/intune-androidfotaservice-zebrafotaartifact-list.md)|[zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) collection|List properties and relationships of the [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) objects.|
|[Get zebraFotaArtifact](../api/intune-androidfotaservice-zebrafotaartifact-get.md)|[zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md)|Read properties and relationships of the [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) object.|
|[Create zebraFotaArtifact](../api/intune-androidfotaservice-zebrafotaartifact-create.md)|[zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md)|Create a new [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) object.|
|[Delete zebraFotaArtifact](../api/intune-androidfotaservice-zebrafotaartifact-delete.md)|None|Deletes a [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md).|
|[Update zebraFotaArtifact](../api/intune-androidfotaservice-zebrafotaartifact-update.md)|[zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md)|Update the properties of a [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of ZebraFotaArtifact.|
|deviceModel|String|Artifact device model.|
|osVersion|String|Artifact OS version.|
|patchVersion|String|Artifact patch version.|
|boardSupportPackageVersion|String|The version of the Board Support Package.|
|releaseNotesUrl|String|Artifact release notes URL.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.zebraFotaArtifact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.zebraFotaArtifact",
  "id": "String (identifier)",
  "deviceModel": "String",
  "osVersion": "String",
  "patchVersion": "String",
  "boardSupportPackageVersion": "String",
  "releaseNotesUrl": "String"
}
```




