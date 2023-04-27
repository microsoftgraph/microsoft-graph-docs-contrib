---
author: daspek
description: The contentType resource represents a content type in SharePoint.
title: contentType
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: sites-and-lists
---

# contentType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a content type in SharePoint.
Content types allow you to define a set of columns that must be present on every [**listItem**][listItem] in a [**list**][list].

## Properties

| Property          | Type                 | Description|
|:------------------|:---------------------|:----------------------------------|
|   associatedHubsUrls         | Collection(string) | List of canonical URLs for hub sites with which this content type is associated to. This will contain all hubsites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites.|
|   documentSet         | [documentSet][]      | [Document Set](/sharepoint/governance/document-set-planning#about-document-sets) metadata.|
|   documentTemplate    | [documentSetContent][] | Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.|
|   description     | string               | The descriptive text for the item.|
|   group           | string               | The name of the group this content type belongs to. Helps organize related content types.|
|   hidden          | Boolean              | Indicates whether the content type is hidden in the list's 'New' menu.|
|   id              | string               | The unique identifier of the content type.|
|   inheritedFrom   | [itemReference][]    | If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.|
|   isBuiltIn              | Boolean| Specifies if a content type is a built-in content type. |
|   name            | string               | The name of the content type.|
|   order           | [contentTypeOrder][] | Specifies the order in which the content type appears in the selection UI.|
|   parentId        | string               | The unique identifier of the content type.|
|   propagateChanges     | Boolean              | If `true`, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.|
|   readOnly        | Boolean              | If `true`, the content type cannot be modified unless this value is first set to `false`.|
|   sealed          | Boolean              | If `true`, the content type cannot be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.|

| Property               | Type                   | Description                                                                                                                                                                                                                                                                                          |
| :--------------------- | :--------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **description**        | string                 | The descriptive text for the item.                                                                                                                                                                                                                                                                   |
| **group**              | string                 | The name of the group this content type belongs to. Helps organize related content types.                                                                                                                                                                                                            |
| **hidden**             | Boolean                | Indicates whether the content type is hidden in the list's 'New' menu.                                                                                                                                                                                                                               |
| **id**                 | string                 | The unique identifier of the content type.                                                                                                                                                                                                                                                           |
| **inheritedFrom**      | [itemReference][]      | If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.                                                                                                                                                              |
| **name**               | string                 | The name of the content type.                                                                                                                                                                                                                                                                        |
| **order**              | [contentTypeOrder][]   | Specifies the order in which the content type appears in the selection UI.                                                                                                                                                                                                                           |
| **parentId**           | string                 | The unique identifier of the content type.                                                                                                                                                                                                                                                           |
| **readOnly**           | Boolean                | If `true`, the content type cannot be modified unless this value is first set to `false`.                                                                                                                                                                                                            |
| **sealed**             | Boolean                | If `true`, the content type cannot be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.                                                                                                                                       |
| **isBuiltIn**          | Boolean                | Specifies if a content type is a built-in content type.                                                                                                                                                                                                                                              |
| **documentSet**        | [documentSet][]        | [Document Set](/sharepoint/governance/document-set-planning#about-document-sets) metadata.                                                                                                                                                                                                           |
| **documentTemplate**   | [documentSetContent][] | Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.                                                                                                    |
| **associatedHubsUrls** | Collection(string)     | List of canonical URLs for hub sites with which this content type is associated to. This will contain all hubsites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites. |
| **propagateChanges**   | Boolean                | If `true`, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.                                                                                                                                                                 |

## Relationships

| Relationship    | Type                      | Description|
|:----------------|:--------------------------|:-------------------------------|
|   base     | [contentType][]  | Parent contentType from which this content type is derived. |
|   columnLinks   | [columnLink][] collection | The collection of columns that are required by this content type|
|   baseTypes     | Collection([contentType][])     | The collection of content types that are ancestors of this content type.|
|   columnPositions         | Collection([columnDefinition][]) | Column order information in a content type.|
|   columns       | Collection([columnDefinition][])  | The collection of column definitions for this contentType.|

For more details, see [Introduction to content types and content type publishing][contentTypeIntro].

[columnLink]: columnlink.md
[contentTypeIntro]: https://support.office.com/article/Introduction-to-content-types-and-content-type-publishing-e1277a2e-a1e8-4473-9126-91a0647766e5
[itemReference]: itemreference.md
[contentTypeOrder]: contenttypeorder.md
[columnDefinition]: columnDefinition.md
[contentType]: contentType.md
[documentSet]: documentSet.md
[documentSetContent]: documentSetContent.md

## JSON representation

The following is a JSON representation of a resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.contentType","keyProperty":"id" } -->

```json
{
  "associatedHubsUrls" : ["string"],
  "base": { "@type": "microsoft.graph.contentType" },
  "baseTypes" : [{ "@type": "microsoft.graph.contentType" }],
  "columns" : [{ "@type": "microsoft.graph.columnDefinition" }],
  "columnLinks": [{ "@type": "microsoft.graph.columnLink" }],
  "columnPositions" : [{ "@type": "microsoft.graph.columnDefinition" }],
  "description": "string",
  "documentSet" : { "@type": "microsoft.graph.documentSet" },
  "documentTemplate" : { "@type": "microsoft.graph.documentSetContent" },
  "group": "string",
  "hidden": false,
  "id": "string",
  "inheritedFrom": { "@type": "microsoft.graph.itemReference" },
  "isBuiltIn" : false,
  "name": "string",
  "order": { "@type": "microsoft.graph.contentTypeOrder" },
  "parentId": "string",
  "propagateChanges" : false,
  "readOnly": false,
  "sealed": false
}
```

[list]: list.md
[listItem]: listitem.md

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentType",
  "suppressions": []
}
-->
