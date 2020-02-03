---
title: "Send a batch request"
description: "Provides instructions for creating a batch of API requests."
localization_priority: Normal
author: DarrelMiller
---
# Request Batching

Microsoft Graph SDKs have a set content classes to simplify how you create batch payloads and parse batch response payloads.

## Create a batch request

[Batching](../json-batching) is a way of combining multiple requests into a single HTTP request. This can be achieved by making a POST call with those requests as a single JSON payload to `\$batch` endpoint.

### BatchRequestContent

A component that simplifies creating the batch request payload. This class handles all the batch specific payload construction, you just need to create the individual requests and add them.

### BatchRequestStep

A component that represents a single request within the batch and enables assigning the request a unique identifier and specifying dependencies between requests.

### BatchResponseContent

A component to simplify the processing of batch responses by providing functionalities like getResponses, getResponseById, getResponsesIterator

## Simple Batching Example

This example shows how to request information about a user and and their calendar events in a single request. First create the `BatchResponseContent` object, then add requests to the content object.  Once all the requests have been added to the batch, you can then `POST` the content object to the `Batch` endpoint.

The `BatchResponseContent` that is returned can then be used to retrieve the individual responses.

# [C#](#tab/CS)

```csharp
var graphClient = new GraphServiceClient(authProvider);

IUserRequest userRequest = graphClient.Me.Request();
IUserEventsCollectionRequest eventsRequest = graphClient.Me.Events.Request();

BatchRequestContent batchRequestContent = new BatchRequestContent();

var userRequestId = batchRequestContent.AddBatchRequestStep(userRequest);
var eventsRequestId = batchRequestContent.AddBatchRequestStep(eventsRequest);

BatchResponseContent returnedResponse = await graphClient.Batch.Request().PostAsync(batchRequestContent);

// De-serialize response based on known return type
User user = await returnedResponse.GetResponseByIdAsync<User>(userRequestId);
UserEventsCollectionResponse events = await returnedResponse.GetResponseByIdAsync<UserEventsCollectionResponse>(eventsRequestId);
```

# [TypeScript](#tab/TypeScript)

```typescript

```

# [Java](#tab/Java)

```java
Request requestGetMe = new Request.Builder().url("https://graph.microsoft.com/v1.0/me/").build();
List<String> arrayOfDependsOnIdsGetMe = null;
MSBatchRequestStep stepGetMe = new MSBatchRequestStep("1", requestGetMe, arrayOfDependsOnIdsGetMe);

Request requestGetMePlannerTasks = new Request.Builder().url("https://graph.microsoft.com/v1.0/me/planner/tasks").build();
List<String> arrayOfDependsOnIdsGetMePlannerTasks = Arrays.asList("1");
MSBatchRequestStep stepMePlannerTasks = new MSBatchRequestStep("2", requestGetMePlannerTasks, arrayOfDependsOnIdsGetMePlannerTasks);

String body = "{" + 
		"\"displayName\": \"My Notebook\"" + 
		"}";
RequestBody postBody = RequestBody.create(MediaType.parse("application/json"), body);
Request requestCreateNotebook = new Request
	.Builder()
        .addHeader("Content-Type", "application/json")
	.url("https://graph.microsoft.com/v1.0/me/onenote/notebooks")
	.post(postBody)
	.build();
MSBatchRequestStep stepCreateNotebook = new MSBatchRequestStep("3", requestCreateNotebook, Arrays.asList("2"));

// Create MSBatch Request Content and get content
List<MSBatchRequestStep> steps = Arrays.asList(stepGetMe, stepMePlannerTasks, stepCreateNotebook);
MSBatchRequestContent requestContent = new MSBatchRequestContent(steps);
String content = requestContent.getBatchRequestContent();

// Make call to $batch endpoint
OkHttpClient client = HttpClients.createDefault(auth);
Request batchRequest = new Request
	.Builder()
	.url("https://graph.microsoft.com/v1.0/$batch")
	.post(RequestBody.create(MediaType.parse("application/json"), content))
	.build();
Response batchResponse = client.newCall(batchRequest).execute();

// Create MSBatch Response Content

MSBatchResponseContent responseContent = new MSBatchResponseContent(batchResponse);
Response responseGetMe = responseContent.getResponseById("1");

```
---


### Batches with dependent requests 

In this example we make two requests, but the second request is dependant on the first request completing.

# [C#](#tab/CS)

```csharp
```

# [TypeScript](#tab/TypeScript)

```typescript
// elem here is the input HTML element of type file
const serialBatching = async function(elem) {
	try {
		let file = elem.files[0];

        // Upload file
        let uploadProfilePhotoRequest = new Request("/me/photo/$value", {
			method: "PUT",
			headers: {
				"Content-type": file.type,
			},
			body: file,
		});

		let uploadProfilePhotoStep: BatchRequestStep = {
			id: "1",
			request: uploadProfilePhotoRequest,
		};

        // Download file
		let downloadProfilePhotoRequest = new Request("/me/photo/$value", {
			method: "GET",
		});

		let downloadProfilePhotoStep: BatchRequestStep = {
			id: "2",
			request: downloadProfilePhotoRequest,
			// Adding dependsOn makes this request wait until the dependency finishes
			// This download request waits until the upload request completes
			dependsOn: ["1"],
		};

		//Create instance by passing a batch request step
		let batchRequestContent = new MicrosoftGraph.BatchRequestContent([uploadProfilePhotoStep, downloadProfilePhotoStep]);

		//Extracting content from the instance
		let content = await batchRequestContent.getContent();

		//Making call to $batch end point with the extracted content
		let response = await client.api("/$batch").post(content);

		//Create instance with response from the batch request
		let batchResponseContent = new MicrosoftGraph.BatchResponseContent(response);

		//Getting response by id
		console.log(batchResponse.getResponseById(downloadId));

		//Getting all the responses
		console.log(batchResponseContent.getResponses());
	} catch (error) {
		console.error(error);
	}
};
```

---

### GET and POST contents from and to different workloads - Making parallel requests

# [C#](#tab/CS)

```csharp
```

# [TypeScript](#tab/TypeScript)

```typescript
const parallelBatching = async function() {
	try {
		let fileName = "test.pdf";
		let oneDriveFileRequest = new Request(`/me/drive/root:/${fileName}:/content`, {
			method: "GET",
		});

		let oneDriveFileStep: BatchRequestStep = {
			id: "1",
			request: oneDriveFileRequest,
		};

		let folderDetails = {
			name: "Testing Batch",
			folder: {},
		};
		let createFolder = new Request("/me/drive/root/children", {
			method: "POST",
			headers: {
				"Content-type": "application/json",
			},
			body: JSON.stringify(folderDetails),
		});

		let createFolderStep: BatchRequestStep = {
			id: "2",
			request: createFolder,
			dependsOn: ["1"],
		};

		let mailsRequest = new Request("/me/messages", {
			method: "GET",
		});

		let mailsRequestStep: BatchRequestStep = {
			id: "3",
			request: mailsRequest,
			dependsOn: ["2"],
		};

		//Create instance by passing a batch request step
		let batchRequestContent = new MicrosoftGraph.BatchRequestContent();

		// Dynamically adding requests to the batch content
		let fileDownloadId = batchRequestContent.addRequest(oneDriveFileStep);

		let createFolderId = batchRequestContent.addRequest(createFolderStep);

		let mailsId = batchRequestContent.addRequest(mailsRequestStep);

		// Dynamically removing unnecessary dependencies
		// NOTE: Passing second param empty removes all the dependencies for that request
		batchRequestContent.removeDependency("3", "2");

		// Dynamically removing unnecessary request. Removing a request automatically removes the dependencies in relevant dependents
		// Here download file dependency is removed from the onedrive create folder request
		batchRequestContent.removeRequest(fileDownloadId);

		// Now no requests depends on anything so the request will be made parallel in the service end
		// Extracting content from the instance
		let content = await batchRequestContent.getContent();

		//Making call to $batch end point with the extracted content
		let response = await client.api("/$batch").post(content);

		//Create instance with response from the batch request
		let batchResponse = new MicrosoftGraph.BatchResponseContent(response);

		//Getting iterator and looping through the responses iterator
		let iterator = batchResponse.getResponsesIterator();
		let data = iterator.next();
		while (!data.done) {
			console.log(data.value[0] + ":" + data.value[1]);
			data = iterator.next();
		}
	} catch (error) {
		console.error(error);
	}
};
```

---


### Create a folder in OneDrive and upload multiple files - Making batch request with all other request depend on one request


# [C#](#tab/CS)

```csharp
```

# [TypeScript](#tab/TypeScript)

```typescript
// elem here is the input HTML element of type file
const sameBatching = async function(elem) {
	try {
		let file1 = elem.files[0];
		let file2 = elem.files[1];

		let folderDetails = {
			name: "MyFiles",
			folder: {},
		};
		let createFolder = new Request("/me/drive/root/children", {
			method: "POST",
			headers: {
				"Content-type": "application/json",
			},
			body: JSON.stringify(folderDetails),
		});

		let createFolderStep: BatchRequestStep = {
			id: "1",
			request: createFolder,
		};

		let uploadFileRequest1 = new Request(`/me/drive/root:/MyFiles/${file1.name}:/content`, {
			method: "PUT",
			headers: {
				"Content-type": file1.type,
			},
			body: file1,
		});

		let uploadFileStep1: BatchRequestStep = {
			id: "2",
			request: uploadFileRequest1,
			dependsOn: ["1"],
		};

		let uploadFileRequest2 = new Request(`/me/drive/root:/MyFiles/${file2.name}:/content`, {
			method: "PUT",
			headers: {
				"Content-type": file2.type,
			},
			body: file2,
		});

		let uploadFileStep2: BatchRequestStep = {
			id: "3",
			request: uploadFileRequest2,
			dependsOn: ["1"],
		};

		let batchRequestContent = new MicrosoftGraph.BatchRequestContent([createFolderStep, uploadFileStep1, uploadFileStep2]);

		let content = await batchRequestContent.getContent();

		let response = await client.api("/$batch").post(content);
		let batchResponseContent = new MicrosoftGraph.BatchResponseContent(response);
		console.log(batchResponseContent.getResponses());
	} catch (error) {
		console.error(error);
	}
};
```

---

## Limitations of Batch

Refer, [JSON Batching](https://developer.microsoft.com/en-us/graph/docs/concepts/json_batching), [Known Issues](https://developer.microsoft.com/en-us/graph/docs/concepts/known_issues#json-batching) documents for current constraints in the batching