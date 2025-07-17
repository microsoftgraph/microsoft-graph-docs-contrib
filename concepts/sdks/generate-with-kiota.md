---
title: "Generate Microsoft Graph client libraries with Kiota"
description: "Learn how to use Kiota to generate custom client libraries for Microsoft Graph."
author: jasonjoh
ms.date: 11/07/2024
---

# Generate Microsoft Graph client libraries with Kiota

Microsoft publishes ready-to-use SDKs for accessing Microsoft Graph APIs in many popular programming languages. These SDKs are a convenient way to access Microsoft Graph, just install the SDK with the appropriate package manager, and start coding. However, due to the size and scope of the Microsoft Graph REST API, these libraries are fairly large. For applications where overall installation size is a concern, this large size raises a concern, especially if the application only uses a subset of Microsoft Graph. In this case, generating a custom API client with Kiota that targets only the parts of Microsoft Graph used by your application can reduce the overall installation size of your app.

## Considerations for using generated clients vs Microsoft SDKs

Using a Kiota-generated client has some advantages and disadvantages over using the Microsoft-published SDKs.

### Advantages

- Kiota-generated clients use the same conventions and patterns as the Microsoft-published SDK. If you're already familiar with using the Microsoft SDK, using a generated library gives a similar experience.
- Generated clients are compatible with the Microsoft Graph core library portion of the Microsoft-published SDK, so you can add a dependency to the core library if you need to use features such as the [page iterator](paging.md), [batch requests](batch-requests.md), or [large file uploads](large-file-upload.md).

### Disadvantages

- The end result of client generation with Kiota is source files, which must be added to your project. This increases the overall size of your code base. However, this is likely minimal compared to the overall size of the full Microsoft Graph SDK.
- If your application needs to call other Microsoft Graph APIs in the future, the client must be regenerated to add the required models and request builders.

## Generating a client

To generate a Microsoft Graph client with Kiota, you must provide an OpenAPI description for Microsoft Graph. You can find OpenAPI descriptions for Microsoft Graph here:

- v1.0 API: `https://aka.ms/graph/v1.0/openapi.yaml`
- beta API: `https://aka.ms/graph/beta/openapi.yaml`

In order to reduce the overall size of the generated client, you need to identify the Microsoft Graph APIs used by your app, and use the `--include-path` or `--exclude-path` parameters to the Kiota [generate](/openapi/kiota/using#client-generation) command to only generate the models and request builders for those APIs.

For example, consider an application that uses the [To Do APIs](/graph/api/resources/todo-overview) to manage a user's To Do tasks and task lists. All of the required APIs, such as [List task lists](/graph/api/todo-list-lists) and [Create task](/graph/api/todotasklist-post-tasks), are accessed via URLs under the `/me/todo` request URL.

- List task lists: `GET /me/todo/lists`
- Create task: `POST /me/todo/lists/{listId}/tasks`

In this case, you can use the `--include-path` parameter to only generate models and request builders for APIs under the `/me/todo` path:

```dotnetcli
kiota generate --openapi https://aka.ms/graph/v1.0/openapi.yaml --include-path /me/todo/** ...
```

## Example

Let's explore an example of generating a client for C# to call the To Do APIs. Using the [Microsoft Graph .NET client library](https://github.com/microsoftgraph/msgraph-sdk-dotnet), the app could get the signed-in user's task lists with the following code.

```csharp
using Azure.Identity;
using Microsoft.Graph;

var credential = new DeviceCodeCredential();
var graphClient = new GraphServiceClient(credential);

var taskLists = await graphClient.Me.Todo.Lists.GetAsync();
```

Alternatively, the app could use a Kiota-generated library to call the same API. For a client generated with the following command:

```dotnetcli
kiota generate --openapi https://aka.ms/graph/v1.0/openapi.yaml --include-path /me/todo/** --language CSharp --class-name TaskClient --namespace-name MyTaskApp.Client --output ./src/MyTaskApp/Client
```

The equivalent code looks like:

```csharp
using Azure.Identity;
using Microsoft.Kiota.Authentication.Azure;
using Microsoft.Kiota.Http.HttpClientLibrary;
using MyTaskApp.Client;

// The auth provider will only authorize requests to
// the allowed hosts, in this case Microsoft Graph
var allowedHosts = new [] { "graph.microsoft.com" };
var graphScopes = new [] { "User.Read" };

var credential = new DeviceCodeCredential();
var authProvider = new AzureIdentityAuthenticationProvider(credential, allowedHosts, scopes: graphScopes);
var adapter = new HttpClientRequestAdapter(authProvider);
var taskClient = new TaskClient(adapter);

var taskLists = await tasksClient.Me.Todo.Lists.GetAsync();
```

### Using features from core library

Getting the user's task lists could return a [paged response](../paging.md). The Microsoft Graph core libraries provide a [page iterator](paging.md) class developers can use to page through the collection of task lists.

For example, in C#, add a dependency to [Microsoft.Graph.Core](https://github.com/microsoftgraph/msgraph-sdk-dotnet-core) (`dotnet add package Microsoft.Graph.Core`), then use the `PageIterator` class to page through the collection.

```csharp
using MyTaskApp.Client;
using MyTaskApp.Client.Models;
using Microsoft.Graph;

// Using adapter and taskLists from previous example
var pageIterator = PageIterator<TodoTaskList, TodoTaskListCollectionResponse>
    .CreatePageIterator(
        adapter,
        taskLists,
        (taskList) =>
        {
            Console.WriteLine(taskList.DisplayName);
            return true;
        });

await pageIterator.IterateAsync();
```

## Related content

- [Welcome to Kiota](/openapi/kiota/overview)
- [Using the Kiota tool](/openapi/kiota/using)
