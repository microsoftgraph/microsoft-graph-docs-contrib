---
title: Schema API 
description: Schema API
author: mecampos
doc_type: conceptualPageType
ms.prod: search
---

# Schema API 

This topic includes information and updates for the schema API, and it complements the guide to [Register schema for the Microsoft Graph connection](connecting-external-content-manage-schema.md).

> [!NOTE]
> Some updates will require to re-ingest items to bring them to te latest schema.

## Schema

The connection schema is a list of properties that define how Microsoft Graph experiences will use your external content. You must add all the properties—along with their attributes, labels, and aliases—before adding items to the connection.

## Schema attributes

You can set the search schema attributes to control the search functionality of each source property. Schema attributes include the options to Query, Search, Retrieve, and Refine. The following table lists each of the attributes that Microsoft Graph connectors support and explains their functions.


|Search schema attribute  |Function  |Example  |
|---------|---------|---------|
|SEARCH     | Makes the text content of a property searchable. Property contents are included in the full-text index.         |  If the property is title, a query for Enterprise returns answers that contain the word Enterprise in any text or title.       |
|QUERY     | Searches by query for a match for a particular property. The property name can then be specified in the query, either programmatically or verbatim.        | If the Title property can be queried, then the query Title: Enterprise is supported.        |
|RETRIEVE     | Only retrievable properties can be used in the result type and displayed in the search result.        |         |
|REFINE     | The Refine option can be used in the same way that it is in the Microsoft Search results page.        | Users in your organization can filter by URL in the search results page if the refine property was marked when the connection was set up.        |

## Labels

A label is a well-known tag published by Microsoft that you can add against a property in your schema. Adding a label helps various Microsoft products understand the property and provides a better experience.

|Label  |Description  |
|---------|---------|
|title     | The title of the item that you want shown in search and other experiences.        |
|url     | The target URL of the item in the data source.        |
|createdBy     |  The name of the person who created the item in the data source.       |
|lastModifiedBy     |  The name of the person who most recently edited the item in the data source.       |
|authors     | The names of all the people who participated in or collaborated on the item in the data source.        |
|createdDateTime     |  The date and time at which the item was created in the data source.       |
|lastModifiedDateTime     | The date and time at which the item was last modified in the data source.        |
|fileName     | In the case of a file, the name of the file in the data source.        |
|fileExtension     | In the case of a file, the extension of the file in the data source.        |

## Aliases

Aliases are friendly names for properties that you assign. They are used for queries and selections in refinable property filters.

## Planned Schema Updates

The following updates are planned for version v0.1:

### Updates that will require reingestion of items

#### Deletion of a property

Schema owner intent:  The items no longer have the property on the ingested items. 
If a property is deleted from the schema and the users were to search on these properties, they would not get results from the backward looking items as the property no longer exists in the schema.  The query path would have no way to look up the property.  Another reason to disallow deletion of a property is that if the search admin later re-added a property with the same name with different search attributes, the backward and forward looking items will be inconsistent and the results will be inconsistent as well.
The question of data spill was brought up as to a reason why the deletion of a property would be needed on a UDT connector.  In this case, the entire connection should be deleted and recreated (and therefore the shard with the search data in it) to ensure that the spilled data did not live anywhere in the substrate.
Deletion of search attributes from a property
Deletion of a search attribute from a property would lead to inconsistent behavior as the backward and forward looking items differ in the returned result set.

#### Addition or removal of a Refiner

Due to how refiners function in substrate, these cannot be created on the fly.  A specific set of pre-created refiner managed properties exist in the substrate (395 per namespace). These are the only refiners that can be used for customizations.  All the pre-created refiner managed properties are refinable, sortable, queryable and retrievable.  They cannot be searchable. 
When a connector admin chooses to make a property refinable, a pointer from the source property to one of the refiner managed properties will be created and an alias will be assigned to this property within that namespace.  These actions will be seamless to the search admin.  
The pre-created refiner managed property will be the only managed property associated with this source property.  As mentioned above, no search attributes can be removed from a property, and this includes refinable.  The alias assigned at creation of the refiner property will be the source name of this property.  This will not be modifiable as specified above. 
A refiner cannot be added as a schema change to an existing property.  This will break backward compatibility as the backward and forward looking items will have inconsistent behavior.

### Updates that will not require reingestion of items, but it is still recommended

In this case, reingestion is recommended because there will be a difference in the behavior of the items.

#### Adding a property

The search admin will be allowed to add a property to their schema.  This property can have any search attributes the search admin wishes.  While this property will not exist on the backward looking items, the result set will be consistent, but will only contain forward looking items.

#### Adding search attributes to a property

The search admin will be allowed to add specific search attributes to a property.  As already discussed in the Refiners section above, adding the refiner search attribute as a schema change will not be allowed.  The only other restriction to adding search attributes is searchable to an already refinable property.  All other additions will be allowed.re

### Updates that do not require a reingestion of the items

#### Adding or removing an alias on a property

The removal or addition of an alias on a property do not require a reingestion as it is a query only concept.  The connection admins and 1st party schema owners will be allowed to add or remove aliases and not have to trigger either a refeed from source or the substrate recrawler.  The behavior on backward and forward looking items for a search using this alias will be the same.
The one caveat to this is that the schema owner will be unable to remove the original alias of a refinable property that was auto-created by the system.

## Considerations

Depending on the schema update a reingestion of the items to bring them all to the new schema is required for the behavior of the items to be the same.  Without reingestion the behavior of the items will be different.  
Options

## Related resources

- List of related resources for reference
