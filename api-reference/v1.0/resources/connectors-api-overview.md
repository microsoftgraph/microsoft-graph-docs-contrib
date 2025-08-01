---
title: "Use the Microsoft 365 Copilot connectors API"
description: "Use the Copilot connectors API to index external data that powers intelligent experiences in Microsoft 365."
ms.localizationpriority: high
author: "snlraju-msft"
ms.subservice: "search"
doc_type: conceptualPageType
ms.date: 05/29/2024
---

# Use the Copilot connectors API

You can use Microsoft 365 Copilot connectors (formerly Microsoft Graph connectors) to bring data from external services into Microsoft Graph. The Copilot connectors API enables you to index external data in order to power intelligent experiences in Microsoft 365, such as [Copilot](/microsoft-365-copilot/microsoft-365-copilot-overview) and [Microsoft Search](/microsoftsearch/overview-microsoft-search).

Requests to index data are performed on behalf of an application without the presence of a signed-in user via an [access token with application permission](/graph/auth-v2-service).

## Build a custom Copilot connector

Building a custom Copilot connector involves four steps:

1. Create an Entra ID (formerly known as Azure Active Directory) app registration. Along with the request to Microsoft Graph, you submit the name of the app registration and API permissions that your app needs. Microsoft Graph responds with information about the newly created app registration.
2. Create an external connection. Each connection requires a unique ID, name, and a description.
3. Create the schema for the external connection. The schema defines the shape of external content that you'll ingest through this Microsoft Graph connection. Creating the schema is a long-running operation. After you submit the schema to create the connection, Microsoft Graph responds with a URL that you can use to check the status of the operation. The schema is being provisioned as long as the operation status is `inprogress`. When provisioning completes, the operation will return a `completed` status.
4. Ingest external content. For each external item, extract it from the source content repository, transform it so that it matches the schema for your external connection, and submit it to Microsoft Graph as an external item. Along with the item, include information about who's allowed to access it, also known as the access control list (ACL).

The following is a sequence diagram that illustrates the four steps to build a Copilot connector.

![A diagram that shows the four steps to build a Copilot connector](../images/graph-connectors-sequence-diagram.png)

## Common use cases

The following table lists common use cases for the Copilot connectors API.

| Use cases                                        | REST resources                              | See also |
|:-------------------------------------------------|:--------------------------------------------|:--|
| **Configuration actions**                        |                                             |   |
| Create, update, or delete a connection           | [externalConnection](externalconnectors-externalconnection.md) | [externalConnection methods](externalconnectors-externalconnection.md#methods) |
| Register a schema for the external data          | [schema](externalconnectors-schema.md)                         | [schema methods](externalconnectors-schema.md#methods) |
| **Indexing actions**                             |                                             |   |
| Add, update or delete a custom item in the index | [externalItem](externalconnectors-externalitem.md)             | [externalItem methods](externalconnectors-externalitem.md#methods) |

## Known limitations

The following are current known limitations:

- An application is limited to 25 concurrent operations on a connection.
- Maximum size of an `externalItem` entity is 4 MB.

## Related content

- [Copilot connectors overview](/graph/connecting-external-content-connectors-overview)