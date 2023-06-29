---
title: "Publish your custom Microsoft Graph connector"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn how to publish a custom Microsoft Graph connector to the Microsoft 365 admin center."
---

# Publish your custom Microsoft Graph connector

Ths article describes how to publish your custom Microsoft Graph connector to the Microsoft 365 admin center. 

To publish your connector, use the following steps:

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/).

2. Go to **Search & intelligence** > **Data Sources**, and choose **Add**.

3. Choose **Custom Connector** and use the manifest file validated from the test application for your sample connector with your updated **connectorId**.

4. Provide a connection name, connection ID, and description (optional), select the checkbox, and choose **Next**.

5. Provide the URL of the location where you've downloaded the CSV file to be indexed and choose the Microsoft Microsoft Graph connector agent that you installed. Choose **Test connection** to validate the information provided, and then choose **Next**.

6. On the **Additional parameters** page, choose **Next**.

7. On the **Assign property labels** page, choose **Next**.

8. On the **Manage schema** page, choose **Next**.

9. On the **Manage search permissions** page, choose **Everyone**.

10. For **Full refresh frequency**, choose **15 minutes**.

11. Review the details provided and choose **Finish**.

## Next steps

* [Surface the data in search](/graph/custom-connector-sdk-sample-search)
