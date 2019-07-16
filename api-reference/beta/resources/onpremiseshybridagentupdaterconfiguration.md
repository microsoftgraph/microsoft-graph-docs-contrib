---
title: "hybridAgentUpdaterConfiguration resource type"
description: "hybridAgentUpdaterConfiguration resource type."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# hybridAgentUpdaterConfiguration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowUpdateConfigurationOverride|Boolean||
|deferUpdateDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|updateWindow|[updateWindow](onpremisesupdatewindow.md)||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.hybridAgentUpdaterConfiguration",
  "baseType": null
}-->

```json
{
  "allowUpdateConfigurationOverride": true,
  "deferUpdateDateTime": "String (timestamp)",
  "updateWindow": {"@odata.type": "microsoft.graph.updateWindow"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "hybridAgentUpdaterConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->