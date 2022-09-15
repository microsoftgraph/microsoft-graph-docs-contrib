---
title: "Publish custom connectors to the Microsoft 365 admin center"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn how to publish the connectors you build using the Microsoft Graph connectors SDK to the Microsoft 365 admin center."
---

# Publish custom connectors to the Microsoft 365 admin center

When you use the Microsoft Graph connectors SDK, you can publish your custom connectors through the Microsoft 365 admin center, the same way that Microsoft built-in connectors are published.

>[!Note]
> Read the [Setup for your Graph connector](/microsoftsearch/configure-connector) article to understand the general Graph connectors setup instructions.

Use the following steps to publish a connection for your custom connector:

1. Add a Microsoft Graph connector in the Microsoft 365 admin center from the [Data Sources tab](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/Connectors) in the Search & Intelligence section. For details, see [Add a Microsoft Graph connector in the Microsoft 365 admin center](/microsoftsearch/configure-connector#step-1-add-a-microsoft-graph-connector-in-the-microsoft-365-admin-center).

2. Choose **Custom Connector** and provide manifest details in the following format.

    ```json
    {
      // This is the unique connector ID/provider ID.
      "connectorId": "<ConnectorGuid>",
    
      // This is a list of all supported auth types. Remove the ones that the connector does not support.
      "authTypes": [ "Windows", "Basic", "Anonymous", "OAuth2ClientCredentials" ],
      
      // The list of additional crawl types that the connector supports in addition to full and periodic full crawl. This is an optional field.
      "additionalCrawlsSupported": [ "Incremental" ]
    }

    ```

    - **connectorId** should be a GUID. This field is the same as **ConnectorUniqueId** in the Connector Info Service implementation file or the GUID that you define.
    - **AuthTypes** must be a non-empty array with one or more of the following types: `Anonymous`, `Basic`, `Windows`, `OAuth`.
    - **additionalCrawlsSupported** is optional; you can define crawl types in addition to full and period full crawl, depending on the implementation and data source support.

    >[!Note]
    > The manifest file is generated automatically in the output directory of your project if you're using the C# project template. You can edit/update the manifest file as required.

3. Name the connection. For details, see [Step 2: Name the connection](/microsoftsearch/configure-connector#step-2-name-the-connection).

4. Provide the URL to the data source you're connecting to and credentials to access it. Choose the Microsoft Graph connector agent, and validate the information provided. Choose **Next**.

5. Provide any extra configuration if required by your connector. You can pass any information specific to the connection to the datasource. 

    For example, if you're building a connector for Azure DevOps Services, the projects that need to be indexed can be the extra parameters. For a Wiki connector, the subsections that need to be indexed can be the extra parameters. The API to query the wiki can take the filters specified in the extra parameters and get the items from data source.

    The data in the parameter is opaque to the platform. It's serialized and stored as a string and passed to the connector. The connector can deserialize this data as required and use it.

6. On the [Assign property labels](/microsoftsearch/configure-connector#step-6-assign-property-labels) page, assign semantic labels to your source properties.

7. Manage the schema:
  
    - Select a Content Property. We recommend that you select a Content Property from the drop-down menu of options, or keep the default, if one is present. This property is used for full-text indexing of content and improving your search relevance.
    - Define aliases for your properties. You can add aliases to your properties on the **Manage schema** page in the **Alias** column. Aliases are friendly names for your properties.
    - Set the search schema attributes. You can set the search schema attributes to control the search functionality of each source property. A search schema helps determine what results display on the search results page and what information end users can view and access.

    For details, see [Step 7: Manage schema](/microsoftsearch/configure-connector#step-7-manage-schema).

8. You can manage search permissions basis Access control lists (ACLs) that determine which users in your organization can access each item. Only Azure AD-based Access Control Lists are supported for people with access to the data source. For details, see [Step 5: Manage search permissions](/microsoftsearch/configure-connector#step-5-manage-search-permissions).

9. Choose the refresh frequencies of crawls. The refresh interval determines how often your data is synced between the data source and Microsoft Search. For details, see [Step 8: Refresh frequencies](/microsoftsearch/configure-connector#step-8-refresh-settings).

10. Review the details provided and choose **Finish**. For details, see [Step 9: Review connection](/microsoftsearch/configure-connector#step-9-review-connection).

11. Customize the search results page by setting up verticals and result types. For details, see [Step 10: Customize the search results page](/microsoftsearch/configure-connector#step-10-customize-the-search-results-page).

12. Review the published connection under the **Data sources** tab to confirm that the connection setup worked. For details, see [Step 11: Confirm that the connection setup worked](/microsoftsearch/configure-connector#step-11-confirm-if-the-connection-setup-worked).

## See also

* [Best practices](/graph/custom-connector-sdk-best-practices)
* [Troubleshooting](/graph/custom-connector-sdk-troubleshooting)
