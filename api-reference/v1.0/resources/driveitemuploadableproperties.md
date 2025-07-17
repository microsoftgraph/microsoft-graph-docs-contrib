---
title: "driveItemUploadableProperties resource type"
description: "The driveItemUploadableProperties resource represents an item being uploaded when creating an upload session."
ms.localizationpriority: medium
author: "spgraph-docs-team"
ms.subservice: "onedrive"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# driveItemUploadableProperties resource type

Namespace: microsoft.graph

Represents an item being uploaded when [creating an upload session](../api/driveitem-createuploadsession.md).

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.driveItemUploadableProperties",
  "baseType": null
}-->

```json
{
  "description": "String",
  "fileSize": 1024,
  "fileSystemInfo": {"@odata.type": "microsoft.graph.fileSystemInfo"},
  "name": "String"
}
```

## Properties

| Property      | Type                                  | Description                                                                                         |
|:--------------|:--------------------------------------|:----------------------------------------------------------------------------------------------------|
|description    | String                                | Provides a user-visible description of the item. Read-write. Only on OneDrive Personal.             |
|driveItemSource| [driveItemSource](driveitemsource.md) | Information about the drive item source. Read-write. Only on OneDrive for Business and SharePoint.  |
|fileSize       | Int64                                 | Provides an expected file size to perform a quota check before uploading. Only on OneDrive Personal. |
|fileSystemInfo | [fileSystemInfo](filesysteminfo.md)   | File system information on client. Read-write.                                                      |
|mediaSource    | [mediaSource](mediaSource.md)         | Media source information. Read-write. Only on OneDrive for Business and SharePoint.                 |
|name           | String                                | The name of the item (filename and extension). Read-write.                                          |

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "driveItemUploadableProperties resource",
  "keywords": "driveItemUploadableProperties,createUploadSession",
  "section": "documentation",
  "tocPath": ""
}-->

