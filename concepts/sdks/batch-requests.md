---
title: "Use the Microsoft Graph SDKs to batch requests"
description: "Provides instructions for creating a batch of API requests using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: DarrelMiller
---

<!-- markdownlint-disable MD024 MD051 -->

# Use the Microsoft Graph SDKs to batch requests

[Batching](../json-batching.md) is a way of combining multiple requests into a single HTTP request. The requests are combined in a single JSON payload, which is sent via POST to the `\$batch` endpoint. Microsoft Graph SDKs have a set of classes to simplify how you create batch payloads and parse batch response payloads.

> [!IMPORTANT]
> For current limitations with JSON batching in Microsoft Graph, see [Known Issues](../known-issues.md#json-batching).

## Create a batch request

The Microsoft Graph SDKs provide three classes to work with batch requests and responses.

- **BatchRequestStep** - Represents a single request (such as `GET /me`) within a batch. It enables assigning a unique identifier to the request and specifying dependencies between requests.
- **BatchRequestContent** - Simplifies creating the batch request payload. It contains multiple **BatchRequestStep** objects.
- **BatchResponseContent** - Simplifies parsing the response from a batch request. It provides the ability to get all responses, get a specific response by ID, and get the `@odata.nextLink` property if present.

## Simple batching example

This example shows how to send multiple requests in a batch that are not dependent on each other. The requests can be run by the service in any order. This example gets the user and gets the user's calendar view for the current day.

### [C#](#tab/csharp)

```csharp
// Use the request builder to generate a regular
// request to /me
var userRequest = graphClient.Me.ToGetRequestInformation();

var today = DateTime.Now.Date;

// Use the request builder to generate a regular
// request to /me/calendarview?startDateTime="start"&endDateTime="end"
var eventsRequest = graphClient.Me.CalendarView
    .ToGetRequestInformation(requestConfiguration => 
        {
            requestConfiguration.QueryParameters.StartDateTime = today.ToString("yyyy-MM-ddTHH:mm:ssK");
            requestConfiguration.QueryParameters.EndDateTime = today.AddDays(1).ToString("yyyy-MM-ddTHH:mm:ssK");
        });

// Build the batch
var batchRequestContent = new BatchRequestContent(graphClient);

// Using AddBatchRequestStepAsync adds each request as a step
// with no specified order of execution
var userRequestId = await batchRequestContent.AddBatchRequestStepAsync(userRequest);
var eventsRequestId = await batchRequestContent.AddBatchRequestStepAsync(eventsRequest);

var returnedResponse = await graphClient.Batch.PostAsync(batchRequestContent);

// De-serialize response based on known return type
try
{
    var user = await returnedResponse
        .GetResponseByIdAsync<User>(userRequestId);
    Console.WriteLine($"Hello {user.DisplayName}!");
}
catch (ServiceException ex)
{
    Console.WriteLine($"Get user failed: {ex.Error.Message}");
}

// For collections, must use the *CollectionResponse class to deserialize
// The .Value property will contain the *CollectionPage type that the Graph client
// returns from GetAsync().
try
{
    var events = await returnedResponse
        .GetResponseByIdAsync<EventCollectionResponse>(eventsRequestId);
    Console.WriteLine($"You have {events.Value.Count} events on your calendar today.");
}
catch (ServiceException ex)
{
    Console.WriteLine($"Get calendar view failed: {ex.Error.Message}");
}
```

### [TypeScript](#tab/typescript)

```typescript
// Create a batch request step to GET /me
let userRequestStep: MicrosoftGraph.BatchRequestStep = {
  id: "1",
  request: new Request("/me", {
    method: "GET"
  })
}

let today = moment({hour: 0, minute: 0, seconds: 0});
let start = today.format();
let end = today.add(1, "day").format();

// Create a batch request step to GET
// /me/calendarview?startDateTime="start"&endDateTime="end"
let calendarViewRequestStep: MicrosoftGraph.BatchRequestStep = {
  id: "2",
  request: new Request(`/me/calendarview?startDateTime=${start}&endDateTime=${end}`, {
    method: "GET"
  })
}

// Create the batch request content with the steps created
// above
let batchRequestContent = new MicrosoftGraph.BatchRequestContent([
  userRequestStep,
  calendarViewRequestStep
]);

let content = await batchRequestContent.getContent();

// POST the batch request content to the /$batch endpoint
let batchResponse = await client
  .api('/$batch')
  .post(content);

// Create a BatchResponseContent object to parse the response
let batchResponseContent = new MicrosoftGraph.BatchResponseContent(batchResponse);

// Get the user response using the id assigned to the request
let userResponse = batchResponseContent.getResponseById("1");

// For a single entity, the JSON payload can be deserialized
// into the expected type
// Types supplied by @microsoft/microsoft-graph-types
if (userResponse.ok) {
  let user: User = await userResponse.json();
  console.log(`Hello ${user.displayName}!`);
} else {
  console.log(`Get user failed with status ${userResponse.status}`);
}

// Get the calendar view response by id
let calendarResponse = batchResponseContent.getResponseById("2");

// For a collection of entities, the "value" property of
// the JSON payload can be deserialized into an array of
// the expected type
if (calendarResponse.ok) {
  let rawResponse = await calendarResponse.json();
  let events: [Event] = rawResponse.value;
  console.log(`You have ${events.length} events on your calendar today.`);
} else {
  console.log(`Get calendar view failed with status ${calendarResponse.status}`);
}
```

### [Java](#tab/java)

```java
// Create the batch request content with the steps
final BatchRequestContent batchRequestContent = new BatchRequestContent();

// Use the Graph client to generate the request for GET /me
final String meGetId = batchRequestContent
                        .addBatchRequestStep(graphClient
                                              .me()
                                              .buildRequest());

final ZoneOffset localTimeZone = OffsetDateTime.now().getOffset();
final OffsetDateTime today = OffsetDateTime.of(LocalDate.now(), LocalTime.MIDNIGHT, localTimeZone);
final OffsetDateTime tomorrow = today.plusDays(1);

// Use the Graph client to generate the request URL for
// GET /me/calendarview?startDateTime="start"&endDateTime="end"
final List<Option> calendarViewOptions = Arrays.asList(new QueryOption("startDateTime", today.toString()),
                                                      new QueryOption("endDateTime", tomorrow.toString()));
final String calendarViewRequestStepId = batchRequestContent
                                        .addBatchRequestStep(graphClient
                                          .me()
                                          .calendarView()
                                          .buildRequest(calendarViewOptions));

// Send the batch request content to the /$batch endpoint
final BatchResponseContent batchResponseContent = graphClient.batch().buildRequest().post(batchRequestContent);
// Get the user response using the id assigned to the request
final User user = batchResponseContent.getResponseById(meGetId).getDeserializedBody(User.class);
System.out.println(String.format("Hello %s!", user.displayName));

// Get the calendar view response by id
final EventCollectionResponse events = batchResponseContent.getResponseById(calendarViewRequestStepId).getDeserializedBody(EventCollectionResponse.class);
System.out.println(String.format("You have %d events on your calendar today", events.value.size()));
```

### [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
    msgraphgocore "github.com/microsoftgraph/msgraph-sdk-go-core"
    "github.com/microsoftgraph/msgraph-sdk-go/me"
    "github.com/microsoftgraph/msgraph-sdk-go/models"
)

// Use the request builder to generate a regular
// request to /me
meRequest, _ := client.Me().
    ToGetRequestInformation(context.Background(), nil)

now := time.Now()
nowMidnight := time.Date(now.Year(), now.Month(), now.Day(),
    0, 0, 0, 0, time.Local)

startDateTime := nowMidnight.UTC().Format(time.RFC3339)
endDateTime := nowMidnight.AddDate(0, 0, 1).UTC().Format(time.RFC3339)

query := me.CalendarViewRequestBuilderGetQueryParameters{
    StartDateTime: &startDateTime,
    EndDateTime:   &endDateTime,
    Select:        []string{"subject", "id"},
}

// Use the request builder to generate a regular
// request to /me/calendarview?startDateTime="start"&endDateTime="end"
eventsRequest, _ := client.Me().
    CalendarView().
    ToGetRequestInformation(context.Background(),
        &me.CalendarViewRequestBuilderGetRequestConfiguration{
            QueryParameters: &query,
        })

// Build the batch
batch := msgraphgocore.NewBatchRequest(client.GetAdapter())

// Using AddBatchRequestStep adds each request as a step
// with no specified order of execution
meRequestItem, _ := batch.AddBatchRequestStep(*meRequest)
eventsRequestItem, _ := batch.AddBatchRequestStep(*eventsRequest)

batchResponse, _ := batch.Send(context.Background(), client.GetAdapter())

// De-serialize response based on known return type
user, _ := msgraphgocore.GetBatchResponseById[models.Userable](
    batchResponse, *meRequestItem.GetId(), models.CreateUserFromDiscriminatorValue)
fmt.Printf("Hello %s\n", *(user.GetDisplayName()))

// For collections, must use the *CollectionResponseable class to deserialize
events, _ := msgraphgocore.GetBatchResponseById[models.EventCollectionResponseable](
    batchResponse, *eventsRequestItem.GetId(),
    models.CreateEventCollectionResponseFromDiscriminatorValue)
fmt.Printf("You have %d events on your calendar today\n", len(events.GetValue()))
```

---

## Batches with dependent requests

This example shows how to send multiple requests in a batch that are dependent on each other. The requests will be run by the service in the order specified by the dependencies. This example adds an event with a start time during the current day to the user's calendar and gets the user's calendar view for the current day. To make sure that the calendar review returned includes the new event created, the request for the calendar view is configured as dependent on the request to add the new event. This ensures that the add event request will execute first.

> [!NOTE]
> If the add event request fails, the get calendar view request will fail with a `424 Failed Dependency` error.

### [C#](#tab/csharp)

```csharp
var today = DateTime.Now.Date;

var newEvent = new Event
{
    Subject = "File end-of-day report",
    Start = new DateTimeTimeZone
    {
        // 5:00 PM
        DateTime = today.AddHours(17).ToString("yyyy-MM-ddTHH:mm:ss"),
        TimeZone = TimeZoneInfo.Local.StandardName
    },
    End = new DateTimeTimeZone
    {
        // 5:30 PM
        DateTime = today.AddHours(17).AddMinutes(30).ToString("yyyy-MM-ddTHH:mm:ss"),
        TimeZone = TimeZoneInfo.Local.StandardName
    }
};

// Use the request builder to generate a regular
// POST request to /me/events
var addEventRequest = graphClient.Me.Events.ToPostRequestInformation(newEvent);

// Use the request builder to generate a regular
// request to /me/calendarview?startDateTime="start"&endDateTime="end"
var calendarViewRequest = graphClient.Me.CalendarView.ToGetRequestInformation(
    requestConfiguration => {
        requestConfiguration.QueryParameters.StartDateTime = today.ToString("yyyy-MM-ddTHH:mm:ssK");
        requestConfiguration.QueryParameters.EndDateTime = today.AddDays(1).ToString("yyyy-MM-ddTHH:mm:ssK");
    });

// Build the batch
var batchRequestContent = new BatchRequestContent(graphClient);

// Force the requests to execute in order, so that the request for
// today's events will include the new event created.

// First request, no dependency
var addEventRequestId = await batchRequestContent.AddBatchRequestStepAsync(addEventRequest);

// Second request, depends on addEventRequestId
var eventsRequestId = Guid.NewGuid().ToString();
var eventsRequestMessage = await graphClient.RequestAdapter.ConvertToNativeRequestAsync<HttpRequestMessage>(calendarViewRequest);
batchRequestContent.AddBatchRequestStep(new BatchRequestStep(
    eventsRequestId,
    eventsRequestMessage,
    new List<string> { addEventRequestId }
));

var returnedResponse = await graphClient.Batch.PostAsync(batchRequestContent);

// De-serialize response based on known return type
try
{
    var createdEvent = await returnedResponse
        .GetResponseByIdAsync<Event>(addEventRequestId);
    Console.WriteLine($"New event created with ID: {createdEvent.Id}");
}
catch (ServiceException ex)
{
    Console.WriteLine($"Add event failed: {ex.Error.Message}");
}

// For collections, must use the *CollectionResponse class to deserialize
// The .Value property will contain the *CollectionPage type that the Graph client
// returns from GetAsync().
try
{
    var events = await returnedResponse
        .GetResponseByIdAsync<EventCollectionResponse>(eventsRequestId);
    Console.WriteLine($"You have {events.Value.Count} events on your calendar today.");
}
catch (ServiceException ex)
{
    Console.WriteLine($"Get calendar view failed: {ex.Error.Message}");
}
```

### [TypeScript](#tab/typescript)

```typescript
// 5:00 PM
let eventStart = moment({hour: 17, minute: 0, seconds: 0});

// Create a batch request step to add an event
let newEvent: Event = {
  subject: "File end-of-day report",
  start: {
    dateTime: eventStart
      .format("YYYY-MM-DDTHH:mm:ss"),
    timeZone: moment.tz.guess()
  },
  end: {
    // 5:30 PM
    dateTime: eventStart.add(30, "minutes")
      .format("YYYY-MM-DDTHH:mm:ss"),
    timeZone: moment.tz.guess()
  }
}
console.log(JSON.stringify(newEvent));

let addEventRequestStep: MicrosoftGraph.BatchRequestStep = {
  id: "1",
  request: new Request("/me/events", {
    method: "POST",
    body: JSON.stringify(newEvent),
    headers: {
      "Content-Type": "application/json"
    }
  })
}

let today = moment({hour: 0, minute: 0, seconds: 0});
let start = today.format();
let end = today.add(1, "day").format();
console.log(`/me/calendarview?startDateTime=${start}&endDateTime=${end}`);

// Create a batch request step to GET
// /me/calendarview?startDateTime="start"&endDateTime="end"
let calendarViewRequestStep: MicrosoftGraph.BatchRequestStep = {
  id: "2",
  // This step will happen after step 1
  dependsOn: [ "1" ],
  request: new Request(`/me/calendarview?startDateTime=${start}&endDateTime=${end}`, {
    method: "GET"
  })
}

// Create the batch request content with the steps created
// above
let batchRequestContent = new MicrosoftGraph.BatchRequestContent([
  addEventRequestStep,
  calendarViewRequestStep
]);

let content = await batchRequestContent.getContent();

// POST the batch request content to the /$batch endpoint
let batchResponse = await client
  .api('/$batch')
  .post(content);

// Create a BatchResponseContent object to parse the response
let batchResponseContent = new MicrosoftGraph.BatchResponseContent(batchResponse);

// Get the create event response by id
let newEventResponse = batchResponseContent.getResponseById("1");
if (newEventResponse.ok) {
  let event: Event = await newEventResponse.json();
  console.log(`New event created with ID: ${event.id}`);
} else {
  console.log(`Create event failed with status ${newEventResponse.status}`);
}

// Get the calendar view response by id
let calendarResponse = batchResponseContent.getResponseById("2");

if (calendarResponse.ok)
{
  // For a collection of entities, the "value" property of
  // the JSON payload can be deserialized into an array of
  // the expected type
  let rawResponse = await calendarResponse.json();
  let events: [Event] = rawResponse.value;
  console.log(`You have ${events.length} events on your calendar today.`);
} else {
  console.log(`Get calendar view failed with status ${calendarResponse.status}`);
}
```

### [Java](#tab/java)

```java
// Create the batch request content with the steps
final BatchRequestContent batchRequestContent = new BatchRequestContent(batchSteps);

final ZoneOffset localTimeZone = OffsetDateTime.now().getOffset();
final OffsetDateTime today = OffsetDateTime.of(LocalDate.now(), LocalTime.MIDNIGHT, localTimeZone);
final OffsetDateTime tomorrow = today.plusDays(1);

// Use the Graph client to generate the request URL for POST /me/events
final Event newEvent = new Event();
newEvent.subject = "File end-of-day report";
newEvent.start = new DateTimeTimeZone();
// 5:00 PM
newEvent.start.dateTime = today.plusHours(17)
    .format(DateTimeFormatter.ISO_LOCAL_DATE_TIME);
newEvent.start.timeZone = ZoneOffset.systemDefault().getId();
newEvent.end = new DateTimeTimeZone();
// 5:30 PM
newEvent.end.dateTime = today.plusHours(17).plusMinutes(30)
    .format(DateTimeFormatter.ISO_LOCAL_DATE_TIME);
newEvent.end.timeZone = ZoneOffset.systemDefault().getId();

final String addEventRequestId = batchRequestContent
                                .addBatchRequestStep(graphClient
                                                .me()
                                                .events()
                                                .buildRequest(), HttpMethod.POST, newEvent);

// Use the Graph client to generate the request URL for
// GET /me/calendarview?startDateTime="start"&endDateTime="end"
final List<Option> calendarViewOptions = Arrays.asList(new QueryOption("startDateTime", today.toString()),
                                                      new QueryOption("endDateTime", tomorrow.toString()));
final String calendarViewRequestStepId = batchRequestContent
                                        .addBatchRequestStep(graphClient
                                          .me()
                                          .calendarView()
                                          .buildRequest(calendarViewOptions),
                                          HttpMethod.GET,
                                          null,
                                          addEventRequestId);

// Send the batch request content to the /$batch endpoint
final BatchResponseContent batchResponseContent = client.batch().buildRequest().post(batchRequestContent);
// Get the user response using the id assigned to the request
final Event event = batchResponseContent.getResponseById(addEventRequestId).getDeserializedBody(Event.class);
System.out.println(String.format("New event created with ID: %s", event.id));

// Get the calendar view response by id
final EventCollectionResponse events = batchResponseContent.getResponseById(calendarViewRequestStepId).getDeserializedBody(EventCollectionResponse.class);
System.out.println(String.format("You have %d events on your calendar today", events.value.size()));
```

### [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
    msgraphgocore "github.com/microsoftgraph/msgraph-sdk-go-core"
    "github.com/microsoftgraph/msgraph-sdk-go/me"
    "github.com/microsoftgraph/msgraph-sdk-go/models"
    "github.com/thlib/go-timezone-local/tzlocal"
)

now := time.Now()
nowMidnight := time.Date(now.Year(), now.Month(), now.Day(),
    0, 0, 0, 0, time.Local)
timeZone, _ := tzlocal.RuntimeTZ()

// 5:00 PM
startDateTime := nowMidnight.Add(time.Hour * 17)
// 5:30 PM
endDateTime := startDateTime.Add(time.Minute * 30)
graphDateTimeFormat := "2006-01-02T15:04:05"

newEvent := models.NewEvent()
subject := "File end-of-day report"
newEvent.SetSubject(&subject)

start := models.NewDateTimeTimeZone()
startString := startDateTime.Format(graphDateTimeFormat)
start.SetDateTime(&startString)
start.SetTimeZone(&timeZone)
newEvent.SetStart(start)

end := models.NewDateTimeTimeZone()
endString := endDateTime.Format(graphDateTimeFormat)
end.SetDateTime(&endString)
end.SetTimeZone(&timeZone)
newEvent.SetEnd(end)

addEventRequest, _ := client.Me().
    Events().
    ToPostRequestInformation(context.Background(), newEvent, nil)

viewStart := nowMidnight.Format(time.RFC3339)
viewEnd := nowMidnight.Add(time.Hour * 24).Format(time.RFC3339)
query := me.CalendarViewRequestBuilderGetQueryParameters{
    StartDateTime: &viewStart,
    EndDateTime:   &viewEnd,
    Select:        []string{"subject", "id"},
}

// Use the request builder to generate a regular
// request to /me/calendarview?startDateTime="start"&endDateTime="end"
eventsRequest, _ := client.Me().
    CalendarView().
    ToGetRequestInformation(context.Background(),
        &me.CalendarViewRequestBuilderGetRequestConfiguration{
            QueryParameters: &query,
        })

// Build the batch
batch := msgraphgocore.NewBatchRequest(client.GetAdapter())

// Force the requests to execute in order, so that the request for
// today's events will include the new event created.

// First request, no dependency
addEventRequestItem, _ := batch.AddBatchRequestStep(*addEventRequest)

// Second request, depends on addEventRequestId
eventsRequestItem, _ := batch.AddBatchRequestStep(*eventsRequest)
eventsRequestItem.DependsOnItem(addEventRequestItem)

batchResponse, _ := batch.Send(context.Background(), client.GetAdapter())

// De-serialize response based on known return type
event, _ := msgraphgocore.GetBatchResponseById[models.Eventable](
    batchResponse, *addEventRequestItem.GetId(),
    models.CreateEventFromDiscriminatorValue)
fmt.Printf("New event created with ID: %s\n", *(event.GetId()))

// For collections, must use the *CollectionResponseable class to deserialize
events, _ := msgraphgocore.GetBatchResponseById[models.EventCollectionResponseable](
    batchResponse, *eventsRequestItem.GetId(),
    models.CreateEventCollectionResponseFromDiscriminatorValue)
fmt.Printf("You have %d events on your calendar today\n", len(events.GetValue()))
```

---

## Implementing batching using BatchRequestContent, BatchRequestStep, and HttpRequestMessage

The following example shows how to use `BatchRequestContent`,`BatchRequestStep`, and `HttpRequestMessage` to send multiple requests in a batch and how to handle the limit of 20 with Microsoft Graph API requests. This example creates meeting links using the `onlineMeetings/createOrGet` endpoint for the specified user ID. You can use this example with other Microsoft Graph endpoints as well.

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Graph;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

public async void GenerateBatchedMeetingLink(List<ItemCollections> meetingLinksToBeGenerated)
{
    List<string> _joinWebUrls = new List<string>();
    //Total number of items per batch supported is 20
    int maxNoBatchItems = 20;
    try
    {
        //valid GraphAccessToken is required to execute the call
        var graphClient = GetAuthenticatedClient(GraphAccessToken);
        var events = new List<OnlineMeeting>();
        foreach (var item in meetingLinksToBeGenerated)
        {
            var externalId = Guid.NewGuid().ToString();
            var @event = new OnlineMeeting
            {
                StartDateTime = item.StartTime,
                EndDateTime = item.EndTime,
                Subject = "Test Meeting",
                ExternalId = externalId,

            };
            events.Add(@event);
        }
        // if the requests are more than 20 limit, we need to create multiple batches of the BatchRequestContent
        List<BatchRequestContent> batches = new List<BatchRequestContent>();
        var batchRequestContent = new BatchRequestContent(graphClient);
        foreach (OnlineMeeting e in events)
        {
            //create online meeting for particular user or we can use /me as well
            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Post, $"https://graph.microsoft.com/v1.0/users/{userID}/onlineMeetings/createOrGet")
            {
                Content = new StringContent(JsonConvert.SerializeObject(e), Encoding.UTF8, "application/json")
            };
            BatchRequestStep requestStep = new BatchRequestStep(events.IndexOf(e).ToString(), httpRequestMessage, null);
            batchRequestContent.AddBatchRequestStep(requestStep);
            if (events.IndexOf(e) > 0 && ((events.IndexOf(e) + 1) % maxNoBatchItems == 0))
            {
                batches.Add(batchRequestContent);
                batchRequestContent = new BatchRequestContent(graphClient);
            }
        }
        if (batchRequestContent.BatchRequestSteps.Count < maxNoBatchItems)
        {
            batches.Add(batchRequestContent);
        }

        if (batches.Count == 0 && batchRequestContent != null)
        {
            batches.Add(batchRequestContent);
        }

        foreach (BatchRequestContent batch in batches)
        {
            BatchResponseContent response = null;
            response = await graphClient.Batch.Request().PostAsync(batch);
            Dictionary<string, HttpResponseMessage> responses = await response.GetResponsesAsync();
            foreach (string key in responses.Keys)
            {
                HttpResponseMessage httpResponse = await response.GetResponseByIdAsync(key);
                var responseContent = await httpResponse.Content.ReadAsStringAsync();
                JObject eventResponse = JObject.Parse(responseContent);
                //do something below
                Console.WriteLine(eventResponse["joinWebUrl"].ToString());
            }
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.Message + ex.StackTrace);
    }
}


```
