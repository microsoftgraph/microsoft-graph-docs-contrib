---
title: "property resource type"
description: "A schema property definition for a Microsoft Search connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# property resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A [schema](externalconnectors-schema.md) property definition for a Microsoft Search [connection](externalconnectors-externalconnection.md).

## Properties

| Property      | Type              | Description                                        |
|:--------------|:------------------|:---------------------------------------------------|
| aliases       | String collection | A set of aliases or a friendly names for the property. Maximum 32 characters. Each string must not contain control characters, whitespace, or any of the following: `:`, `;`, `,`, `(`, `)`, `[`, `]`, `{`, `}`, `%`, `$`, `+`, `!`, `*`, `=`, `&`, `?`, `@`, `#`, `\`, `~`, `'`, `"`, `<`, `>`, `|`, `` ` ``, `^`. Optional.  |
| isQueryable   | boolean           | Specifies if the property is queryable. Queryable properties can be used in [Keyword Query Language (KQL) queries](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference). Optional.  |
| isRefinable   | boolean           | Specifies if the property is refinable.  Refinable properties can be used to filter search results in the [Search API](search-api-overview.md) and add a refiner control in the Microsoft Search user experience. Optional.  |
| isRetrievable | boolean           | Specifies if the property is retrievable. Retrievable properties are returned in the result set when items are returned by the search API. Retrievable properties are also available to add to the display template used to render search results. Optional. |
| isSearchable  | boolean           | Specifies if the property is searchable. Only properties of type `string` or `stringCollection` can be searchable. Non-searchable properties are not added to the search index. Optional. |
| labels        | microsoft.graph.externalConnectors.label collection | Specifies one or more well-known tags added against a property. Labels help Microsoft Search understand the semantics of the data in the connection. Adding appropriate labels would result in an enhanced search experience (e.g. better relevance). Optional.<br><br>The possible values are: `title`, `url`, `createdBy`, `lastModifiedBy`, `authors`, `createdDateTime`, `lastModifiedDateTime`, `fileName`, `fileExtension`, `unknownFutureValue`, `iconUrl`, `containerName`, `containerUrl`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `iconUrl`, `containerName`, `containerUrl`.|
| name          | String            | The name of the property. Maximum 32 characters. Must not contain control characters, whitespace, or any of the following: `:`, `;`, `,`, `(`, `)`, `[`, `]`, `{`, `}`, `%`, `$`, `+`, `!`, `*`, `=`, `&`, `?`, `@`, `#`, `\`, `~`, `'`, `"`, `<`, `>`, `|`, `` ` ``, `^`. Required.                |
| type          | microsoft.graph.externalConnectors.propertyType         | The data type of the property. Possible values are: `string`, `int64`, `double`, `dateTime`, `boolean`, `stringCollection`, `int64Collection`, `doubleCollection`, `dateTimeCollection`, `unknownFutureValue`. Required. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.property",
  "baseType": null
}-->

```json
{
  "aliases": [ "String" ],
  "isQueryable": true,
  "isRefinable": true,
  "isRetrievable": true,
  "isSearchable": true,
  "labels": [ "string" ],
  "name": "string",
  "type": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "property resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
