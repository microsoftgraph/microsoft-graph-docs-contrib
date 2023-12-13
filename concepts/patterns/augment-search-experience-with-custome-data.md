---
title: "Use Microsoft Graph to augment the search experience with custom data"
description: "Learn about the Microsoft Graph integration pattern for bringing custom data into search experiences."
author: "OlgaPodo"
ms.localizationpriority: low
---

# Use Microsoft Graph to augment the search experience with custom data

This article describes a common Microsoft Graph integration pattern for a business scenario that requires adding custom enterprise data to the Microsoft Search and Microsoft Copilot for Microsoft 365 experiences. The custom data is ingested into unstructured Microsoft 365 storage and added to various search indexes.

This non-interactive scenario has the following requirements:

- A data integration type, because it only provides custom data and doesn't use Microsoft 365 functionality in customer apps.
- An inbound data flow between the app and Microsoft 365.
- A high data volume for indexing.
- Data batching and scheduling for upload and ingestion, which results in increased data latency.

The best option for this scenario is to use Microsoft Graph connectors. The following diagram shows the architecture for this solution.

![A diagram that shows a third-party app authenticating with Microsoft Entra, connecting to Microsoft Graph, and exporting content to semantic search.](.././images/graph-arc-center/Connectors.png)

## Components

The architecture uses the following components:

- Azure App Service, which lets you build and host web apps, scheduled jobs, and RESTful APIs in your preferred programming language, without managing infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo.
- Azure Active Directory, which is required to manage authentication for the Microsoft Graph and supports Delegated and Application permissions to enable OAuth flow.
- Microsoft Graph AGS, which is a single gateway, <https://graph.microsoft.com>, to access Microsoft Graph RESTful HTTP APIs including connectors.
- Custom app, which implements custom logic and API orchestration.

## Considerations

**Availability**: The client app periodically sends data via Graph APIs. The non-interactive client app will make requests and upload the data at a frequency controlled by the client environment and limited by Connectors throttling.

**Latency**: The client app uses the synchronous Connectors APIs and expects a response, but there may be some latency depending on the network conditions and the load on the Graph service.

**Scalability**: The client app is limited by 30 connections with no more than 50,000,000 items per tenant, so scalability is limited. In addition, if the data volume is large, synchronous processing may become a challenge and a roadblock.

**Solution complexity**: This solution can leverage connectors built by independent software vendors (ISVs), but if it directly accesses Microsoft Graph SDK or Microsoft Graph APIs, it needs custom code to serialize custom data into the format required by connectors. This gives it much flexibility but also increases the complexity for developers. Therefore, this solution can range from low to medium in complexity.

## See also

- [Microsoft Graph connectors overview](./../connecting-external-content-connectors-overview.md)
- [Training: build your first Microsoft Graph Data Connect application](/training/modules/data-connect-quickstart)
