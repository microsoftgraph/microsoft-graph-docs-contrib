---
title: "applicationSignInDetailedSummary resource type"
description: "Represents a detailed summary of an application sign-in."
ms.localizationpriority: medium
author: "sureshja"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
toc.title: Application sign-in detailed summary (preview)
---

# applicationSignInDetailedSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a detailed summary of an application sign-in.

Inherits from [entity](../resources/entity.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/reportroot-list-applicationsignindetailedsummary.md) | [applicationSignInDetailedSummary](applicationsignindetailedsummary.md) collection | Retrieve **applicationSignInDetailedSummary** objects. |
| [Get](../api/applicationsignindetailedsummary-get.md) | [applicationSignInDetailedSummary](applicationsignindetailedsummary.md) | Read the properties and relationships of an **applicationSignInDetailedSummary** object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|aggregatedEventDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|appDisplayName|String|Name of the application that the user signed in to.|
|appId|String|ID of the application that the user signed in to.|
|id|String| A unique ID representing the sign-in activity. Inherited from [entity](../resources/entity.md).|
|signInCount|Int64|Count of sign-ins made by the application.|
|status|[signInStatus](signinstatus.md)|Details of the sign-in status.|

## Relationships
None.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationSignInDetailedSummary"
}-->

```json
{
  "aggregatedEventDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "appId": "String",
  "id": "String (identifier)",
  "signInCount": "Int64",
  "status": {"@odata.type": "microsoft.graph.signInStatus"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationSignInDetailedSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


