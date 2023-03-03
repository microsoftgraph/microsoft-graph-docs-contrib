---
title: "Page through a collection using the Microsoft Graph SDKs"
description: "Provides instructions for creating Microsoft Graph API requests using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: DarrelMiller
---

<!-- markdownlint-disable MD051 -->

# Page through a collection using the Microsoft Graph SDKs

For performance reasons, collections of entities are often split into pages and each page is returned with a URL to the next page. The **PageIterator** class simplifies consuming of paged collections. **PageIterator** handles enumerating the current page and requesting subsequent pages automatically.

## Request headers

If you send any additional request headers in your initial request, those headers are not included by default in subsequent page requests. If those headers need to be sent on subsequent requests, you must set them explicitly.

## Iterate over all the messages

The following example shows iterating over all the messages in a user's mailbox.

> [!TIP]
> This example sets a small page size using the `top` parameter for demonstration purposes. You can set the page size up to 999 to minimize the number of requests that are necessary.

### [C#](#tab/csharp)

```csharp
var messages = await graphClient.Me.Messages
    .GetAsync(requestConfiguration => 
    {
        requestConfiguration.QueryParameters.Top = 10;
        requestConfiguration.QueryParameters.Select = new string[] { "sender", "subject", "body" };
        requestConfiguration.Headers.Add("Prefer", "outlook.body-content-type=\"text\"");
    });

var pageIterator = PageIterator<Message,MessageCollectionResponse>
    .CreatePageIterator(
        graphClient,
        messages,
        // Callback executed for each item in
        // the collection
        (m) =>
        {
            Console.WriteLine(m.Subject);
            return true;
        },
        // Used to configure subsequent page
        // requests
        (req) =>
        {
            // Re-add the header to subsequent requests
            req.Headers.Add("Prefer", "outlook.body-content-type=\"text\"");
            return req;
        }
    );

await pageIterator.IterateAsync();
```

### [TypeScript](#tab/typeScript)

```typescript
// Makes request to fetch mails list.
let response: PageCollection = await client
  .api("/me/messages?$top=10&$select=sender,subject,body")
  .header('Prefer', 'outlook.body-content-type="text"')
  .get();

// A callback function to be called for every item in the collection.
// This call back should return boolean indicating whether not to
// continue the iteration process.
let callback: PageIteratorCallback = (data) => {
  console.log(data.subject);
  return true;
};

// A set of request options to be applied to
// all subsequent page requests
let requestOptions: GraphRequestOptions = {
  // Re-add the header to subsequent requests
  headers: {
    'Prefer': 'outlook.body-content-type="text"'
  }
};

// Creating a new page iterator instance with client a graph client
// instance, page collection response from request and callback
let pageIterator = new PageIterator(client, response, callback, requestOptions);

// This iterates the collection until the nextLink is drained out.
await pageIterator.iterate();
```

### [Java](#tab/java)

```java
MessageCollectionPage messagesPage = graphClient.me().messages()
    .buildRequest(new HeaderOption("Prefer", "outlook.body-content-type=\"text\""))
    .select("Sender,Subject,Body")
    .top(10)
    .get();


while(messagesPage != null) {
  final List<Message> messages = messagesPage.getCurrentPage();
  final MessageCollectionRequestBuilder nextPage = messagesPage.getNextPage();
  if (nextPage == null) {
    break;
  } else {
    messagesPage = nextPage.buildRequest(
        // Re-add the header to subsequent requests
        new HeaderOption("Prefer", "outlook.body-content-type=\"text\"")
    ).get();
  }
}
```

### [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
    abstractions "github.com/microsoft/kiota-abstractions-go"
    msgraphcore "github.com/microsoftgraph/msgraph-sdk-go-core"
    "github.com/microsoftgraph/msgraph-sdk-go/me"
    "github.com/microsoftgraph/msgraph-sdk-go/models"
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.body-content-type=\"text\"")

query := me.MessagesRequestBuilderGetQueryParameters{
    Select: []string{"body", "sender", "subject"},
}

options := me.MessagesRequestBuilderGetRequestConfiguration{
    Headers: headers,
    QueryParameters: &query,
}

result, err := client.Me().Messages().Get(context.Background(), &options)

// Initialize iterator
pageIterator, err := msgraphcore.NewPageIterator(
    result, client.GetAdapter(), models.CreateMessageCollectionResponseFromDiscriminatorValue)

// Any custom headers sent in original request should also be added
// to the iterator
pageIterator.SetHeaders(headers)

// Iterate over all pages
iterateErr := pageIterator.Iterate(context.Background(), func(pageItem interface{}) bool {
    message := pageItem.(models.Messageable)
    fmt.Printf("%s\n", *message.GetSubject())
    // Return true to continue the iteration
    return true
})
```

---

## Stopping and resuming the iteration

Some scenarios require stopping the iteration process in order to perform other actions. It is possible to pause the iteration by returning `false` from the iteration callback. Iteration can be resumed by calling the `resume` method on the **PageIterator**.

<!-- markdownlint-disable MD024 -->
### [C#](#tab/csharp)

```csharp
int count = 0;
int pauseAfter = 25;

var messages = await graphClient.Me.Messages
    .GetAsync(requestConfiguration =>
    {
        requestConfiguration.QueryParameters.Top = 10;
        requestConfiguration.QueryParameters.Select = new string[] { "sender", "subject" };
    });

var pageIterator = PageIterator<Message, MessageCollectionResponse>
    .CreatePageIterator(
        graphClient,
        messages,
        (m) =>
        {
            Console.WriteLine(m.Subject);
            count++;
            // If we've iterated over the limit,
            // stop the iteration by returning false
            return count < pauseAfter;
        }
    );

await pageIterator.IterateAsync();

while (pageIterator.State != PagingState.Complete)
{
    Console.WriteLine("Iteration paused for 5 seconds...");
    await Task.Delay(5000);
    // Reset count
    count = 0;
    await pageIterator.ResumeAsync();
}
```

### [TypeScript](#tab/typeScript)

```typescript
let count: number = 0;
let pauseAfter: number = 25;

let response: PageCollection = await client
  .api('/me/messages?$top=10&$select=sender,subject')
  .get();

let callback: PageIteratorCallback = (data) => {
  result = `${result}${data.subject}\n`;
  console.log(data.subject);
  count++;

  // If we've iterated over the limit,
  // stop the iteration by returning false
  return count < pauseAfter;
};

let pageIterator = new PageIterator(client, response, callback);
await pageIterator.iterate();

while (!pageIterator.isComplete()) {
  console.log('Iteration paused for 5 seconds...');
  await new Promise(resolve => setTimeout(resolve, 5000));

  // Reset count
  count = 0;
  await pageIterator.resume();
}
```

### [Java](#tab/java)

```java
// not supported in java SDK
```

### [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
    abstractions "github.com/microsoft/kiota-abstractions-go"
    msgraphcore "github.com/microsoftgraph/msgraph-sdk-go-core"
    "github.com/microsoftgraph/msgraph-sdk-go/me"
    "github.com/microsoftgraph/msgraph-sdk-go/models"
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.body-content-type=\"text\"")

query := me.MessagesRequestBuilderGetQueryParameters{
    Select: []string{"body", "sender", "subject"},
}

options := me.MessagesRequestBuilderGetRequestConfiguration{
    Headers: headers,
    QueryParameters: &query,
}


result, err := client.Me().Messages().Get(context.Background(), &options)

// Initialize iterator
pageIterator, err := msgraphcore.NewPageIterator(
    result, client.GetAdapter(), models.CreateMessageCollectionResponseFromDiscriminatorValue)

// Any custom headers sent in original request should also be added
// to the iterator
pageIterator.SetHeaders(headers)

// Pause iterating after 25
var count, pauseAfter = 0, 25

// Iterate over all pages
iterateErr := pageIterator.Iterate(context.Background(), func(pageItem interface{}) bool {
    message := pageItem.(models.Messageable)
    count++
    fmt.Printf("%d: %s\n", count, *message.GetSubject())
    // Once count = 25, this returns false,
    // Which pauses the iteration
    return count < pauseAfter
})

// Pause 5 seconds
fmt.Printf("Iterated first %d messages, pausing for 5 seconds...\n", pauseAfter)
time.Sleep(5 * time.Second)
fmt.Printf("Resuming iteration...\n")

// Resume iteration
iterateErr = pageIterator.Iterate(context.Background(), func(pageItem interface{}) bool {
    message := pageItem.(models.Messageable)
    count++
    fmt.Printf("%d: %s\n", count, *message.GetSubject())
    // Return true to continue the iteration
    return true
})
```

---
<!-- markdownlint-enable MD024 -->
