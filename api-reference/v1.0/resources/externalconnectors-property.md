---
title: "property resource type"
description: "A schema property definition for a Microsoft Search connection."
author: "mecampos"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# property resource type

Namespace: microsoft.graph.externalConnectors



A [schema](externalconnectors-schema.md) property definition for a Microsoft Search [connection](externalconnectors-externalconnection.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aliases|String collection|A set of aliases or a friendly name for the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: `:`, `;`, `,`, `(`, `)`, `[`, `]`, `{`, `}`, `%`, `$`, `+`, `!`, `*`, `=`, `&`, `?`, `@`, `#`, `\`, `~`, `'`, `"`, `<`, `>`, `` ` ``, `^`. Optional.|
|isQueryable|Boolean|Specifies if the property is queryable. Queryable properties can be used in [Keyword Query Language (KQL) queries](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference). Optional.|
|isRefinable|Boolean|Specifies if the property is refinable.  Refinable properties can be used to filter search results in the [Search API](search-api-overview.md) and add a refiner control in the Microsoft Search user experience. Optional.|
|isRetrievable|Boolean|Specifies if the property is retrievable. Retrievable properties are returned in the result set when items are returned by the search API. Retrievable properties are also available to add to the display template used to render search results. Optional.|
|isSearchable|Boolean|Specifies if the property is searchable. Only properties of type `String` or `StringCollection` can be searchable. Nonsearchable properties aren't added to the search index. Optional.|
|labels|microsoft.graph.externalConnectors.label collection|Specifies one or more well-known tags added against a property. Labels help Microsoft Search understand the semantics of the data in the connection. Adding appropriate labels would result in an enhanced search experience (for example, better relevance). Optional.<br><br>The possible values are: `title`, `url`, `createdBy`, `lastModifiedBy`, `authors`, `createdDateTime`, `lastModifiedDateTime`, `fileName`, `fileExtension`, `unknownFutureValue`, `iconUrl`. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `iconUrl`.|
|name|String|The name of the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: `:`, `;`, `,`, `(`, `)`, `[`, `]`, `{`, `}`, `%`, `$`, `+`, `!`, `*`, `=`, `&`, `?`, `@`, `#`, `\`, `~`, `'`, `"`, `<`, `>`, `` ` ``, `^`.  Required.|
|type|microsoft.graph.externalConnectors.propertyType|The data type of the property. Possible values are: `string`, `int64`, `double`, `dateTime`, `boolean`, `stringCollection`, `int64Collection`, `doubleCollection`, `dateTimeCollection`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.property"
}
-->
``` json
{
  "aliases": [
    "String"
  ],
  "isQueryable": "Boolean",
  "isRefinable": "Boolean",
  "isRetrievable": "Boolean",
  "isSearchable": "Boolean",
  "labels": [
    "String"
  ],
  "name": "String",
  "type": "String"
}
```

