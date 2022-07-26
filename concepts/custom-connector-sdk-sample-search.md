---
title: "Surface the data in Microsoft Search"
ms.author: rchanda
author: rchanda1392
manager: harshkum
ms.audience: Admin
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
ms.date: 06/30/2022
description: "Microsoft Graph connectors SDK sample search"
---

# Surface the data in Microsoft Search

To make it easier for users to find the information that they have permission to see, create search verticals and result types to customize the search results in Microsoft SharePoint, Microsoft Office, and Microsoft Search in Bing.

To create and enable a search vertical at the organization level, sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) by using the global administrator role, and do the following:

1. Go to **Settings** > **Search & intelligence** > **Customizations**.
2. Go to **Vertical**, and then select **Add**.
3. Provide the following details:
   * **Name the vertical:** Appliance Parts.

     ![Screenshot of the "Name the vertical" section](images/connectors-sdk/build11.png)

   * **Content source**: The connector created with the app (Parts Inventory).

     ![Screenshot of the "Content source" section](images/connectors-sdk/build12.png)

   * **Add a query**: Leave blank.

     ![Screenshot of the "Add a query" section](images/connectors-sdk/build13.png)

   * **Filters**: Leave blank.

     ![Screenshot of the "Filters" section](images/connectors-sdk/build14.png)

## Create a result type

To create a result type:

1. Go to **Settings** > **Search & intelligence** > **Customizations**.
2. Go to the **Result type** tab, and then select **Add**.
3. Provide the following details:
   * **Name**: Appliance Part

     ![Screenshot of the "Name the result type" section](images/connectors-sdk/build15.png)

   * **Content source**: The connector created in the app.

     ![Screenshot of the "Select a content source" section](images/connectors-sdk/build16.png)

   * **Rules**: None

     ![Screenshot of the "Set rules" section](images/connectors-sdk/build17.png)

   * Paste contents of [result-type.json](https://github.com/microsoftgraph/msgraph-connectors-sdk/blob/main/C%23%20sample/ResultType.json) into the layout designer textbox.

     ![Screenshot of the "Design layout" section](images/connectors-sdk/build18.png)

## Search for results

In this step, you'll search for parts in SharePoint.

1. Go to the root SharePoint site for your tenant.
2. Using the search box at the top of the page, search for **hinge**.

   ![Example of search results for the word hinge on the Appliance Parts tab.](images/connectors-sdk/build19.png)

3. When the search completes with 0 results, select the **Appliance Parts** tab. Results from the connector are displayed.

   ![Example of search results for the word hinge with results showing on the Appliance Parts tab.](images/connectors-sdk/build20.png)

## Summary

You've successfully completed the custom Microsoft Graph connector tutorial. Now you've created a custom connector and used it to power Microsoft Search.

## See also

* [Best practices to follow while developing your connector](/graph/custom-connector-sdk-best-practices)

* [Troubleshooting issues with your connector](/graph/custom-connector-sdk-troubleshooting)
