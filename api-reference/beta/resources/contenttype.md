---
author: "daspek"
description: "Represents a content type in SharePoint."
title: "contentType resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
---

# contentType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a content type in SharePoint. Content types allow you to define a set of columns that must be present on every [**listItem**][listItem] in a [**list**][list].

## Properties

| Property          | Type                 | Description|
|:------------------|:---------------------|:----------------------------------|
|   associatedHubsUrls         | String collection | List of canonical URLs for hub sites with which this content type is associated to. This contains all hub sites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type is applied to the lists in the enforced sites.|
|   documentSet         | [documentSet][]      | [Document Set](/sharepoint/governance/document-set-planning#about-document-sets) metadata.|
|   documentTemplate    | [documentSetContent][] | Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.|
|   description     | String               | The descriptive text for the item.|
|   group           | String               | The name of the group this content type belongs to. Helps organize related content types.|
|   hidden          | Boolean              | Indicates whether the content type is hidden in the list's 'New' menu.|
|   id              | String               | The unique identifier of the content type.|
|   inheritedFrom   | [itemReference][]    | If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.|
|   isBuiltIn              | Boolean| Specifies if a content type is a built-in content type. |
|   name            | String               | The name of the content type.|
|   order           | [contentTypeOrder][] | Specifies the order in which the content type appears in the selection UI.|
|   parentId        | String               | The unique identifier of the content type.|
|   propagateChanges     | Boolean              | If `true`, any changes made to the content type are pushed to inherited content types and lists that implement the content type.|
|   readOnly        | Boolean              | If `true`, the content type can't be modified unless this value is first set to `false`.|
|   sealed          | Boolean              | If `true`, the content type can't be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.|

## Relationships

| Relationship    | Type                      | Description|
|:----------------|:--------------------------|:-------------------------------|
|   base     | [contentType][]  | Parent contentType from which this content type is derived. |
|   baseTypes     | [contentType][] collection     | The collection of content types that are ancestors of this content type.|
|   columnLinks   | [columnLink][] collection | The collection of columns that are required by this content type.|
|   columnPositions         | [columnDefinition][] collection | Column order information in a content type.|
|   columns       | [columnDefinition][] collection  | The collection of column definitions for this content type.|

For more information, see [Introduction to content types and content type publishing][contentTypeIntro].

[columnLink]: columnlink.md
[contentTypeIntro]: https://support.office.com/article/Introduction-to-content-types-and-content-type-publishing-e1277a2e-a1e8-4473-9126-91a0647766e5
[itemReference]: itemreference.md
[contentTypeOrder]: contenttypeorder.md
[columnDefinition]: columndefinition.md
[contentType]: contenttype.md
[documentSet]: documentset.md
[documentSetContent]: documentsetcontent.md

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.contentType","keyProperty":"id" } -->

```json
{
  "associatedHubsUrls" : ["string"],
  "base": { "@type": "microsoft.graph.contentType" },
  "baseTypes" : [{ "@type": "microsoft.graph.contentType" }],
  "columns" : [{ "@type": "microsoft.graph.columnDefinition" }],
  "columnLinks": [{ "@type": "microsoft.graph.columnLink" }],
  "columnPositions" : [{ "@type": "microsoft.graph.columnDefinition" }],
  "description": "String",
  "documentSet" : { "@type": "microsoft.graph.documentSet" },
  "documentTemplate" : { "@type": "microsoft.graph.documentSetContent" },
  "group": "String",
  "hidden": "Boolean",
  "id": "String",
  "inheritedFrom": { "@type": "microsoft.graph.itemReference" },
  "isBuiltIn" : "Boolean",
  "name": "String",
  "order": { "@type": "microsoft.graph.contentTypeOrder" },
  "parentId": "String",
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
