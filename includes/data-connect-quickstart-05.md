---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

This exercise describes how you register and approve an application with Microsoft Graph Data Connect (Data Connect). As a pre-requisite, Data Connect should be enabled in your tenant. We recommend to have an Azure Active Directory (Azure AD) application and storage destination resource created.

## Register your application with Microsoft Graph Data Connect

These steps describe how you register your application with Data Connect. Developers are welcomed with a wizard divided into three tabs: **Registration Info**, **Datasets**, and **Review + create**.

### Provide details for the Registration Info tab

1. Access [Microsoft Graph Data Connect in the Azure portal](https://aka.ms/mgdcinazure). Moving forward, the experience will be available through the search bar in the [Azure portal](https://portal.azure.com/).

2. Choose the **Add** or **Add a new application** button.

    ![A screenshot that shows the Azure portal Data Factory to create a new application.](../concepts/images/data-connect-register-app-1.png)

3. Follow the **Add** wizard by specifying the project details for the registration. When you complete the following fields, choose **Next : Datasets >**

    1. **Subscription:** Select a subscription in the tenant that will be used exclusively to filter the next four selections utilized to configure the data destination.
        - **Resource Group:**  Select the resource group you created previously.
        - **Destination Type:** Select Azure Storage Account as the destination type.
        - **Storage Account:** Select the Storage Account you created previously.
        - **Storage Account Uri:** Select the option including **.blob.core.windows.net**.
    2. **Application ID:** Select from the Azure AD apps in the tenant or create a new one.
    3. **Description:** Enter **My first MGDC app**.
    4. **Publish Type:** Choose **Single-Tenant**.

    ![A screenshot that shows the project details on the wizard.](../concepts/images/data-connect-register-app-2.png)

### Select dataset and details for the application

Specify the datasets that the app registration needs to query. To learn more about datasets, see [Datasets, regions, and sinks supported by Microsoft Graph Data Connect](/graph/data-connect-datasets). Click the **Next : Datasets >** button in bottom of the page.

4. From the **Dataset** dropdown, select **BasicDataSet_v0.Message_v1**, and in the **Columns** dropdown, choose **All**. In the new row, select **BasicDataSet_v1** from the **Dataset** dropdown, and in the **Columns** dropdown, choose **All**.

    ![A screenshot that shows the dataset catalog on the wizard.](../concepts/images/data-connect-register-app-3.png)

### Review and Create

5. When completed, choose **Review + Create**, and then choose **Create**.

    ![A screenshot that shows the summary page for the Review + Create step.](../concepts/images/data-connect-register-app-4.png)

6. If all required fields are provided, the app registration appears in the landing page.

    ![A screenshot that shows the registered app on the landing page.](../concepts/images/data-connect-register-app-6.png)

## Approve your application for Microsoft Graph Data Connect

1. Open a new browser window in private mode, go to your [Microsoft 365 admin center](https://admin.microsoft.com/), and sign in with your "admin" user.

 > [!NOTE]
 > If you are not in your admin account, there will be an error with approval. You cannot self-approve your apps.

2. On the left navigation pane, select **Settings > Org settings**. You might have to choose **Show all** before you can view **Settings**.

3. Switch to the **Security & privacy** tab and select the **Microsoft Graph Data Connect applications**.

    ![A screenshot that shows the Security and privacy page in the Microsoft 365 admin center.](../concepts/images/data-connect-app-register-7.png)

4. In the Microsoft Graph Data Connect applications portal, you should see the application you registered previously with Data Connect in the application summary table with the status **Pre-consent**.

    ![A screenshot that shows the pre-consented application in the landing page of the Microsoft Graph Data Connect applications portal.](../concepts/images/data-connect-app-register-8.png)

5. Choose your application to open the application details view. Proceed through the wizard by choosing **Next** twice to review the two datasets.

6. On the final step, choose **Approve** to consent to your registered application accessing the specified data.

    ![A screenshot that shows the application details view with the Approve button highlighted.](../concepts/images/data-connect-app-register-9.png)

7. After you choose **Approve**, the application summary table reloads with your app listed with the status **Approved**.

    ![A screenshot that shows the approved application in the landing page of the Microsoft Graph Data Connect applications portal.](../concepts/images/data-connect-app-register-10.png)
