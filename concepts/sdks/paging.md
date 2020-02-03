---
title: "Page through a collection"
description: "Provides instructions for creating Microsoft Graph API requests."
localization_priority: Normal
author: DarrelMiller
---

# Page through a collection

For performance reasons, collections of entities are often split into pages and each page is returned with a URL to the next page. Sometimes, page granularity provided by the API does not match the requirements of the consumer. PageIterator simplifies consuming of paged collections.

## Iterate over all the messages

This example demonstrates iterating over all the messages in a user's mailbox.  By setting the `top` parameter to 999 we can minimize the number of requests that are necessary.

# [C#](#tab/CS)

```csharp
var results = new List<string>();
var messages = await client.Me.Messages
	.Request()
	.WithScopes(scopes)
	.Select(e => new {
		e.Sender,
		e.Subject
	})
	.Top(999)
	.GetAsync();

var pageIterator = PageIterator<Message>.CreatePageIterator(client, messages, (m) => {
	output(m.Subject);
	return true;
});

await pageIterator.IterateAsync();
```

# [TypeScript](#tab/TypeScript)

```typescript
// Makes request to fetch mails list. Which is expected to have multiple pages of data.
let response: PageCollection = await client.api("/me/messages?$top=999&$select=sender,subject").get();
// A callback function to be called for every item in the collection. This call back should return boolean indicating whether not to continue the iteration process.
let callback: PageIteratorCallback = (data) => {
   console.log(data);
   return true;
};
// Creating a new page iterator instance with client a graph client instance, page collection response from request and callback
let pageIterator = new PageIterator(client, response, callback);
// This iterates the collection until the nextLink is drained out.
pageIterator.iterate();
}
```

---

## Stopping and Resuming the iteration

Some scenarios require stopping the iteration process in order to perform other actions.  There may be cases where you with to resume the iteration.  It is possible to pause the iteration by returning `false` from the iteration callback. Iteration can be resumed by calling the `resume` method on the `Iterator` task.

# [TypeScript](#tab/TypeScript)

```typescript
// Populating custom size pages if the api restricts to some maximum size. Lazy loading more data on user prompt or something, stop and resume will do the trick.
let response: PageCollection = await client.api("/me/messages").get();
let size = 1000;
let count = 0;
let callback: PageIteratorCallback = (data) => {
	console.log(data);
	count++;
	if (count === size) {
		count = 0;
		return false;
	}
	return true;
};
let pageIterator = new PageIterator(client, response, callback);
// This stops iterating over for 1000 entities.
pageIterator.iterate();

// Resuming will do start from where it left off and iterate for next 1000 entities.
// Check and resume is likely to be called in any user interaction requiring to load more data.
if (!pageIterator.isComplete()) {
	pageIterator.resume();
}

```
---
