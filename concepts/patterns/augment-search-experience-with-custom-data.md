---
title: "Use Microsoft Graph to augment Microsoft Search with custom data"
description: "Learn about the Microsoft Graph integration pattern for bringing custom data into search experiences."
author: "OlgaPodo"
ms.localizationpriority: low
---

# Use Microsoft Graph to augment Microsoft Search with custom data

This article describes a common Microsoft Graph integration pattern for a business scenario that requires adding custom enterprise data to the Microsoft Search and Microsoft Copilot for Microsoft 365 experiences. The custom data is ingested into unstructured Microsoft 365 storage and added to various search indexes.

This non-interactive scenario has the following requirements:

- A data integration type, because it only provides custom data and doesn't use Microsoft 365 functionality in customer apps.
- An inbound data flow between the app and Microsoft 365.
- A high data volume for indexing.
- Data batching and scheduling for upload and ingestion, which results in increased data latency.

The best option for this scenario is to use Microsoft Graph connectors. The following diagram shows the architecture for this solution.

![A diagram that shows a third-party app authenticating with Microsoft Entra ID, connecting to Microsoft Graph, and exporting content to semantic search.](.././images/connectors.png)

## Solution components

The architecture for this solution includes the following components:

- Azure App Service, which lets you build and host web apps, scheduled jobs, and RESTful APIs in your preferred programming language, without having to manage infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo.
- Microsoft Entra ID, which is required to manage authentication for Microsoft Graph and supports delegated and application permissions to enable OAuth flow.
- Microsoft Graph RESTful APIs, including connectors, accessed via a single endpoint: `https://graph.microsoft.com`.
- A custom app that implements custom logic.

## Considerations

The following considerations support the use of this integration pattern:

- **Availability**: The client app periodically sends data via Microsoft Graph APIs. The non-interactive client app makes requests and uploads the data at a frequency controlled by the client environment and limited by Microsoft Graph connectors throttling.

- **Latency**: The client app uses the synchronous Microsoft Graph connectors APIs and expects a response, but some latency can occur depending on the network conditions and the load on the Microsoft Graph service.

- **Scalability**: The client app is limited to 30 connections with no more than 50,000,000 items per tenant, so scalability is limited. If the data volume is large, synchronous processing might become a challenge and a roadblock.

- **Solution complexity**: This solution can use connectors built by independent software vendors (ISVs), but if it accesses Microsoft Graph SDKs or Microsoft Graph APIs, it needs to serialize custom data into the required format for connectors. This provides flexibility but also increases the complexity. This solution can therefore range from low to medium complexity.

## Related content

- [Microsoft Graph connectors overview](/graph/connecting-external-content-connectors-overview)
- [Training: Build your first Microsoft Graph Data Connect application](/graph/data-connect-quickstart)
