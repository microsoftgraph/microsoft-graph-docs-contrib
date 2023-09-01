---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this section you will configure the Microsoft Graph SDK client to use app-only authentication.

## Create a helper class

1. Create a new directory in the **PartsInventoryConnector** directory named **Graph**.

1. Create a file in the **Graph** directory named **GraphHelper.cs** and add the following `using` statements.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="UsingsSnippet":::

1. Add a namespace and class definition.

    ```csharp
    namespace PartsInventoryConnector.Graph;

    public static class GraphHelper
    {
    }
    ```

1. Add the following code to the `GraphHelper` class to configure a `GraphServiceClient` with app-only authentication.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="GraphInitializationSnippet":::

1. Replace the empty `InitializeGraph` function in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="InitializeGraphSnippet":::
