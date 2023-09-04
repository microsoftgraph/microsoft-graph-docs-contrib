---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this section you will add methods to [manage external connections](../../connecting-external-content-manage-connections.md).

## Create a connection

1. Add the following function to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="CreateConnectionSnippet":::

1. Replace the placeholder function `CreateConnectionAsync` in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="CreateConnectionSnippet":::

## Select an existing connection

1. Add the following function to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="GetConnectionsSnippet":::

1. Replace the placeholder function `SelectExistingConnectionAsync` in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="GetConnectionsSnippet":::

## Delete a connection

1. Add the following function to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="DeleteConnectionSnippet":::

1. Replace the placeholder function `DeleteCurrentConnectionAsync` in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="DeleteConnectionSnippet":::
