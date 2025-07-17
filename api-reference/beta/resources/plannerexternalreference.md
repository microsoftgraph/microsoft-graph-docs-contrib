---
title: "plannerExternalReference resource type"
description: "The **plannerExternalReference** resource represents the metadata of a reference (attachments such as file, URL). It's the value of property-value pairs in the externalReferences object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 07/25/2024
---

# plannerExternalReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerExternalReference** resource represents the metadata of a reference (attachments such as file, URL). It's the value of property-value pairs in the [externalReferences object](plannerexternalreferences.md).



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|alias|String|A name alias to describe the reference.|
|lastModifiedBy|[identitySet](identityset.md)|Read-only. User ID by which this is last modified.|
|lastModifiedDateTime|DateTimeOffset|Read-only. Date and time at which this is last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|previewPriority|String|Used to set the relative priority order in which the reference will be shown as a preview on the task.|
|type|String|Used to describe the type of the reference. Types include: `PowerPoint`, `Word`, `Excel`, `Other`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.


<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerExternalReference"
}-->

```json
{
  "alias": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "previewPriority": "String",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerExternalReference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


