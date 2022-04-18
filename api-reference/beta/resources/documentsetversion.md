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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the version of a document set item in a list.

Inherits from [listItemVersion](../resources/listitemversion.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List documentSetVersions](../api/listitem-list-documentsetversions.md)|[documentSetVersion](../resources/documentsetversion.md) collection|Get the [documentSetVersion](../resources/documentsetversion.md) resources from the **documentSetVersions** navigation property.|
|[Create documentSetVersion](../api/listitem-post-documentsetversions.md)|[documentSetVersion](../resources/documentsetversion.md)|Create a new [documentSetVersion](../resources/documentsetversion.md) object.|
|[Get documentSetVersion](../api/documentsetversion-get.md)|[documentSetVersion](../resources/documentsetversion.md)|Read the properties and relationships of a [documentSetVersion](../resources/documentsetversion.md) object.|
|[Delete documentSetVersion](../api/documentsetversion-delete.md)|None|Deletes a [documentSetVersion](../resources/documentsetversion.md) object.|
|[Restore documentSetVersion](../api/documentsetversion-restore.md)|None|Restore a document set version.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| comment | string | Comment about the captured version.
| createdBy   | [IdentitySet](../resources/identityset.md) | User who captured the version.
| createdDateTime     | DateTime | Date when this version was created.
| id                  | string                                               | The ID of the version. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md)..                                     |
| items     | Collection([documentSetVersionItem](../resources/documentsetversionitem.md)) | Items within the document set that are captured as part of this version.
| lastModifiedBy       | [IdentitySet](../resources/identitySet.md)           | Identity of the user which last modified the version. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md).        |
| lastModifiedDateTime | [DateTimeOffset](../resources/timestamp.md)          | Date and time the version was last modified. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md).                 |
| published            | [PublicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. Inherited from [listItemVersion](../resources/listitemversion.md). |
| shouldCaptureMinorVersion | boolean  | If 'true' minor versions of items are also captured otherwise only major versions will be captured. Is 'False' by default.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| fields        | [FieldValueSet](../resources/fieldvalueset.md) | A collection of the fields and values for this version of the list item. |

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

