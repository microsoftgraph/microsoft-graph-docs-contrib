---
author: MarcMroz
description: "Contains metadata about the source application in which the drive item was created."
title: driveItemSource resource type
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
---
# driveItemSource resource type

Contains metadata about the source application in which the drive item was created.

It's available on the source property of [driveItem](driveitem.md) resources.

## Properties

| Property                 | Type                       | Description                                                                                      |
| :----------------------- | :------------------------  | :----------------------------------------------------------------------------------------------- |
| application              | driveItemSourceApplication | Enumeration value that indicates the source application where the file was created.              |
| externalId               | string                     | The external identifier for the drive item from the source.                                      |

### driveItemSourceApplication values

| Value               | Description                                       |
|:--------------------|:--------------------------------------------------|
| teams               | The application is Teams.                         |
| yammer              | The application is Yammer.                        |
| sharePoint          | The application is SharePoint.                    |
| oneDrive            | The application is OneDrive.                      |
| stream              | The application is Stream.                        |
| powerPoint          | The application is PowerPoint.                    |
| office              | The application is Office.                        |
| loki                | The application is Loki.                          |
| loop                | The application is Loop.                          |
| other               | The application is a third party application.       |
| unknownFutureValue  | Marker value for future compatibility.            |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "application",
    "externalId",
  ],
  "@odata.type": "microsoft.graph.driveItemSource"
}-->

```json
{
  "application": "string",
  "externalId" : "string"
}
```

## Related content

For more information about the facets on a driveItem, see [driveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The driveItemSource facet provides information about drive item source.",
  "keywords": "driveItemSoruce,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/driveItemSource"
} -->
