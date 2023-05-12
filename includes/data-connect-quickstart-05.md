---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

As a pre-requisite, Microsoft Graph Data Connect should be enabled in your tenant. We recommended to have an Azure Active Directory (Azure AD) application and storage destination resource created. These steps go over how to register an application with Microsoft Graph Data Connect via the Azure portal, developers are welcomed with a wizard divided into three tabs: **Registration Info**, **Datasets**, and **Review + create**. 

## Register your application with Microsoft Graph Data Connect

### Provide details for the Registration Info tab 

1. Access [Microsoft Graph Data Connect in the Azure portal](https://aka.ms/mgdcinazure). Moving forward, the experience will be available through the search bar in the [Azure portal](https://portal.azure.com/)

2. Click the "Add" or the "Add a new application" button 

    ![Screenshot of the the Azure portal Data Factory to create a new application](../concepts/images/data-connect-register-app-1.png)

3. Follow the **Add** wizard by specifying the project details for the registration. Click **Next : Datasets** once you have completed the following fields

    1.  **Subscription:** (required) select a subscription in the tenant that will be used exclusively to filter the next 4 selections utilized to configure the data destination
        - **Resource Group:** (required) select the group location for the data storage
        - **Destination Type:** select Azure Storage Account as the destination type.
        - **Storage Account:** (required) select the storage account earlier in this tutorial. 
        - **Storage Account Uri:** (required) from the storage account selected above, select the Uri to use.Please select the **.blob.core.windows.net**
    2. **Application ID:** (required) select from the AAD apps in the tenant or create a new one
    3. **Description:** (required) text field to provide details on the app registration, i.e. project goal, unique identifier, organization project name
    4. **Publish Type:** (required) select from Single-Tenant for this tutorial.
    
    ![Screenshot of project details on the wizard](../concepts/images/data-connect-register-app-2.png)

### Select dataset and details for the application

Once the **Registration Info** page is completed, it is time to specify the datasets that the app registration will need to query. [Learn more about datasets](/graph/data-connect-datasets).

4. Select `BasicDataSet_v0.Message_v1` from Dataset drop down. Then in the Columns drop down click `All`. Now in the new row, select `BasicDataSet_v1` from Dataset drop down. Then in the Colums drop down click `All`.

    ![Screenshot of dataset catalog on wizard](../concepts/images/data-connect-register-app-3.png)

5. Once completed, then click `Review + Create`. 

    ![Screenshot of example of dataset catalog of the wizard](../concepts/images/data-connect-register-app-4.png)

### Review and Create

6. Lastly, the wizard provides a summary page to review the specified details and confirm the creation of the app registration.

    ![Screenshot of summary page sample](../concepts/images/data-connect-register-app-5.png)

7. If all required fields are provided, the app registration will appear in the landing page:

    ![Screenshot of summary page sample](../concepts/images/data-connect-register-app-6.png)

## Approve your application for Microsoft Graph Data Connect 

1. Open a browser, go to your [Microsoft 365 admin center](https://admin.microsoft.com/), and sign in with your "admin" user. 

 > [!NOTE]
 > If you are not in your "admin" account, there will be an error with approval. You cannot self-approve your apps.

2. On the left navigation pane, select **Settings > Org settings**. You might have to click **Show all** before you can view **Settings**.

3. Switch to the **Security & privacy** tab and select the **Microsoft Graph Data Connect applications**.

    ![Screenshot of admin page sample](../concepts/images/data-connect-app-register-7.png)

4. You will land on the Microsoft Graph Data Connect applications portal. You should see the app you just registered with Data Connect in the application summary table with the status **Pre-consent**. 

    <!-- ![Screenshot of admin page sample for pre-consent](../concepts/images/data-connect-register-app-8.png) -->

5. Click on your application to open the application details view. Proceed through the wizard by clicking **Next** to review the application. On the final step, click **Approve** to consent to your registered application accessing the specified data.    

    <!-- ![Screenshot of admin page sample for app details view](../concepts/images/data-connect-register-app-9.png) -->

6.	The app details view should close and the app summary table should reload with your app listed with Status **Approved**. 


