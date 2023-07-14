---
title: "buildVersionDetails resource type"
description: "Represents the build version details of a product revision that is associated with a quality update"
author: "angiechen22"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# buildVersionDetails resource type
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the build version details of a product revision that is associated with a quality update.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|majorVersion|Integer|The major version of the product release. Read-only.|
|minorVersion|Integer|The minor version of the product release. Read-only.|
|buildNumber|Integer|The build number of the product release. Read-only.|
|updateBuildRevision|Integer|The update build revision number of the product revision. Read-only.|

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
    "@odata.type": "#microsoft.graph.windowsUpdates.buildVersionDetails", 
    "majorVersion": "Integer",
    "minorVersion": "Integer",
    "buildNumber": "Integer",
    "updateBuildRevision": "Integer"
}
```
