---
title: "Microsoft Graph connectors SDK overview"
ms.author: rchanda
author: rchanda1392
manager: harshkum
ms.audience: Admin
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
ms.date: 07/01/2022
description: "Microsoft Graph connectors SDK overview"
---

# Microsoft Graph connectors SDK overview

The Microsoft Graph connectors SDK simplifies building high-quality, efficient, and resilient connectors in scenarios where you can't find a pre-built connector for the data source you want to index into Microsoft Graph.

The SDK includes the framework and contract components to help you write the code and other tools to test the connector code.

The connectors SDK enables you to create custom Microsoft Graph connectors directly within the Visual Studio integrated development environment (IDE). It also guides you through the process and provides everything you need to build, debug, and deploy your custom connector.

## Components

The connectors SDK includes the following components:

1. **Custom connector template**: if you wish to develop your custom connector in C#, you can download our template from Visual Studio Marketplace and get started quickly. You may also choose to develop your custom connector in any of the languages in this [list](https://grpc.io/docs/languages/).

2. **Contracts**: these are [gRPC](https://grpc.io/docs/what-is-grpc/) protocol buffer files that contain the contracts for interaction between the Microsoft platform (Microsoft Graph connector agent) and your custom connector code.

3. **Microsoft Graph connector agent**: the connector agent is a lightweight software that takes care of connector orchestration capabilities and coordination between the Microsoft 365 admin center and your custom connector code.

    Download the latest version of the connector agent from [this location](https://aka.ms/gcadownload/) and run the installation configuration assistant. You can learn more about the connector agent and system requirements in the following [link](/MicrosoftSearch/graph-connector-agent/).

4. **Connectors SDK test utility**: includes pre-built test scenarios that you can use to test your custom connector code and communicate with the connector agent platform.

## Microsoft Graph connector agent capabilities

The connector agent is built on the same robust connector platform used for running Microsoft's [built-in connectors](https://www.microsoft.com/microsoft-search/connectors/?publisher=Microsoft&category=).

It includes the following capabilities:

1. **Get data from connector**: the agent can connect to your custom connector to get data from the source using the logic implemented by your connector.

2. **Microsoft 365 admin center integration**: the agent enables you to configure, manage and monitor your custom connectors through the [Microsoft 365 admin center](https://admin.microsoft.com/adminportal/home#/MicrosoftSearch/Connectors/add).

3. **Crawl scheduling & management**: the agent is capable of crawling the data source through full crawls and incremental crawls. Full crawls (list based or graph based) go through your entire data periodically at an interval defined by you. Incremental crawls are more frequent and they crawl the data source from the previous timestamp/checkpoint at an interval defined by you.

4. **Delete, difference and cycle detection**: the agent is capable of detecting items deleted from your data source based on the items sent by your connector during periodic full crawls. The agent then takes care of deleting the item from the Microsoft index as well.

    The agent also detects items that have changed since the last crawl by computing a hash of the item and comparing with the hash of the item seen previously. To make crawls faster, the agent sends the data to be indexed only when the item has changed.

    The agent also detects duplicate items that arise from data sources that have items linked by graph structure (like websites) and skips crawling these items.

5. **Identity mapping**: the connector agent brings the capability of stamping the Access Control Lists (ACLs) on your data for enabling security trimming. You can enable security trimming based on Azure Active Directory (Azure AD) or ACLs from your data source.

6. **Graph ingestion**: the agent ingests the data into Microsoft Graph after receiving it from your custom connector.

>[!Note]
> The following capabilities are not currently available:
> a. Graph-based data source traversal during crawls, for example: traversing through folder structures.
> b. Ability to manage search permissions based on access control from your data source.

You can get started in C# with our sample connector or in other supported languages using the contracts from the [Microsoft Graph connectors SDK page in GitHub](https://github.com/microsoftgraph/msgraph-connectors-sdk).

## Next steps

* [Learn more about the contracts](/concepts/custom-connector-sdk-contracts-services).

* [Develop your first custom connector in C#](/concepts/custom-connector-sdk-sample-overview).

* [Develop your custom connector in other languages](/concepts/custom-connector-sdk-other-languages).
