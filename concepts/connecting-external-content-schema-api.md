---
title: Schema API
description: Schema API semantic labels added
author: mecampos
ms.author: mecampos
ms.topic: conceptual #Required; leave this attribute/value as-is.
---
[!INCLUDE [beta-disclaimer](../api-reference/includes/beta-disclaimer.md)]

# Schema API

This topic includes the updates for the v1.0 Schema API.

## Schema

The connection schema is a list of properties that define how Microsoft Graph experiences will use your external content. You must add all the properties—along with their attributes, labels, and aliases—before adding items to the connection.

## Schema attributes

You can set the search schema attributes to control the search functionality of each source property. Schema attributes include the options to  **Query** ,  **Search** ,  **Retrieve** , and  **Refine**. The following table lists each of the attributes that Microsoft Graph connectors support and explains their functions.

| **Search schema attribute** | **Function** | **Example** |
| --- | --- | --- |
| **SEARCH** | Makes the text content of a property searchable. Property contents are included in the full-text index. | If the property is  **title** , a query for  **Enterprise**  returns answers that contain the word  **Enterprise**  in any text or title. |
| **QUERY** | Searches by query for a match for a particular property. The property name can then be specified in the query, either programmatically or verbatim. | If the  **Title**  property can be queried, then the query  **Title: Enterprise**  is supported. |
| **RETRIEVE** | Only retrievable properties can be used in the result type and displayed in the search result. | |
| **REFINE** | The Refine option can be used in the same way that it is in the Microsoft Search results page. | Users in your organization can [filter](https://docs.microsoft.com/en-us/microsoftsearch/custom-filters) by  **URL**  in the search results page if the refine property was marked when the connection was set up. |
|

## Labels

A label is a well-known tag published by Microsoft that you can add against a property in your schema. Adding a label helps various Microsoft products understand the property and provides a better experience.

| **Label** | **Description** |
| --- | --- |
| **title** | The title of the item that you want shown in search and other experiences. |
| **url** | The target URL of the item in the data source. |
| **createdBy** | The name of the person who created the item in the data source. |
| **lastModifiedBy** | The name of the person who most recently edited the item in the data source. |
| **authors** | The names of all the people who participated in or collaborated on the item in the data source. |
| **createdDateTime** | The date and time at which the item was created in the data source. |
| **lastModifiedDateTime** | The date and time at which the item was last modified in the data source. |
| **fileName** | In the case of a file, the name of the file in the data source. |
| **fileExtension** | In the case of a file, the extension of the file in the data source. |
|

Add as many labels as you can, but ensure that they are correctly mapped to properties. Do not add a label to a property if it does not make sense to do so. Incorrect mappings will deteriorate the experience.

## Relevance

By applying as many accurately mapped labels as possible, you can also improve the discovery of your content through search. We highly recommend defining as many of the labels below as possible. They are listed in descending order of potential impact on discovery.

- title
- lastModifiedDateTime
- lastModifiedBy
- url
- filename
- fileExtension

For discovery (AKA search) scenarios, please note the following:

- You should make sure that your mappings are accurate.
- Using a property as a label that contains large content can increase search latency, leading to longer wait times before search returns results.
- Search outcomes benefit from applying as many labels as possible, especially for scenarios in which you configure custom verticals that enable search over multiple connections.

## Default result types

Labels also affect how default result types are generated. Adding at least the title and content labels will ensure that a result type is created for your connection.

Your default result type will provide a better experience if the following labels are defined when applicable. The labels are listed in ascending order of impact.

- title
- url
- lastModifiedBy
- lastModifiedDateTime
- fileName
- fileExtension

When assigning labels, keep the following points in mind:

- The properties that you select to function as labels must be marked as retrievable.
- The properties and their assigned labels must have the same datatype.
- You can map exactly one label to exactly one property.

## Aliases

Aliases are friendly names for properties that you assign. They are used for queries and selections in refinable property filters.

## Related

Review the Microsoft Graph connectors API reference. (link to doc)