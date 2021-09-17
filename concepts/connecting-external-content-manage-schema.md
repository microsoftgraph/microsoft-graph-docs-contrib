---
title: "Register schema for the Microsoft Graph connection"
description: "Learn how to use Microsoft Graph to register schema for your Microsoft Graph connection"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
ms.prod: search
---
<!---<author of this doc: rsamai>--->

# Register schema for the Microsoft Graph connection

The connection [schema](/graph/api/resources/schema?view=graph-rest-beta&preserve-view=true) determines how your content will be used in various Microsoft Graph experiences. Schema is a flat list of all the properties that you plan to add to the connection along with their attributes, labels, and aliases. You must register the schema before adding items into the connection.

## Example schema

The following table represents an example of a possible schema for a work ticket system connector.

| Property       | Type             | Searchable         | Queryable          | Retrievable        | Refinable          | Labels               | Aliases    |
|----------------|------------------|--------------------|--------------------|--------------------|--------------------|----------------------|------------|
| ticketId       | String           |                    |                    |                    |                    |                      | ID         |
| title          | String           | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |                    | title                |            |
| createdBy      | String           | :heavy_check_mark: | :heavy_check_mark: |                    |                    | createdBy            | creator    |
| assignedTo     | String           | :heavy_check_mark: | :heavy_check_mark: |                    |                    |                      |            |
| lastEditedDate | DateTime         |                    | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | lastModifiedDateTime | editedDate |
| lastEditedBy   | String           | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |                    | lastModifiedBy       | edited     |
| workItemType   | String           |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                      | ticketType |
| priority       | Int64            | :heavy_check_mark: |                    |                    |                    |                      |            |
| tags           | StringCollection |                    | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |                      |            |
| status         | String           |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                      |            |
| url            | String           |                    |                    |                    |                    | url                  |            |
| resolved       | Boolean          |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                      |            |

## Property attributes

### Searchable

If a property is searchable, its value is added to the full text index. When a user performs a search, we return results if there is a search hit in one of the searchable fields or its [content](connecting-external-content-manage-items.md#content).

<!-- markdownlint-disable MD036 -->
![A search for "design" displaying results for hits against properties and content](./images/connectors-images/connecting-external-content-manage-items-schema-1.svg)

*A search for "design" displaying results for hits against properties (`title`, `tags`) and content*

### Queryable

If a property is queryable, you can query against it using knowledge query language (KQL). KQL consists of 1 or more free text keywords (words or phrases) or property restrictions. The property name must be included in the query, either specified in the query itself or included in the query programmatically. You can use prefix matching with the wildcard operator(*).

> [!NOTE]
> Suffix matching is not supported.

![A search for "search ba*" displaying results that match this prefix](./images/connectors-images/connecting-external-content-manage-items-schema-2.svg)

*A search for "search ba*" displaying results that match this prefix*

![A search for "tags:design" scoping down results to items with "design" in the tags property](./images/connectors-images/connecting-external-content-manage-items-schema-3.svg)

*A search for "tags:design" scoping down results to items with "design" in the tags property*

### Retrievable

If a property is retrievable, its value can be returned in search results. Any property that you want to add in the display template or be returned from the query and be relevant in search results must be retrievable. Marking large properties, such as `editHistory`, or too many properties as retrievable will increase search latency. Be selective and choose relevant properties.

![A set of retrievable properties rendered as a result](./images/connectors-images/connecting-external-content-manage-schema-4.svg)

*A set of retrievable properties (`title`, `lastEditedBy` etc.) rendered as a result*

### Refinable

If a property is refinable, an admin can configure it as a custom filter in the Microsoft Search results page.

![Refine results by tags, a refinable property](./images/connectors-images/connecting-external-content-manage-schema-5.svg)

*Refine results by `tags`, a refinable property*

## Labels

A label is a well known tag published by Microsoft that you can add against a property in your schema. Adding a label helps various Microsoft products understand the property and provide a better experience.

| Label                 | Description                                                                          |
|---------------------- |------------------------------------------------------------------------------------- |
| title                 | The title of the item that you want shown in search & other experiences              |
| url                   | The target URL of the item in the data source                                        |
| createdBy             | Name of the person who created the item in the data source                           |
| lastModifiedBy        | Name of the person who most recently edited the item in the data source              |
| authors               | Name of all the people who participated/collaborated on the item in the data source  |
| createdDateTime       | Date & time that the item was created in the data source                             |
| lastModifiedDateTime  | Date & time the item was last modified in the data source                            |
| fileName              | In case of a file, the name of the file in the data source                           |
| fileExtension         | In case of a file, the extension of the file in the data source                      |

For example, the connection property *lastEditedBy* has the same meaning as the Microsoft label *lastModifiedBy*.

Add as many labels as you can, but ensure that they are accurately mapped to properties. Do not add a label to a property if it doesn't make sense. Incorrect mappings will deteriorate the experience.

> [!IMPORTANT]
> All properties that you map to labels must be retrievable.

### Relevance

By applying as many accurately mapped labels as possible, you can also improve the discovery of your content through search. We highly recommend defining as many of the below labels as possible, listed by potential impact on discovery in descending order:

- title
- lastModifiedDateTime
- lastModifiedBy
- url
- filename
- fileExtension

For discovery, i.e. search scenarios, please note:

- Ensure that your mappings are accurate.
- When you use a property as label that contains large content, you might increase search latency and have to wait longer for search to return results.
- Especially in the scenario where you configure a custom vertical that allows search over more than one connection, the search outcomes greatly benefit from appointing as many labels as possible.

### Default result types

Labels also affect how default result types are generated. Adding the title and content labels at a minimum will ensure that a result type is created for your connection.

![A default result type with title and a result snippet](./images/connectors-images/connecting-external-content-manage-schema-6.svg)

*A default result type with `title` and a result snippet*

Your default result type will provide a better experience when you define these labels, when applicable, listed by ascending order:

- title
- url
- lastModifiedBy
- lastModifiedDateTime
- fileName
- fileExtension

Finally, when assigning labels, ensure the following:

- The properties that you select to function as labels need to be marked retrievable.
- The properties and their assigned labels must have the same datatype.
- You can map exactly one label to exactly one property.

## Aliases

Aliases are friendly names for properties that you assign. These will be used in queries and selections in refinable property filters.

## Planned schema updates

*Note to reviewer: I can add more information if needed, once we confirm these are the updates that we need to mention here.*

This section includes information about planned updates for the Schema API.

> [!NOTE]
> It is strongly recommended to re-ingest items after the updates, to bring them to te latest schema. Without re-ingestion the behavior of the items will be inconsistent.

### Semantic labels

Semantic Labels provide a domain independent approach of assigning properties from different content domains to a set of well-known classes.

Semantic Labels find applications in many different content experiences. They provide automated support for many tasks like:
* Data integration in heterogenous experiences
* Building common Knowledge Graphs (e.g. Cortex, Suggestions & QF)
* Default templates for user experiences

You can assign semantic labels to your source properties on the "Assign property labels" page. Labels are well-known tags provided by Microsoft that provide semantic meaning. They allow Microsoft to integrate your connector data into Microsoft 365 experiences such as enhanced search, people cards, intelligent discovery, and more.  

The following table lists the currently supported labels and their descriptions.  

Label | Description
--- | ---  
**title** | The title for the item that you want shown in search and other experiences
**url** | The target url of the item in the source system
**Created By** | Name of the person who created the item
**Last modified by** | Name of the person who most recently edited the item
**Authors** | Name of the people who participated/collaborated on the item
**Created date time** | When was the item created
**Last modified date time** | When was the item most recently edited
**File name** | Name of the file item
**File extension** | Type of file item such as .pdf or .word

The properties on this page are pre-selected based on your data source, but you can change this selection if there's a different property that is better suited for a particular label.  

The label **title** is the most important label. It's **strongly recommended** you have a property assigned to this label in order for your connection to participate in the [result cluster experience](result-cluster.md).

Incorrectly mapping labels will cause a deteriorated search experience. It's okay for some labels to not have a property assigned to it.  

### Adding a property

It will be possible to add a property to the schema. This property can have any search attributes, and it will be available in Substrate with its value after being added.

### Adding search attributes to a property

It will be possible to add specific search attributes to a property.  

## Schema Updates
The following updates are for version v0.1.

### Updates that will require reingestion of items: 

### Deletion of a property 

Schema owner intent:  The items no longer have the property on the ingested items.  

If a property is deleted from the schema and the users were to search on these properties they would not get results from the backward looking items as the property no longer exists in the schema.  The query path would have no way to look up the property.  Another reason to disallow deletion of a property is that if the search admin later re-added a property with the same name with different search attributes, the backward and forward looking items will be inconsistent and the results will be inconsistent as well. 

The question of data spill was brought up as to a reason why the deletion of a property would be needed on a UDT connector.  In this case, the entire connection should be deleted and recreated (and therefore the shard with the search data in it) to ensure that the spilled data did not live anywhere in the substrate. 

Deletion of search attributes from a property 

Deletion of a search attribute from a property would lead to inconsistent behavior as the backward and forward looking items differ in the returned result set. 

### Addition or removal of a Refiner

Due to how refiners function in substrate, these cannot be created on the fly.  A specific set of pre-created refiner managed properties exist in the substrate (395 per namespace). These are the only refiners that can be used for customizations.  All the pre-created refiner managed properties are refinable, sortable, queryable and retrievable.  They cannot be searchable.  

When a connector admin chooses to make a property refinable, a pointer from the source property to one of the refiner managed properties will be created and an alias will be assigned to this property within that namespace.  These actions will be seamless to the search admin.   

The pre-created refiner managed property will be the only managed property associated with this source property.  As mentioned above, no search attributes can be removed from a property, and this includes refinable.  The alias assigned at creation of the refiner property will be the source name of this property.  This will not be modifiable as specified above.  

A refiner cannot be added as a schema change to an existing property.  This will break backward compatibility as the backward and forward looking items will have inconsistent behavior.

## Updates that will not require reingestion of items, but it is still recommended 

**Note:** There will be a difference in the behavior of the items.  

### Adding a property
The search admin will be allowed to add a property to their schema.  This property can have any search attributes the search admin wishes.  While this property will not exist on the backward looking items, the result set will be consistent, but will only contain forward looking items.

### Adding search attributes to a property 
The search admin will be allowed to add specific search attributes to a property.  As already discussed in the Refiners section above, adding the refiner search attribute as a schema change will not be allowed.  The only other restriction to adding search attributes is searchable to an already refinable property.  All other additions will be allowed.

## Updates that do not require a reingestion of the items 

### Adding or removing an alias on a property  

The removal or addition of an alias on a property do not require a reingestion as it is a query only concept.  The connection admins and 1st party schema owners will be allowed to add or remove aliases and not have to trigger either a refeed from source or the substrate recrawler.  The behavior on backward and forward looking items for a search using this alias will be the same. 

The one caveat to this is that the schema owner will be unable to remove the original alias of a refinable property that was auto-created by the system.

## Considerations 

### Reingesting of Items 

Depending on the schema update a reingestion of the items to bring them all to the new schema is required for the behavior of the items to be the same.  Without reingestion the behavior of the items will be different.   

### Options 
There are a few options as to how to reingest the items after a schema change.

### Refeed from Source – Version 1 

This requires the items to be sent again from the source into substrate.  This is costly in terms of network bandwidth and COGs on the substrate side. Full reingestion is need and you should trigger a refeed from the source. 

### Recrawler – North Star 

A recrawler could be created in substrate that can touch the backward looking items such that it triggers a reingestion.  This way the data does not have to be refed from the source. 

You should trigger a recrawl of data when a schema update is committed. 

## Next steps

- [Add items to the connection](./connecting-external-content-manage-items.md)
- [Review the Microsoft Graph connectors API reference](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true)
- [Search custom types (externalItem)](search-concept-custom-types.md)
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub