---
title: "Build your first custom Microsoft Graph connector"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn how to use the Microsoft Graph connectors SDK to build your first custom connector."
---

# Build your first custom Microsoft Graph connector

Microsoft Graph connectors enable you to add your own data into Microsoft Graph and have it power various Microsoft 365 experiences.
The following set of articles show you how to use the [Microsoft Graph connectors SDK](/graph/custom-connector-sdk-overview) to create a custom connector in C# and use it to power Microsoft Search. This custom connector uses a sample data appliance parts inventory in a CSV file for the Contoso Appliance Repair organization.

>[!Note]
>If you want to use a language other than C# to build your connector, see [Build a connector using other languages](/graph/custom-connector-sdk-other-languages).

## How does the custom connector work?

The sample code included in the [Develop your connector](/graph/custom-connector-sdk-sample-create) section creates a gRPC server that runs the custom connector on your virtual machine. Your custom connector code is responsible for fetching the data from the data source which must be accessible from your virtual machine. A gRPC client from the [Microsoft Graph connector agent](/microsoftsearch/graph-connector-agent) running on the same computer makes requests over gRPC to the server to fetch the required response. The Microsoft Graph connector agent integrates the custom connector with the Microsoft 365 admin center, ingests the content into Microsoft Graph and performs other platform tasks through the orchestration framework. For details on the platform tasks, see [connector agent capabilities](/graph/custom-connector-sdk-overview#microsoft-graph-connector-agent-capabilities).

![A diagram of the architecture of an SDK-based connector](images/connectors-sdk/architecture.png)

## Next steps

* [Develop your connector](/graph/custom-connector-sdk-sample-create)
