---
author: "daspek"
description: "Represents a content type in SharePoint."
title: "contentType resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# contentType resource type

Namespace: microsoft.graph

Represents a content type in SharePoint. Content types allow you to define a set of columns that must be present on every [**listItem**][listItem] in a [**list**][list].

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentTypes in a site](../api/site-list-contenttypes.md)|[contentType](../resources/contenttype.md) collection|Get a list of the [contentType](../resources/contenttype.md) objects and their properties in a [site](../resources/site.md).|
|[List contentTypes in a list](../api/list-list-contenttypes.md)|[contentType](../resources/contenttype.md) collection|Get a list of the [contentType](../resources/contenttype.md) objects and their properties in a [list](../resources/list.md).|
|[Create contentType for a site](../api/site-post-contenttypes.md)|[contentType](../resources/contenttype.md)|Create a new [contentType](../resources/contenttype.md) object in a [site](../resources/site.md).|
|[Get contentType](../api/contenttype-get.md)|[contentType](../resources/contenttype.md)|Read the properties and relationships of a [contentType](../resources/contenttype.md) object.|
|[Update contentType](../api/contenttype-update.md)|[contentType](../resources/contenttype.md)|Update the properties of a [contentType](../resources/contenttype.md) object.|
|[Delete contentType](../api/contenttype-delete.md)|None|Deletes a [contentType](../resources/contenttype.md) object.|
|[isPublished](../api/contenttype-ispublished.md)|Boolean| Checks if the [contentType](../resources/contenttype.md) is published.|
|[publish](../api/contenttype-publish.md)|[contentType](../resources/contenttype.md)| Publish a [contentType](../resources/contenttype.md).|
|[unpublish](../api/contenttype-unpublish.md)|[contentType](../resources/contenttype.md)|Unpublish a [contentType](../resources/contenttype.md).|
|[addCopy](../api/contenttype-addcopy.md)|[contentType](../resources/contenttype.md)|Add copy of a [contentType](../resources/contenttype.md) from a [site](../resources/site.md) to a [list](../resources/list.md).|
|[associateWithHubSites](../api/contenttype-associatewithhubsites.md)|[contentType](../resources/contenttype.md)|Associates a [contentType](../resources/contenttype.md) with a list of hub sites.|
|[copyToDefaultContentLocation](../api/contenttype-copytodefaultcontentlocation.md)|[contentType](../resources/contenttype.md)| Copy a file to default content location in a [contentType](../resources/contenttype.md).|
|[List columns](../api/contenttype-list-columns.md)|[columnDefinition](../resources/columnDefinition.md) collection|Get a collection of columns, represented as [columnDefinition](../resources/columnDefinition.md) resources, in a **contentType**.|
|[Create column](../api/contenttype-post-columns.md)|[columnDefinition](../resources/columnDefinition.md)|Add a column to a **content type** in a site or list.|
|[getCompatibleHubContentTypes](../api/contenttype-getcompatiblehubcontenttypes.md)|[contentType](../resources/contenttype.md) collection|Get a list of compatible content types from the content type hub that can be added to a target [site](../resources/site.md) or a [list](../resources/list.md).|
|[addCopyFromContentTypeHub](../api/contenttype-addcopyfromcontenttypehub.md)|[contentType](../resources/contenttype.md)|Add or sync a copy of a published content type from the content type hub to a target [site](../resources/site.md) or a [list](../resources/list.md).|


## Properties

| Property     | Type                 | Description|
|:------------------|:---------------------|:----------------------------------|
| associatedHubsUrls         | Collection(string) | List of canonical URLs for hub sites with which this content type is associated to. This will contain all hub sites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites.|
| description       | string               | The descriptive text for the item.|
| documentSet         | [documentSet][]      | [Document Set](/sharepoint/governance/document-set-planning#about-document-sets) metadata.|
| documentTemplate    | [documentSetContent][] | Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.|
| group             | string               | The name of the group this content type belongs to. Helps organize related content types.|
| hidden            | Boolean              | Indicates whether the content type is hidden in the list's 'New' menu.|
| id                | string               | The unique identifier of the content type.|
| inheritedFrom   | [itemReference][]    | If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.|
| isBuiltIn            | Boolean| Specifies if a content type is a built-in content type. |
| name              | string               | The name of the content type.|
| order             | [contentTypeOrder][] | Specifies the order in which the content type appears in the selection UI.|
| parentId          | string               | The unique identifier of the content type.|
| propagateChanges     | Boolean              | If `true`, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.|
| readOnly          | Boolean              | If `true`, the content type can't be modified unless this value is first set to `false`.|
| sealed            | Boolean              | If `true`, the content type can't be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.|


## Relationships

| Relationship    | Type                      | Description|
|:----------------|:--------------------------|:-------------------------------|
| base     | [contentType][]  | Parent contentType from which this content type is derived. |
| columnLinks   | [columnLink][] collection | The collection of columns that are required by this content type.|
| baseTypes     | Collection([contentType][])     | The collection of content types that are ancestors of this content type.|
| columnPositions         | Collection([columnDefinition][]) | Column order information in a content type.|
| columns       | Collection([columnDefinition][])  | The collection of column definitions for this contentType.|

For more information, see [Introduction to content types and content type publishing][contentTypeIntro].

[columnLink]: columnlink.md
[contentTypeIntro]: https://support.office.com/en-us/article/Introduction-to-content-types-and-content-type-publishing-e1277a2e-a1e8-4473-9126-91a0647766e5
[itemReference]: itemreference.md
[contentTypeOrder]: contenttypeorder.md
[columnDefinition]: columnDefinition.md
[contentType]: contentType.md
[documentSet]: documentSet.md
[documentSetContent]: documentSetContent.md

## JSON representation

The following is a JSON representation of a **contentType** resource.

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
  "hidden": "Boolean",
  "id": "string",
  "inheritedFrom": { "@type": "microsoft.graph.itemReference" },
  "isBuiltIn" : "Boolean",
  "name": "string",
  "order": { "@type": "microsoft.graph.contentTypeOrder" },
  "parentId": "string",
  "propagateChanges" : "Boolean",
  "readOnly": "Boolean",
  "sealed": "Boolean"
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


