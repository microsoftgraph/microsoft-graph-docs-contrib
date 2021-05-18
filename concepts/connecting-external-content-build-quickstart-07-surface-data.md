---
title: "Surface the data in search"
description: "Surface the data in search"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
---

# Surface the data in search

Create search verticals and result types to customize the search results in Microsoft **SharePoint** , **Microsoft Office** , and Microsoft Search in **Bing**, to make it easier for users to find the information that they have permission to see.

## Create a vertical

Create and enable a search vertical at the organization level following the instructions in the Customize the Microsoft Search page. Sign in into [Microsoft 365 Admin center](https://admin.microsoft.com/) using the global administrator role.

1. Go to Settings à Search &amp; intelligence à **Customizations** tab.
2. Go to **Vertical** tab and click on **&quot;+ Add&quot;** button.
3. Provide the following details:
  * **Name the vertical:** Appliance Parts.

:::image type="content" source="images/connectors-images/build11.png" alt-text="Name the vertical":::

  * **Content source** : the connector created with the app. (Parts Inventory)

:::image type="content" source="images/connectors-images/build12.png" alt-text="Content source":::

  * **Add a query** : leave blank.

:::image type="content" source="images/connectors-images/build13.png" alt-text="Add a query":::

  * **Filters** : leave blank.

:::image type="content" source="images/connectors-images/build14.png" alt-text="Filters":::

## Create a result type

Create a result type at the organization level by following the instructions in Customize the Microsoft Search page.

1. Go to Settings à Search &amp; intelligence à **Customizations** tab.
2. Go to the **result type** tab and click on the **&quot;+ Add&quot;** button.
3. Provide the following details:

* **Name** : Appliance Part

:::image type="content" source="images/connectors-images/build15.png" alt-text="Name the result type":::

* **Content source** : the connector created in the app.

:::image type="content" source="images/connectors-images/build16.png" alt-text="Select a content source":::

* **Rules** : None

:::image type="content" source="images/connectors-images/build17.png" alt-text="Set rules":::

* Paste contents of [result-type.json](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/result-type.json) into the layout designer textbox.

:::image type="content" source="images/connectors-images/build18.png" alt-text="Design layout":::