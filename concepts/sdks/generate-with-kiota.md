---
title: "Generate Microsoft Graph client libraries with Kiota"
description: "Learn how to use Kiota to generate custom client libraries for Microsoft Graph."
author: jasonjoh
---

# Generate Microsoft Graph client libraries with Kiota

Microsoft publishes ready-to-use SDKs for accessing Microsoft Graph APIs in many popular programming languages. These SDKs are a convenient way to access Microsoft Graph, just install the SDK with the appropriate package manager, and start coding. However, due to the size and scope of the Microsoft Graph REST API, these libraries are fairly large. For applications where overall installation size is a concern, this large size raises a concern, especially if the application only uses a subset of Microsoft Graph. In this case, generating a custom API client with Kiota that targets only the parts of Microsoft Graph used by your application can reduce the overall installation size of your app.

## Considerations for using generated clients vs Microsoft SDKs

Using a Kiota-generated client has some advantages and disadvantages over using the Microsoft-published SDKs.

### Advantages

- Kiota-generated clients use the same conventions and patterns as the Microsoft-published SDK. If you're already familiar with using the Microsoft SDK, using a generated library gives a similar experience.
- Generated clients are compatible with the Microsoft Graph core library portion of the Microsoft-published SDK, so you can add a dependency to the core library if you need to use features such as the [page iterator](paging.md), [batch requests](batch-requests.md), or [large file uploads](large-file-upload.md).

### Disadvantages

- The end result of client generation with Kiota is source files, which must be added to your project. This increases the overall size of your code base.
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
var graphClient = new Microsoft.Graph.GraphServiceClient(...);

var taskLists = await graphClient.Me.Todo.Lists.GetAsync();
```

Alternatively, the app could use a Kiota-generated library to call the same API. For a client generated with the following command:

```dotnetcli
kiota generate --openapi https://aka.ms/graph/v1.0/openapi.yaml --include-path /me/todo/** --language CSharp --class-name TaskClient --namespace-name MyTaskApp.Client --output ./src/MyTaskApp/Client
```

The equivalent code looks like:

```csharp
var tasksClient = new MyTaskApp.Client.TaskClient(...);

var taskLists = await tasksClient.Me.Todo.Lists.GetAsync();
```

## Related content

- [Welcome to Kiota](/openapi/kiota/overview)
- [Using the Kiota tool](/openapi/kiota/using)
