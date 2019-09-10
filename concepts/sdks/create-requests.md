---
title: "Create API Requests"
description: "Provides instructions for creating Microsoft Graph HTTP API requests."
localization_priority: Normal
author: DarrelMiller
---

# Make HTTP requests to Microsoft Graph with the SDKs

The Microsoft SDK service libraries provide a root class, referred to as the *client* class that can be used as the starting point for creating all API requests. There are two styles of *client* class, one which uses a "fluent" interface to build up the HTTP request and the other uses a templated path string.

## Read information from Microsoft Graph

To read information from Microsoft Graph, it is first necessary to create a *request* object and then execute the *get* method on the request.

# [C#](#tab/CS)

```csharp
     User user = await graphClient.Me  
                .Request()
                .GetAsync();  // GET https://graph.microsoft.com/v1.0/me
```

# [JavaScript](#tab/JavaScript)

```js
    let user = await client.api("/me").get();
```

---

## Use $select to controlling the properties returned

When retrieving an entity, not all properties are automatically retrieved, sometimes they need to be explicitly selected. Also, there are scenarios where it is not necessary to return all the default set of properties. Selecting just the required properties can improve the performance of the request. The *request* object can be customized to emit the `$select` query parameter with a list of desired properties.

# [C#](#tab/CS)

```csharp
     User user = await graphClient.Me
                .Request()
                .Select(u => new
                {
                    u.DisplayName,
                    u.JobTitle
                })
                .GetAsync(); // GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle
```

# [JavaScript](#tab/JavaScript)

```JavaScript
    let user = await client.api("/me")
        .select("displayName", "jobTitle")
        .get();  // GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle
```

---

## Retrieve lists of entities

Retrieving a list of entities is similar to retrieving a single entity except there a number of other options for configuring the request. The `$filter` query parameter can be used to reduce the result set to only those rows that match the provided condition.  The `$orderBy` query parameter will request that the server provide the list of entities sorted by the specified properties.

# [C#](#tab/CS)

```csharp
     IUserMessagesCollectionPage messages = await graphClient.Me.Messages
                .Request()
                .Select(m => new
                {
                    u.Subject,
                    u.Sender
                })
                .Filter("some condition")
                .OrderBy("receivedDateTime")
                .GetAsync();
// GET https://graph.microsoft.com/v1.0/me/messages?$select=subject,sender&$filter=<some condition>&orderBy=receivedDateTime
```

# [JavaScript](#tab/JavaScript)

```JavaScript
    let messages = await client.api("/me/messages")
        .select("subject", "sender")
        .filter("some condition")
        .orderBy("receivedDateTime")
        .get();  
```

---

The object returned when retrieving a list of entities is likely to be a paged collection. Refer to the [paging through a collection]() section for details on how to obtain the complete list of entities.

## Access an item of a collection

For SDKs that support a *fluent* style, collections of entities can be accessed using an array index.  For template based SDKs, it is sufficient to simply embed the item identifier in the path segment following the collection.

# [C#](#tab/CS)

```csharp
     string messageId = "<guid>";
     Message message = await graphClient.Me.Messages[messageId]
                .Request()
                .GetAsync();
// GET https://graph.microsoft.com/v1.0/me/messages/<guid>
```

# [JavaScript](#tab/JavaScript)

```JavaScript
    let messageId = "<guid>";
    let messages = await client.api("/me/messages/${messageId}")
        .get();  // GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle
```

---

## Access related entities using $expand

Using the `$expand` capability it is possible to request a related entity, or collection of entities, at the same as requesting the main entity.  The `Expand()` function on the *request* object adds the necessary query parameter.

# [C#](#tab/CS)

```csharp
     string messageId = "<guid>";
     Message message = await graphClient.Me.Messages[messageId]
                .Request()
                .Expand("attachments")
                .GetAsync();
// GET https://graph.microsoft.com/v1.0/me/messages/<guid>?$expand=attachments
```

# [JavaScript](#tab/JavaScript)

```JavaScript
    let messageId = "<guid>";
    let message = await client.api("/me/messages/${messageId}")
        .expand("attachments")
        .get();  // GET https://graph.microsoft.com/v1.0/me/messages?$expand=attachments
```

---

## Delete an entity

To delete an entity, the *request* can be constructed in exactly the same way as when retrieving an entity.  The *delete* method on the *request* object indicates the desire to delete the entity.

# [C#](#tab/CS)

```csharp
     string messageId = "<guid>";
     Message message = await graphClient.Me.Messages[messageId]
                .Request()
                .DeleteAsync();
    // DELETE https://graph.microsoft.com/v1.0/me/messages/<guid>
```

# [JavaScript](#tab/JavaScript)

```JavaScript
    let messageId = "<guid>";
    let message = await client.api("/me/messages/${messageId}")
        .delete();  
    // DELETE https://graph.microsoft.com/v1.0/me/messages/<guid>
```

---

## Make a POST request to create a new entity

Creating a new entity in a collection can be done by calling an `add` or `post` method and passing in an object that contains the information to be used when creating the new entity.  An updated version of the created entity is usually returned from the call.

# [C#](#tab/CS)

```csharp
    GraphServiceClient graphClient = new GraphServiceClient( authProvider );
    
    var calendar = new Calendar
    {
    	Name = "Volunteer"
    };
    
    newCalendar = await graphClient.Me.Calendars
    	.Request()
    	.AddAsync(calendar);
```

# [JavaScript](#tab/JavaScript)

```JavaScript
    const options = {
    	authProvider,
    };
    
    const client = Client.init(options);
    
    const calendar = {
      name: "Volunteer"
    };
    
    let newCalendar = await client.api('/me/calendars')
    	.post(calendar);
```

---

## Updating an existing entity with PATCH

TBD

## Using HTTP headers to adjust request behavior

A `header()` function can be used to attach custom headers to a request. There are a number of situations across Microsoft Graph that use custom header to adjust the behavior of the request being made.
 
# [C#](#tab/CS)

```csharp
    GraphServiceClient graphClient = new GraphServiceClient( authProvider );
    
    var events = await graphClient.Me.Events
    	.Request()
    	.Header("Prefer","outlook.body-content-type=\"text\"")
    	.Select( e => new {
    			 e.Subject,
    			 e.Body,
    			 e.BodyPreview 
    			 })
    	.GetAsync();
```

# [JavaScript](#tab/JavaScript)

```js
const options = {
	authProvider,
};

const client = Client.init(options);

let events = await client.api('/me/events')
	.header('Prefer','outlook.timezone="Pacific Standard Time"')
	.select('subject,body,bodyPreview,organizer,attendees,start,end,location')
	.get();
```

---

## Provide custom query parameters

In situations where an API call allows custom query parameters those parameter values can be provided by using a list of `QueryOptions` objects.

# [C#](#tab/CS)

```csharp
    var queryOptions = new List<QueryOption>()
    {
        new QueryOption("startdate", "2016-12-01T00:00:00Z"),
        new QueryOption("enddate", "2016-12-30T00:00:00Z")
    };
    
    var calendar = await graphClient.Me.CalendarView()
        .Request( queryOptions )
        .GetAsync();
```

# [JavaScript](#tab/JavaScript)

```js
const options = {
	authProvider,
};

const client = Client.init(options);

let calendar = await client.api('/me/calendar/calendarView?startDateTime=2017-01-01T19:00:00.0000000&endDateTime=2017-01-07T19:00:00.0000000')
	.get();

```

---