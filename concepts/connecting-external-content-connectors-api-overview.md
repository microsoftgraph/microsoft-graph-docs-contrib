---
title: "Work with the Microsoft 365 Copilot connectors API"
description: "Use the Copilot connectors API to build custom connectors that bring external data into Microsoft Graph to enhance Microsoft 365 intelligent experiences."
author: mecampos
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: search
ms.date: 11/07/2024
ms.topic: how-to
---

# Work with the Copilot connectors API

Microsoft 365 Copilot connectors (formerly Microsoft Graph connectors) bring external data into Microsoft Graph and enhance Microsoft 365 intelligent experiences. You might want to build a custom connector to integrate with services that aren't available as connectors built by Microsoft. To build custom connectors, you use the Copilot connectors REST API. Items ingested through connections built with the APIs consume your item quota. For more information about how to determine how much item quota you have and purchasing additional quota, see [licensing requirements and pricing](/microsoftsearch/licensing).

![Image showing the external data coming trough different types of connectors to Microsoft Graph](./images/connectors-images/api-overview.png)

You can use the Copilot connectors API to:

1. Create and manage external data connections.
2. Define and register the schema of the external data types.
3. Ingest external data items into Microsoft Graph.
4. Sync external groups.

## Create and manage external data connections

The [externalConnection](/graph/api/resources/externalconnectors-externalconnection) resource (external connection API) is a logical container for your external data that you can manage as a single unit.

For more information, see [Create, update, and delete connections in Microsoft Graph](connecting-external-content-manage-connections.md).

## Define and register the schema of the external data types

The connection [schema](/graph/api/resources/externalconnectors-schema) (schema API) determines how your content is used in various Microsoft 365 experiences. The schema is a flat list of all the properties that you plan to add to the connection along with their attributes, labels, and aliases. You must register the schema before ingesting items into Microsoft Graph.

For more information, see [Register and update schema for the Microsoft Graph connection](connecting-external-content-manage-schema.md).

## Ingest external data items into Microsoft Graph

Items added by your application to the Microsoft Search service are represented by the [externalItem](/graph/api/resources/externalconnectors-externalitem) resource (external item API) in Microsoft Graph.

For more information, see [Create, update, and delete items added by your application through Copilot connectors](connecting-external-content-manage-items.md).

## Sync external groups

Items in the external service can be granted or denied access through ACL to different types of non-Microsoft Entra groups. For example, Salesforce items might have permission sets and profiles, while ServiceNow items might have local groups. When you ingest these items into Microsoft Graph, you need to honor these ACLs.

You can use the external group API to set permissions on external items ingested into Microsoft Graph. An [externalGroup](/graph/api/resources/externalconnectors-externalgroup) represents a non-Microsoft Entra group or group-like construct and determines permissions on the content in your external data source.

For more information, see [Use external groups to manage permissions to Microsoft Graph connectors data sources](connecting-external-content-external-groups.md).

## Next step

> [!div class="nextstepaction"]
> [Build a custom connector](/graph/connecting-external-content-build-quickstart)
