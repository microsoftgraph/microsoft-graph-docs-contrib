---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this step, you will create search verticals and result types to customize the search results in Microsoft SharePoint, Microsoft Office, and Microsoft Search in Bing.

## Create a vertical

Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) by using the global administrator role, and do the following:

1. Go to **Settings** > **Search & intelligence** > **Customizations**.
1. Go to **Verticals**, and then select **Add**.
1. Enter `Appliance Parts` in the **Name** field and select **Next**.

    :::image type="content" source="../../images/connectors-images/build11.png" alt-text="Screenshot of the Name the vertical section":::

1. Select **Connectors**, then select the **Parts Inventory** connector. Select **Next**.

    :::image type="content" source="../../images/connectors-images/build12.png" alt-text="Screenshot of the Content source section":::

1. On the **Add a query** page, leave the query blank. Select **Next**.

1. On the **Filters** page, select **Next**.

1. Select **Add Vertical**.

1. Select **Enable vertical**, then select **Done**.

## Create a result type

To create a result type:

1. Go to **Settings** > **Search & intelligence** > **Customizations**.
1. Go to the **Result type** tab, and then select **Add**.
1. Enter `Appliance Part` in the **Name** field and select **Next**.

    :::image type="content" source="../../images/connectors-images/build15.png" alt-text="Screenshot of the Name the result type section":::

1. On the **Content source** page, select **Parts Connector**. Select **Next**.

    :::image type="content" source="../../images/connectors-images/build16.png" alt-text="Screenshot of the Select a content source section":::

1. On the **Rules** page, select **Next**.

1. On the **Design your layout** page, paste the following JSON, then select **Next**.

    :::code language="json" source="./snippets/result-type.json" :::

1. Select **Add result type**, then select **Done**.
