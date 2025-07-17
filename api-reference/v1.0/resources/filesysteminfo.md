---
author: spgraph-docs-team
title: fileSystemInfo resource type
ms.localizationpriority: medium
description: "The fileSystemInfo resource contains properties that are reported by the device's local file system for the local version of an item."
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 03/11/2024
---

# fileSystemInfo resource type

Namespace: microsoft.graph

The **fileSystemInfo** resource contains properties that are reported by the device's local file system for the local version of an item.
This facet can be used to specify the last modified date or created date of the item as it was on the local device.

It is available on the fileSystemInfo property of [driveItem](driveitem.md) resources.

## Properties

| Property                 | Type           | Description                                                                                                          |
| :----------------------- | :------------- | :------------------------------------------------------------------------------------------------------------------- |
| **createdDateTime**      | DateTimeOffset | The UTC date and time the file was created on a client.                                                              |
| **lastAccessedDateTime** | DateTimeOffset | The UTC date and time the file was last accessed. Available for the [recent file list](../api/drive-recent.md) only. |
| **lastModifiedDateTime** | DateTimeOffset | The UTC date and time the file was last modified on a client.                                                        |

### Notes

Values for **createdDateTime** and **lastModifiedDateTime** vary from the same properties on the [driveItem](driveitem.md) resource.
The values on the DriveItem resource are the created and modified date and time as seen from the service.
The values stored in the **FileSystemInfo** resource are provided by the client.

For example, if a file was created on the device on Monday, but not uploaded to the service until Tuesday, the client that uploads the file should write the `fileSystemInfo` facet to include the created date on Monday.
When the item metadata is retrieved, the created date for the item will reflect Tuesday, but the `fileSystemInfo` facet will show the original created date on Monday.

These properties are read/write.
If you are uploading a file and know the local client values for these fields, you should include them in the request.

If the file's content is updated and these properties are not provided, **lastModifiedDateTime** automatically resets to the current time.

**lastAccessedDateTime** is not available for items in SharePoint online or OneDrive for Business.

For more information about the facets on a driveItem, see [driveItem](driveitem.md).


## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "lastAccessedDateTime"
  ],
  "@odata.type": "microsoft.graph.fileSystemInfo"
}-->

```json
{
  "createdDateTime" : "datetime",
  "lastAccessedDateTime": "datetime",
  "lastModifiedDateTime" : "datetime"
}
```
