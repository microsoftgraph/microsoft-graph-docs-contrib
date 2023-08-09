---
title: "Create, update, and delete connections in Microsoft Graph"
description: "Learn how to use Microsoft Graph to create and manage connections. Includes a table of connection states and the operations available in each state."
ms.localizationpriority: high
author: mecampos
doc_type: conceptualPageType
ms.prod: search
---
<!---<author of this doc: rsamai>--->

# Create, update, and delete connections in Microsoft Graph

The Microsoft Graph connectors platform offers an intuitive way to add your external data into Microsoft Graph. A connection is a logical container for your external data that an administrator can manage as a single unit.

After a connection has been created, you can add your content from any external data source such as an on-premises content source or an external SaaS service. You can only view and manage the connections that you [created](/graph/api/externalconnectors-external-post-connections) or were explicitly authorized to manage. A search admin can view and manage all the connections in the tenant from the Modern Admin Center.

<!-- markdownlint-disable MD036 -->
![Sample custom helpdesk system Tickets Connector structure.](./images/connectors-images/connecting-external-content-manage-connections-connector-structure.png)

*Sample custom helpdesk system Tickets Connector structure.*

![Admin view of connections including the custom Tickets Connector.](./images/connectors-images/connecting-external-content-manage-connections-admin-view.svg)

*Admin view of connections including the custom Tickets Connector.*

<!-- markdownlint-enable MD036 -->

You can model a connection any way you want, but creating one connection for every instance of your connector is the most common model. For example, each time that you [set up the Microsoft Windows file share connector](/en-us/microsoftsearch/configure-connector), a new connection is created. You can also create a single connection to add all items from your data source. For example, you can create a single connection to add all the tickets and incidents across multiple teams from your helpdesk system.

## States and operations

Your connection can exist in one of the following states.

| State             | Description                |
|-------------------|----------------------------|
| **Draft**         | An empty connection is provisioned. The data source, schema, or any settings have not been configured yet. |
| **Ready**         | The connection is provisioned with registered schema and is ready for ingestion. |
| **Obsolete**      | This occurs when a dependent feature, such as an API, has been deprecated. Deleting the connection is the only valid operation. |
| **LimitExceeded** | If you reach the maximum limit of a single connection or the tenant level quota across all connections, you cannot add more items until you exit the state. |

The following table specifies which operations are available in each state.

| Operation         | Draft              | Ready              | Obsolete           | LimitExceeded      |
|-------------------|--------------------|--------------------|--------------------|--------------------|
| Create connection | :x:                | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| Read connection   | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Update connection | :heavy_check_mark: | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| Delete connection | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Create schema     | :heavy_check_mark: | :x:                | :x:                | :x:                |
| Read schema       | :x:                | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Update schema     | :x:                | :x:                | :x:                | :x:                |
| Delete schema     | :x:                | :x:                | :x:                | :x:                |
| Create item       | :x:                | :heavy_check_mark: | :x:                | :x:                |
| Read item         | :x:                | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Update item       | :x:                | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| Delete item       | :x:                | :heavy_check_mark: | :x:                | :heavy_check_mark: |

A connection allows your application to [define a schema](/graph/api/externalconnectors-externalconnection-post-schema) for items that will be indexed, and it provides an endpoint for your service to add, update, or delete items from the index. 

The first step for an application to add items to the search index is to create a connection.

## Create a connection

Before an application can add items to the search index, it must create and configure a connection:

1. [Create a connection](/graph/api/externalconnectors-external-post-connections) with a unique ID, display name, and description.
1. [Register a schema](/graph/api/externalconnectors-externalconnection-post-schema) to define the fields that will be included in the index.
   > **Note:** For information about updating the schema for an existing connection, see [Schema update capabilities](/graph/connecting-external-content-manage-schema#schema-update-capabilities).

## Connection settings
You can configure the default connection settings for each enabled content experience. When enabled, these settings affect the content experiences.

### Search settings
You can define how search results are displayed in the Microsoft Search results page by supplying the default search display templates for your content in [searchSettings](/graph/api/resources/externalconnectors-searchsettings). A set of search display templates can be used to display distinct kinds of search results differently. A search display template has a result layout built using Adaptive Cards and rules that specify one or more conditions. When these conditions are met, the layout will be applied to the search result and displayed on the results page.

### Activity settings
In [activity settings](/graph/api/resources/externalconnectors-activitysettings), you can provide a way for Microsoft 365 apps to detect **share activity**, which will enable your content to be recommended to users who interact with that content the most. The way to do this is to add a [urlToItemResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase), which will allow a URL from the connection detected within Microsoft 365 apps to be resolved to its respective item ID on the [externalItem](/graph/api/resources/externalconnectors-externalitem). 

The following image shows how your item might appear within recommendation experiences across Microsoft 365.

![Screenshot of a recommended item with share activity](./images/connectors-images/share-activity-recommendation-example.png)

## Update a connection

To change the display name, description, or enabled content experiences for an existing connection, you can [update the connection](/graph/api/externalconnectors-externalconnection-update).

## Delete a connection

To remove all items that were indexed via a connection, you can [delete a connection](/graph/api/externalconnectors-externalconnection-delete).

## Next steps

- [Register the connection schema](connecting-external-content-manage-schema.md)
- [Review the Microsoft Graph connectors API reference](/graph/api/resources/indexing-api-overview)
- [Download the sample search connector from GitHub](https://github.com/microsoftgraph/msgraph-search-connector-sample)
