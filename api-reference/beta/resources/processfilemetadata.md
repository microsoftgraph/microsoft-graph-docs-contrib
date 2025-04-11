---
title: "processFileMetadata complex type"
description: "Represents metadata for a content entry that is a file."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# processFileMetadata complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a content entry that corresponds to a file being processed. Includes file-specific details like custom properties and the owner ID. Inherits from [processContentMetadataBase](../resources/processcontentmetadatabase.md).

## Properties

| Property         | Type                                                                                                     | Description                                                                                                           |
| :--------------- | :------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------- |
| customProperties | [customMetadataDictionary](../resources/custommetadatadictionary.md)  | A dictionary containing custom metadata associated with the file, potentially extracted by the calling application. |
| ownerId          | String                                                                                                   | The unique identifier (e.g., Object ID or UPN) of the owner of the file.                                            |

Inherits properties from [processContentMetadataBase](../resources/processcontentmetadatabase.md).

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processFileMetadata",
  "baseType": "microsoft.graph.processContentMetadataBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.processFileMetadata",
  // Inherited properties from processContentMetadataBase
  "identifier": "String", // e.g., file path or URL
  "content": { "@odata.type": "microsoft.graph.binaryContent" }, // Often binaryContent
  "name": "String", // e.g., file name
  "correlationId": "String",
  "sequenceNumber": "Int64",
  "length": "Int64",
  "isTruncated": "Boolean",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",

  // processFileMetadata properties
  "customProperties": { "@odata.type": "microsoft.graph.customMetadataDictionary" },
  "ownerId": "String"
}
```
