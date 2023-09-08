---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this section you will add methods to [add or delete items](../../connecting-external-content-manage-items.md) to the connector.

## Upload or delete items

1. Add the following function to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="AddOrUpdateItemSnippet":::

1. Add the following function to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="DeleteItemSnippet":::

1. Replace the placeholder function `UpdateItemsFromDatabaseAsync` in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="UpdateItemsFromDatabaseSnippet":::
