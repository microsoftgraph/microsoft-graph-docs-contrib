---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

In this step you will create an Azure Storage account where Microsoft Graph data connect will store the data extracted from Microsoft 365 for further processing.

1. Open a browser and go to your [Azure Portal](https://portal.azure.com/).

1. Sign in using an account with **Global administrator** rights to your Azure and Microsoft 365 tenants.

1. On the sidebar navigation, select **Create a resource**.

1. Find the **Storage Account** resource type and use the following values to create it, then select **Review + create**.

    - **Subscription**: select your Azure subscription
    - **Resource group**: GraphDataConnect (or select an existing resource group)
    - **Storage account name**: mgdcm365datastore
    - **Region**: pick an Azure region in the same region as your Microsoft 365 region
    - **Performance**: Standard
    - **Redundancy**: Geo-redundant storage (GRS)
    - **Advanced tab**:
      - **Access tier**: Hot

1. Review that the settings match those shown in the previous step and select **Create**.

1. After the Azure Storage account has been created, grant the Azure AD application previously created the proper access to it.

    1. Select the **Azure Storage account**.
    2. On the sidebar menu, select **Access control (IAM)**.
    3. Select the **Add** button in the **Add a role assignment** block.
    4. Grant the **Storage Blob Data Contributor** role to the application you previously created.

        1. Select *Storage Blob Data Contributor* as the **Role**, and click **Next**.
        2. **Assign access to** *User, group or service principal*.
        3. Click **+ Select members**, and in the right pane that displays, search for the application (Microsoft Graph data connect Data Transfer) that you previously created, and click **Select**.
    5. Select **Review + assign**.

      <!--  ![A screenshot showing the proper role assignment to the application for Microsoft Graph Data Connect in the Azure Storage account in the Azure portal.](../concepts/images/data-connect-azure-storage-role.png) -->

1. Create a new container in the **mgdcm365datastore** Azure Storage account.

    1. Select the **mgdcm365datastore** Azure Storage account.
    2. On the sidebar menu, select **Containers** under the **Data storage** section.
    3. Select the **+Container** button at the top of the page and use the following values and then select **Create**.

        - **Name**: m365mails
        - **Public access level**: Private (no anonymous access)

       <!-- ![A screenshot showing the creation of a new container called m365mails in the Storage account blob containers in the Azure portal.](../concepts/images/data-connect-azure-storage-container.png) -->
