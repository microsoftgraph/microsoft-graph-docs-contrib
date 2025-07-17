---
title: "Microsoft 365 Copilot  connectors SDK overview"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: search
description: "Use the Microsoft 365 Copilot connectors SDK to create custom Copilot connectors."
ms.date: 11/07/2024
---

# Copilot connectors SDK overview

The Microsoft 365 Copilot connectors (formerly Microsoft Graph connectors) SDK simplifies the process of building high-quality, efficient, and resilient connectors for data source that don't have a prebuilt connector, but that you want to index into Microsoft Graph.

The SDK includes the framework and contract components to help you write the code and the tools to test your code.

The connectors SDK enables you to create custom Copilot connectors directly within the Visual Studio integrated development environment (IDE). It provides everything you need to build, debug, and deploy your custom connector.

Items ingested through connections built with the SDK consume your item quota. To learn more about how to determine how much item quota you have and how to purchase more quota, see [licensing requirements and pricing](/microsoftsearch/licensing). 

## Components

The connectors SDK includes the following components:

- **Custom connector template**: If you want to [develop your custom connector in C#](/graph/custom-connector-sdk-sample-create), you can download the template from Visual Studio Marketplace and get started quickly. You can also choose to develop your custom connector in any of the languages in this [list](https://grpc.io/docs/languages/).

- **Contracts**: Contracts are [gRPC](https://grpc.io/docs/what-is-grpc/) protocol buffer files that contain the contracts for interaction between the Microsoft platform (Microsoft Graph connector agent) and your custom connector code.

- **Microsoft Graph connector agent**: A lightweight software component that manages connector capabilities and coordinates between the Microsoft 365 admin center and your custom connector code.

    [Download the latest version](https://aka.ms/gca/) of the connector agent and run the installation configuration assistant. For more information, see [Microsoft Graph connector agent](/MicrosoftSearch/graph-connector-agent/).

- **Connectors SDK test utility**: Includes prebuilt test scenarios that you can use to test your custom connector code and communicate with the connector agent platform.

## Microsoft Graph connector agent capabilities

The connector agent is built on the same robust connector platform that is used to run the Microsoft [built-in connectors](https://www.microsoft.com/microsoft-search/connectors/?publisher=Microsoft&category=).

It includes the following capabilities:

- **Get data from connector**: The agent can connect to your custom connector to get data from the source using the logic implemented by your connector.

- **Microsoft 365 admin center integration**: The agent enables you to configure, manage, and monitor your custom connectors through the [Microsoft 365 admin center](https://admin.microsoft.com/adminportal/home#/MicrosoftSearch/Connectors/add).

- **Crawl scheduling and management**: The agent is capable of crawling the data source through full crawls and incremental crawls. Full crawls (list-based or Microsoft Graph-based) go through your entire data periodically at an interval defined by you. Incremental crawls are more frequent and they crawl the data source from the previous timestamp/checkpoint at an interval defined by you.

- **Delete, difference, and cycle detection**: The agent is capable of detecting items deleted from your data source based on the items sent by your connector during periodic full crawls. The agent then takes care of deleting the item from the Microsoft index as well.

    The agent also detects items that changed since the last crawl by computing a hash of the item and comparing it with the hash of the item seen previously. To make crawls faster, the agent sends the data to be indexed only when the item changes.

    The agent also detects duplicate items that arise from data sources that have linked items (like websites) and skips crawling these items.

- **Identity mapping**: The connector agent enables the stamping of Access Control Lists (ACLs) on your data to enable security trimming. You can enable security trimming based on Microsoft Entra ID or ACLs from your data source.

- **Microsoft Graph ingestion**: The agent ingests the data into Microsoft Graph after receiving it from your custom connector.

>[!Note]
> The following capabilities are not currently available:
> - Graph-based data source traversal during crawls; for example, traversing through folder structures.
> - The ability to manage search permissions based on access control from your data source.

You can get started in C# with our [sample connectors](https://github.com/microsoftgraph/msgraph-connectors-sdk/tree/main/C%23%20samples) or in other supported languages using the contracts from the [Copilot connectors SDK page in GitHub](https://github.com/microsoftgraph/msgraph-connectors-sdk).

## Next steps

* [Learn more about the contracts](/graph/custom-connector-sdk-contracts-services).
* [Develop your first custom connector in C#](/graph/custom-connector-sdk-sample-overview).
* [Develop your custom connector in other languages](/graph/custom-connector-sdk-other-languages).
* [Download a CSV connector sample with simple use cases](https://github.com/microsoftgraph/msgraph-connectors-sdk/tree/main/C%23%20samples/CsvConnector)
* [Download a GitHub connector sample with advanced use cases](https://github.com/microsoftgraph/msgraph-connectors-sdk/tree/main/C%23%20samples/GithubConnector)
