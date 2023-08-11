---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this section you will add methods to [register the schema](../../connecting-external-content-manage-schema.md) for the connector.

## Register the schema

1. Add the following functions to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="RegisterSchemaSnippet":::

1. Replace the placeholder function `RegisterSchemaAsync` in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="RegisterSchemaSnippet":::

## Get the schema for a connection

1. Add the following function to the `GraphHelper` class in **GraphHelper.cs**.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Graph/GraphHelper.cs" id="GetSchemaSnippet":::

1. Replace the placeholder function `GetSchemaAsync` in **Program.cs** with the following.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="GetSchemaSnippet":::
