---
title: "Create API Requests"
description: "Provides instructions for creating Microsoft Graph HTTP requests."
localization_priority: Normal
author: DarrelMiller
---

# Make API calls with the SDKs

The Microsoft SDK service libraries provide a client class that can be used as the starting point for creating all API requests. There are two styles of client class, one which uses a fluent interface to create the request (e.g. `client.Me.Manager` ) and the other that accepts a path string (e.g. `api("/me/manager")`). Once you have a request object, you can specify a variety of options such as filtering and sorting, and finally, you select the kind of operation you wish to perform.

## Read information from Microsoft Graph

To read information from Microsoft Graph, it is first necessary to create a request object and then execute the get method on the request.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-read.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-read.md)]
---

## Use $select to control the properties returned

When retrieving an entity, not all properties are automatically retrieved, sometimes they need to be explicitly selected. Also, there are scenarios where it is not necessary to return all the default set of properties. Selecting just the required properties can improve the performance of the request. The *request* object can be customized to emit the `$select` query parameter with a list of desired properties.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-select.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-select.md)]
---


## Retrieve list of entities

Retrieving a list of entities is similar to retrieving a single entity except there a number of other options for configuring the request. The `$filter` query parameter can be used to reduce the result set to only those rows that match the provided condition.  The `$orderBy` query parameter will request that the server provide the list of entities sorted by the specified properties.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-list.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-list.md)]
---

The object returned when retrieving a list of entities is likely to be a paged collection. Refer to the [paging through a collection](paging) section for details on how to obtain the complete list of entities.

## Access an item of a collection

For SDKs that support a fluent style, collections of entities can be accessed using an array index.  For template based SDKs, it is sufficient to simply embed the item identifier in the path segment following the collection.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-index.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-index.md)]
---

## Use $expand to access related entities

Using the `$expand` capability it is possible to request a related entity, or collection of entities, at the same as requesting the main entity.  The `Expand()` function on the *request* object adds the necessary query parameter.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-expand.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-expand.md)]
---


## Delete an entity

To delete an entity, the *request* can be constructed in exactly the same way as when retrieving an entity.  The *delete* method on the *request* object indicates the desire to delete the entity.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-delete.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-delete.md)]
---

## Make a POST request to create a new entity

Creating a new entity in a collection can be done by calling an `add` or `post` method and passing in an object that contains the information to be used when creating the new entity.  An updated version of the created entity is usually returned from the call.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-create.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-create.md)]
---

## Updating an existing entity with PATCH

Most updates in Microsoft Graph are performed using a the `PATCH` method and therefore it is only necessary to include the properties that you wish to change in the object you pass.  

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-update.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-update.md)]
---


## Use HTTP headers to control request behavior

A `header()` function can be used to attach custom headers to a request. There are a number of situations across Microsoft Graph that use custom header to adjust the behavior of the request being made.
 
# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-headers.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-headers.md)]
---

## Provide custom query parameters

In situations where an API call allows custom query parameters those parameter values can be provided by using a list of `QueryOptions` objects.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-headers.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-headers.md)]
---