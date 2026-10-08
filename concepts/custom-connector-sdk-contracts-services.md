---
title: "Microsoft 365 Copilot connectors SDK contract services"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: search
description: Learn about the Copilot connectors SDK contract services.
ms.date: 11/07/2024
ms.topic: article
---

# Copilot connectors SDK services

This article describes the services that are part of the contract protocol buffer files. Implement these services as part of the connector.

|Services |Description |
|:----------|:-------------|
|[ConnectorInfo](/graph/custom-connector-sdk-contracts-connectorinfo) |Includes APIs to get information about the connector. If you're using the Visual Studio extension, you can use the default implementation for this service without changes. |
|[ConnectionManagement](/graph/custom-connector-sdk-contracts-connectionmanagement) |Contains APIs that are called during the process of **custom connector connection creation** in the Microsoft 365 admin center. |
|[ConnectorCrawl](/graph/custom-connector-sdk-contracts-connectorcrawler) |Includes APIs that are called during a crawl. |
|[ConnectorOAuth](/graph/custom-connector-sdk-contracts-connectoroauth) |Service for OAuth flows such as refreshing access tokens during crawls. |

You can download the contract protocol buffer files from the Copilot connectors SDK [contracts](https://github.com/microsoftgraph/msgraph-connectors-sdk/tree/main/Contracts) page on GitHub.
