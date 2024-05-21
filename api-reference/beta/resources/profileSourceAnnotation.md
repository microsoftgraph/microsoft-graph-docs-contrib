---
title: "profileSourceAnnotation resource type"
description: "Represents the sources the user data comes from, such as Entra, UPA, Connector, and so on."
ms.localizationpriority: medium
author: "caiyuanle"
ms.service: "microsoft-graph"
ms.subservice: "people"
doc_type: resourcePageType
---

# profileSourceAnnotation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sources the user data comes from, such as Entra, UPA, Connector, and so on.

## Properties
|Property	|Type	|Description|
|:--------|:----|:----------|
|id|String|The unique identifier of the source (Details of the source can be found [here](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d#ID0EBF=About_Microsoft_365_User_Profile_Data)).|
|isDefaultSource|Boolean|Indicates whether the source is the default one.|
|properties|Collection(String)|The names of properties that have data from this source.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileSourceAnnotation"
}-->

```json
{
  "id": "String (GUID)",
  "isDefaultSource": "Boolean",
  "properties": "Collection(String)"
}
```
