---
title: "teamworkSoftwareUpdateStatus resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkSoftwareUpdateStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availableVersion|String|**TODO: Add Description**|
|currentVersion|String|**TODO: Add Description**|
|softwareFreshness|teamworkSoftwareFreshness|**TODO: Add Description**. The possible values are: `unknown`, `latest`, `updateAvailable`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSoftwareUpdateStatus",
  "softwareFreshness": "String",
  "currentVersion": "String",
  "availableVersion": "String"
}
```

