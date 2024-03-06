---
title: "buildVersionDetails resource type"
description: "Represents the build version details of a product revision that is associated with a quality update."
author: "angiechen22"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# buildVersionDetails resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the build version details of a product revision that is associated with a quality update.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|buildNumber|Int32|The build number of the product release. Read-only.|
|majorVersion|Int32|The major version of the product release. Read-only.|
|minorVersion|Int32|The minor version of the product release. Read-only.|
|updateBuildRevision|Int32|The update build revision number of the product revision. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.buildVersionDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.buildVersionDetails",
  "buildNumber": "Int32",
  "majorVersion": "Int32",
  "minorVersion": "Int32",
  "updateBuildRevision": "Int32"
}
```
