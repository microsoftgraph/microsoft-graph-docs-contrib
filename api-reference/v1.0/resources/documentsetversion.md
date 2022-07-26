---
title: "documentSetVersion resource type"
description: "Represents the version of a document set item in a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# documentSetVersion resource type

Namespace: microsoft.graph

Represents the version of a document set item in a list.

Inherits from [listItemVersion](../resources/listitemversion.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List documentSetVersions](../api/listitem-list-documentsetversions.md)|[documentSetVersion](../resources/documentsetversion.md) collection|Get a list of the [versions of a document set](../resources/documentsetversion.md) item in a [list](../resources/list.md).|
|[Create documentSetVersion](../api/listitem-post-documentsetversions.md)|[documentSetVersion](../resources/documentsetversion.md)|Create a new [version of a document set](../resources/documentsetversion.md) item in a [list](../resources/list.md).|
|[Get documentSetVersion](../api/documentsetversion-get.md)|[documentSetVersion](../resources/documentsetversion.md)|Read the properties and relationships of a [documentSetVersion](../resources/documentsetversion.md) object.|
|[Delete documentSetVersion](../api/documentsetversion-delete.md)|None|Delete a [version of a document set](../resources/documentsetversion.md) in a list.|
|[restore](../api/documentsetversion-restore.md)|[documentSetVersion](../resources/documentsetversion.md)|Restore a [document set version](../resources/documentsetversion.md).|


## Properties
|Property|Type|Description|
|:---|:---|:---|
| comment | string | Comment about the captured version.|
| createdBy   | [identitySet](../resources/identityset.md) | User who captured the version.|
| createdDateTime     | dateTime | Date and time when this version was created.|
| id                  | string                                               | The ID of the version. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md).|
| items     | [documentSetVersionItem](../resources/documentsetversionitem.md) collection | Items within the document set that are captured as part of this version.|
| lastModifiedBy       | [identitySet](../resources/identityset.md)           | Identity of the user which last modified the version. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md).|
| lastModifiedDateTime | [dateTimeOffset](../resources/timestamp.md)          | Date and time when the version was last modified. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md).     |
| published            | [publicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md).|
| shouldCaptureMinorVersion | boolean  | If `true`, minor versions of items are also captured; otherwise, only major versions will be captured. Default value is `false`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| fields        | [fieldValueSet](../resources/fieldvalueset.md) | A collection of the fields and values for this version of the list item. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.documentSetVersion",
  "baseType": "microsoft.graph.listItemVersion",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.documentSetVersion",
  "comment": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)",
  "items": [
    {
      "@odata.type": "microsoft.graph.documentSetVersionItem"
    }
  ],
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "publication": {
    "@odata.type": "microsoft.graph.publicationFacet"
  },
  "shouldCaptureMinorVersion": "Boolean"
}
```

