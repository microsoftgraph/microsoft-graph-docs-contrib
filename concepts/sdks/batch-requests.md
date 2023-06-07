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

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/BatchRequests.cs" id="SimpleBatchSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/batchRequests.ts" id="SimpleBatchSnippet":::

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

:::code language="go" source="./snippets/go/src/snippets/batch_requests.go" id="SimpleBatchSnippet":::

---

## Batches with dependent requests

This example shows how to send multiple requests in a batch that are dependent on each other. The requests will be run by the service in the order specified by the dependencies. This example adds an event with a start time during the current day to the user's calendar and gets the user's calendar view for the current day. To make sure that the calendar review returned includes the new event created, the request for the calendar view is configured as dependent on the request to add the new event. This ensures that the add event request will execute first.

> [!NOTE]
> If the add event request fails, the get calendar view request will fail with a `424 Failed Dependency` error.

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/BatchRequests.cs" id="DependentBatchSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/batchRequests.ts" id="DependentBatchSnippet":::

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

:::code language="go" source="./snippets/go/src/snippets/batch_requests.go" id="DependentBatchSnippet":::

---
