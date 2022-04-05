---
title: "documentSetVersion resource type"
description: "Represents a user created version of a document set item in a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# documentSetVersion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user created version of a document set item in a list.

Inherits from [listItemVersion](../resources/listitemversion.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List documentSetVersions](../api/listitem-list-documentsetversions.md)|[documentSetVersion](../resources/documentsetversion.md) collection|Get a list of the [documentSetVersion](../resources/documentsetversion.md) objects and their properties.|
|[Create documentSetVersion](../api/listitem-post-documentsetversions.md)|[documentSetVersion](../resources/documentsetversion.md)|Create a new [documentSetVersion](../resources/documentsetversion.md) object.|
|[Get documentSetVersion](../api/documentsetversion-get.md)|[documentSetVersion](../resources/documentsetversion.md)|Read the properties and relationships of a [documentSetVersion](../resources/documentsetversion.md) object.|
|[Delete documentSetVersion](../api/documentsetversion-delete.md)|None|Deletes a [documentSetVersion](../resources/documentsetversion.md) object.|
|[restore](../api/documentsetversion-restore.md)|[documentSetVersion](../resources/documentsetversion.md)|Restore a document set version.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| **comment** | string | Comment about the captured version.
| **createdBy**   | [IdentitySet](../resources/identitySet.md) | User who captured the version.
| **createdDateTime**     | DateTime | Date when this version was created.
| **items**       | Collection([documentSetVersionItem](../resources/documentSetVersionItem.md)) | Items within the document set that are captured as part of this version.
| **shouldCaptureMinorVersion** | boolean  | If 'true' minor versions of items are also captured otherwise only major versions will be captured. Is 'False' by default.
| **id**                   | string                                               | The ID of the version. Read-only. Inherited from [listItemVersion](../resources/listItemVersion.md)..                                     |
| **lastModifiedBy**       | [IdentitySet](../resources/identitySet.md)           | Identity of the user which last modified the version. Read-only. Inherited from [listItemVersion](../resources/listItemVersion.md).        |
| **lastModifiedDateTime** | [DateTimeOffset](../resources/timestamp.md)          | Date and time the version was last modified. Read-only. Inherited from [listItemVersion](../resources/listItemVersion.md).                 |
| **published**            | [PublicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. Inherited from [listItemVersion](../resources/listItemVersion.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| **fields**        | [FieldValueSet](../resources/fieldvalueset.md) | A collection of the fields and values for this version of the list item. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.documentSetVersion",
  "baseType": "oneDrive.listItemVersion",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.documentSetVersion",
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "publication": {
    "@odata.type": "microsoft.graph.publicationFacet"
  },
  "comment": "String",
  "items": [
    {
      "@odata.type": "microsoft.graph.documentSetVersionItem"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "shouldCaptureMinorVersion": "Boolean"
}
```

