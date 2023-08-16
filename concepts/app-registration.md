---
title: "Microsoft Graph Data Connect app registration"
description: "Learn how to register your Microsoft Graph Data Connect app"
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Microsoft Graph Data Connect app registration

This article provides best practice guidance for using the Azure portal experience to register an Azure Active Directory (Azure AD) app with Microsoft Graph Data Connect.

## Azure portal experience

In the [Azure portal](https://aka.ms/mgdcinazure) experience, developers and tenant global administrators can review all registered applications, authorize apps, and manage app registrations.

### Landing page

> [!IMPORTANT]
> If Microsoft Graph Data Connect hasn't been enabled by your admin, the portal experience is disabled. For details about how global administrators can enable Data Connect, see [Enable Microsoft Graph Data Connect in your Microsoft 365 tenant](https://github.com/microsoftgraph/microsoft-graph-docs/blob/45b4b22b5db4a87be256b59130e74bf49c2e7fd1/includes/data-connect-quickstart-02.md?plain=1#L45)

The first screen of the Azure portal experience prompts you to register your first app with Data Connect, or load existing registrations into a summary table view.

![Screenshot showing the landing page of the Azure portal experience.](images/app-registration-summary-table.png)

The table includes the following column fields:

- **Name** — The app registration name
- **App ID** — The Azure AD application ID
- **Registered On** — The date the app was registered
- **Developer** — The developer who registered the application
- **Multi-tenant** — Whether the app is multi-tenant or single tenant
- **Last modified** — The most recent date when the application was changed

At the top of the table, three buttons are enabled by default: **Add**, **Refresh**, and **Delete**. **Add** starts an action for a new app registration. **Refresh** queries existing app registrations in the tenant again, and refreshes the table. **Delete** is only enabled for single selections, and initiates a deletion process.

## Register a new app

When adding a new app registration with Data Connect, follow the add wizard to complete the required details on the following tabs: **Registration Info**, **Datasets**, and **Review + create**.

### Registration Info page

The Registration Info page outlines standard requirements for app registrations. First, specify the project details—a process that's similar to creating a resource in Azure. The following are the project detail fields:

- **Subscription** (required) - Select a subscription in the tenant that will be used exclusively to filter the next four sections that relate to data destination configuration.
- **Resource Group** (required) - Select the group location for the data storage.
- **Destination Type** - Select the type of storage from Azure Storage Account or Azure SQL Database Server.

  >**Note:** If you select SQL Database Server, the app will only support `Mapping Data Flows` types. For details, see [Mapping Data Flows in Azure Data Factory](/azure/data-factory/concepts-data-flow-overview).

- **Storage Account** (required) - Select the storage account where the data to provision with Data Connect will be located, or create a new Azure Storage Account.
- **Storage Account Uri** (required) - From the storage account you selected, select the URI to use (Distributed File System (DFS) or blob).

> [!NOTE]
> The linked service that you create during pipeline setup should align with what you selected in previous steps on the Registration Info page. If you choose DFS, use an Azure Data Lake Storage Gen2 Linked Service, and if you choose blob, use Azure Blob Storage Linked Service.

If you select SQL for **Storage Account**, the **Uri** project detail field is disabled.

App registration requires you to select entries for the **Instance Details** that affect default behaviors, such as the following fields:

- **Application ID** (required) - Select from Azure AD apps in the tenant, or create a new one.
- **Description** (required) - Provide details in the text field for app registration such as project goal, unique identifier, and organization project name.
- **Publish Type** (required) - Select from multi-tenant or single-tenant fields.
- **Key Vault** (required **only** for multi-tenant app registrations) - Specify the key vault that will enable communication between tenants.

![Screenshot of the registration page for adding applications on Data Connect, including fields related to the Project Details and Instance Details sections.](images/app-registration-create-registration-info.png)

#### Datasets

After you complete the **Registration Info** page, specify the datasets that the app registration needs to query. This step is crucial for authorization. Only the datasets that you select are transferred for administrator authorization. For details about datasets, see [Datasets, regions, and sinks](./data-connect-datasets.md).

The wizard shows a table that allows the entry of multiple datasets, the selection of columns in the datasets, and more details if applicable, such as scope and scope options. For details about scopes, see [User selection and filtering capabilities in Microsoft Graph Data Connect](./data-connect-filtering.md). You can select each dataset that the app will request for authorization, and all or several columns from the dataset, depending on the level of granularity and privacy required.

![Screenshot showing the Datasets column selected while running the Data Connect app registration wizard.](images/app-registration-create-datasets.png)

When you're finished, choose **Next : Review + create**.

> [!IMPORTANT]
> If information is missing from the required fields in the previous tabs, the **Next : Review + create** button is disabled.

#### Review + create

The last step in the wizard shows a summary page for you to review the specified details and confirm the creation of the app registration entry.

![Graphic showing datasets selection for app registration while running the Data Connect app registration wizard.](images/app-registration-create-review.png)

### View app registration details

After you create your app registration entry, to view the details that you specified, select the app name on the landing page. All details specified in creation are shown.

![Screenshot of the app registration details page.](images/app-registration-details-overview.png)

#### Update app registration entry

Access update functionality from the individual app overview page. Either the app owner or global admin can update properties or datasets associated with a Data Connect application. As shown in the following images, any updates to the destination storage for the app or the datasets, schema, or scopes associated with the app invalidate the previous authorization, and require the global admin to approve the app again from the Microsoft 365 admin center.

![Screenshot of the app registration Update Properties page.](images/app-registration-details-properties-update.png)

![Screenshot of the app registration Update Datasets page.](images/app-registration-details-datasets-update.png)

#### Delete an app registration entry

You can delete an app registration entry from either the individual app overview page, or from the landing page. Currently, either app owners or global administrators can delete app registration entries. When you delete an app registration entry, you need to type the name of the app to confirm the deletion. After the app is deleted, any dependency or pipeline that uses it becomes unusable, specifically:

- Every pipeline goes through multiple phases. In the first phase of the pipeline, we validate the consent. Any pipeline past the consent validation stage continues and succeeds.
- Any pipeline before the authorization validation phase fails because the application is missing.

![Screenshot of the app registration Delete Registration entry page.](images/app-registration-delete-confirmation.png)
