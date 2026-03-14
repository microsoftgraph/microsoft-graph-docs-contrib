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
| description| String| Specifies a human-readable description that explains the purpose, usage, or guidance related to the property. This property enhances semantic understanding by helping Copilot interpret queries and accurately map them to properties that results in more relevant and precise responses. Optional but we recommend that you use this property for queryable properties. The maximum supported length is 200 characters.|
|isQueryable|Boolean|Specifies if the property is queryable. Queryable properties can be used in [Keyword Query Language (KQL) queries](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference). Optional.|
|isRefinable|Boolean|Specifies if the property is refinable.  Refinable properties can be used to filter search results in the [Search API](search-api-overview.md) and add a refiner control in the Microsoft Search user experience. Optional.|
|isRetrievable|Boolean|Specifies if the property is retrievable. Retrievable properties are returned in the result set when items are returned by the search API. Retrievable properties are also available to add to the display template used to render search results. Optional.|
|isSearchable|Boolean|Specifies if the property is searchable. Only properties of type `String` or `StringCollection` can be searchable. Nonsearchable properties aren't added to the search index. Optional.|
|labels|[microsoft.graph.externalConnectors.label collection](https://learn.microsoft.com/en-us/graph/api/resources/enums-externalconnectors?view=graph-rest-1.0#label-values)|Specifies one or more well-known tags added against a property. Labels help Microsoft Search understand the semantics of the data in the connection. Adding appropriate labels would result in an enhanced search experience (for example, better relevance). Optional.<br><br>.The possible values are: `title`, `url`, `createdBy`, `lastModifiedBy`, `authors`, `createdDateTime`, `lastModifiedDateTime`, `fileName`, `fileExtension`, `unknownFutureValue`, `containerName`, `containerUrl`, `iconUrl`, `assignedTo`, `dueDate`, `closedDate`, `closedBy`, `reportedBy`, `sprintName`, `severity`, `state`, `priority`, `secondaryId`, `itemParentId`, `parentUrl`, `tags`, `itemType`, `itemPath`, `numReactions`. Use the `Prefer: include-unknown-enum-members` request header to retrieve additional values defined in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations),<br>For People Connectors you can include : `personEmails`, `personAddresses`, `personAnniversaries`, `personName`, `personNote`, `personPhones`, `personCurrentPosition`, `personWebAccounts`, `personWebSite`, `personSkills`, `personProjects`, `personAccount`, `personAwards`, `personCertifications`, `personAssistants`, `personColleagues`, `personManager`, `personAlternateContacts`, `personEmergencyContacts`.|
|name|String|The name of the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: `:`, `;`, `,`, `(`, `)`, `[`, `]`, `{`, `}`, `%`, `$`, `+`, `!`, `*`, `=`, `&`, `?`, `@`, `#`, `\`, `~`, `'`, `"`, `<`, `>`, `` ` ``, `^`.  Required.|
|type|microsoft.graph.externalConnectors.propertyType|The data type of the property. The possible values are: `string`, `int64`, `double`, `dateTime`, `boolean`, `stringCollection`, `int64Collection`, `doubleCollection`, `dateTimeCollection`, `principal`, `principalCollection`, `unknownFutureValue`.|

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
  "description": "String",
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

