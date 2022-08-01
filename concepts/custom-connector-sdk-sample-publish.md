---
title: "Publish your first custom Microsoft Graph connector on the Microsoft 365 admin center"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Publish your first custom Microsoft Graph connector on the Microsoft 365 admin center"
---

# Publish your first custom Microsoft Graph connector on the Microsoft 365 admin center

1. Go to [Microsoft 365 Admin Center](https://admin.microsoft.com/)

2. Navigate to **Search & intelligence** > **Data Sources** and select on "**Add**".

3. Choose "**Custom Connector**" option and paste the following manifest details for your sample connector implementation with your updated **connectorId**:

    ```json
     {
      // This is the unique connector id/provider id
      "connectorId": "<ConnectorGuid>",
    
      // This is list of all supported auth types. Remove the ones that the connector does not support.
      "authTypes": [ "Anonymous" ]   
    }

    ```

    >[!Note]
    >You can also find the manifest file auto generated in the output directory of your project.

4. Provide connection name, connection ID, description (optional) select the checkbox and select Next.

5. Provide URL of the location where you've downloaded the CSV file to be indexed and choose the Graph connector Agent installed. Select **Test connection** to validate the information provided. Select Next on successful validation.

6. Select Next on the **Additional parameters** screen

7. Select Next on the **Assign property labels** screen

8. Select Next on the **Manage schema** screen

9. Select **Everyone** on **Manage search permissions** screen

10. Select the **Full refresh frequency** as 15 minutes

11. Review the details provided and select Finish

## Next steps

* [Surface the data in search](/graph/custom-connector-sdk-sample-search)
