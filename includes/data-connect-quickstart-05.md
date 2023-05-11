---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

As a pre-requisite, Microsoft Graph Data Connect should be enabled in your tenant. We recommended to have an Azure Active Directory (AAD) app and storage destination resource created. 

Additionally, these can be created from the wizard as well. To register an app with Microsoft Graph Data Connect via wizard, developers will be welcomed with a wizard divided into three tabs: Registration Info, Datasets, and Review + create. 

## Register your application with Microsoft Graph Data Connect

### Provide the Registration Info details 

1. Access [MGDC in the Azure Portal](aka.ms/mgdcinazure). Moving forward, the experience will be available through the search bar in [Azure Portal](https://portal.azure.com/)

2. Click on the “Add” button or in the “Add a new application” button 

    ![Screenshot of the the Azure Portal Data Factory to create a new application](../concepts/images/data-connect-register-app-1.png)

3. Follow the Add wizard by specifying the project details for the registration. Click on the **Next : Datasets** once you have completed the below fields

    1.  **Subscription:** (required) select a subscription in the tenant that will be used exclusively to filter the next 4 selections utilized to configure the data destination
        - **Resource Group:** (required) select the group location for the data storage
        - **Destination Type:** select the type of storage from Azure Storage Account or Azure SQL Database Server
            - If the selected type of storage is SQL Database Server, then it will only support Mapping Data Flows types. Learn more about Mapping Data Flows.
        - **Storage Account:** (required) select the storage account where the data to provision with MGDC will be located, or create a new Azure Storage Account
        - **Storage Account Uri:** (required) from the storage account selected above, select the Uri to use (dfs or blob)
            - The Uri is disabled if the Storage Account selected is SQL
    2. **Application ID:** (required) select from the AAD apps in the tenant or create a new one
    3. **Description:** (required) text field to provide details on the app registration, i.e. project goal, unique identifier, organization project name
    4. Publish Type: (required) select from Multi-Tenant or Single-Tenant
        - **Key Vault:** (required for Multi-Tenant app registrations) specify the key vault that will enable the communication between the tenants
    
    ![Screenshot of project details on the wizard](../concepts/images/data-connect-register-app-2.png)

### Select Dataset and Details for the Application

Once the Registration Info page is completed, it is time to specify the datasets that the app registration will need to query. [Learn more about datasets.](https://learn.microsoft.com/en-us/graph/data-connect-datasets)

4. Proceed to select each dataset that the app will request for consent and all or several columns from the dataset depending on the level of granularity and privacy that is required. Examples are provided below in the images.

    - The wizard shows a table that allows the entry of multiple datasets, the selection of columns in those datasets, and further details for consent of multi-tenant apps (scope and scope options). [Learn more about scopes.](https://learn.microsoft.com/en-us/graph/data-connect-filtering#user-selection)


    ![Screenshot of dataset catalog on wizard](../concepts/images/data-connect-register-app-3.png)

5. Once completed, click on **Next : Review + create**. If there is missing information for the required fields in the previous tabs, then the button will not be enabled.

    ![Screenshot of example of dataset catalog of the wizard](../concepts/images/data-connect-register-app-4.png)

### Review and Create

6. Lastly, the wizard provides a summary page to review the specified details and confirm the creation of the app registration.

    ![Screenshot of summary page sample](../concepts/images/data-connect-register-app-5.png)

7. If all required fields are provided, the app registration will appear in the landing page:

    ![Screenshot of summary page sample](../concepts/images/data-connect-register-app-6.png)

## Approve your Application for Microsoft Graph Data Connect 

1.	Open a browser, go to [your Microsoft 365 admin center](www.admin.microsoft.com) and sign in with your “admin” user. 

2.	Select the **Settings > Org** settings menu item. You might have to click Show all before you're able to view Settings.

3.	Switch to the **Security & privacy** tab and select the **Microsoft Graph Data Connect applications**.

    ![Screenshot of admin page sample](../concepts/images/data-connect-register-app-7.png)

4.	You will land on the Microsoft Graph Data Connect applications portal. You should see the app you just registered with MGDC in the app summary table with the Status **Pre-consent**. 

    <!-- ![Screenshot of admin page sample for pre-consent](../concepts/images/data-connect-register-app-8.png) -->

5.	Click on your application to open the app details view. Proceed through the Wizard by clicking **Next** to review the app and on the final step, click **Approve** to consent to your registered application accessing the specified data.    

    <!-- ![Screenshot of admin page sample for app details view](../concepts/images/data-connect-register-app-9.png) -->

6.	The app details view should close and the app summary table should reload with your app listed with Status **Approved**. 


