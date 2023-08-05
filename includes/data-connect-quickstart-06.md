---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

This exercise describes how to set up your Azure resources to be able to connect Microsoft Graph Data Connect (Data Connect) to it. In this step, you can either choose Azure Synapse or Azure Data Factory to create a pipeline to extract the data from Microsoft 365 to the Azure Storage account using Data Connect.

We recommend that you use Azure Synapse because it has more built-in capabilities for data processing.

## Setting up your Azure resources

# [Create an Azure Synapse Pipeline](#tab/AzureSynapsePipeline)

1. Open a browser and go to your [Azure portal](https://portal.azure.com/#home).

1. Sign in to the portal using an account with an [Application Administrator](/azure/active-directory/roles/permissions-reference#application-administrator) or [Application Developer](/azure/active-directory/roles/permissions-reference#application-developer) role. Ensure that you are signed-in with your developer account that has privileges to create Azure resources within your subscription.

1. On the left pane, select **Create a resource**.

1. Find the **Azure Synapse Analytics** resource type, input the following values, and select **Create**.
    - **Subscription:** Select your Azure subscription.
    - **Resource group:** Select the resource group you created previously, **mgdc-app-resource**.
    - **Region:** [Select an Azure region in the same region as your Microsoft 365 tenant](/graph/data-connect-datasets#regions).
    - **Workspace name:** m365tostorage
    - **Account name:** synapsedatalstorage
    - **File system name:** flsynapse

        ![A screenshot of the Azure Synapse Analytics page with fields shown with values input and Review and create highlighted.](../concepts/images/data-connect-synapse-create.png)

        ![A screenshot of the Azure Synapse Analytics page with Create highlighted.](../concepts/images/data-connect-synapse-workspace.png)

1. Select **Go to resource**, open the synapse workspace you've just created (for example, **m365tostorage**), and then select the **Open Synapse Studio** tile to launch the Azure Synapse workspace full-screen editor.

    ![A screenshot of the resource page with Open Synapse Studio highlighted.](../concepts/images/azure-synapse-studio-tile.png)

1. By default, Azure Synapse Analytics uses an integration runtime that auto-resolves the region. We recommend for the context of this tutorial that you use the default auto-resolve.

    1. Switch to **Manage (toolbox icon) > Integration runtimes > New**.

    1. Select **Azure, Self-Hosted**, and choose **Continue**.

        ![A screenshot of the integration runtime setup with Azure, Self-Hosted highlighted.](../concepts/images/data-connect-synapse-IR.png)

    1. For the network environment, select **Azure**, and then choose **Continue**.

        ![A screenshot of the Integration runtime setup with Azure selected for network environment and Continue highlighted.](../concepts/images/data-connect-synapse-azure.png)

    1. Use the following details to complete the form on the final screen and then choose **Create**.
        - **Name**: Name of your integration runtime.
        - **Region**: Select the region that matches your Microsoft 365 region.

1. On the left pane, select **Integrate (tube icon)**.

1. To create a new pipeline, select the **Plus** icon, and then choose **Pipeline**.

    ![A screenshot of the integrate page with Pipeline highlighted.](../concepts/images/data-connect-synapse-pipeline.png)

    1. In the search box, enter *Copy data* and then drag the **Copy data** activity from the **Move & transform** section onto the design surface.

        ![A screenshot of the integrate page with Move and transform and copy data highlighted.](../concepts/images/data-connect-synapse-move-transform.png)

    1. Select the activity in the designer.

    1. Select the **General** tab and give it a name.
        - **Name:** CopyFromM365toStorage

    1. Select the **Source** tab, and then select **New**.

        ![A screenshot of the integrate page with Source and New highlighted.](../concepts/images/data-connect-synapse-general.png)

    1. Locate and select the dataset **Microsoft 365 (Office 365)**, and then choose **Continue**.

        ![A screenshot of the New integration dataset page with Microsoft 365 (Office 365) and Create new highlighted.](../concepts/images/data-connect-synapse-locate-dataset.png)

    1. Under **Linked service**, choose **Select**, and then choose **+New**.

        ![A screenshot of the Set properties pane with New highlighted.](../concepts/images/data-connect-synapse-linked-service.png)

    1. In the dialog box, from the **Connect via integration runtime** dropdown, select the integration runtime you created, enter the **Application ID** and **client secret value** of the Azure Active Directory (Azure AD) application in the **Service principal ID** and **Service principal key** fields respectively, and choose **Create**.  

        ![A screenshot of the New linked service pane.](../concepts/images/data-connect-synapse-service-id.png)

    1. In the **Table name** field, select **BasicDataSet_v0.Message_v1**, and then choose **OK**.

        ![A screenshot of the Set properties pane with Table name highlighted.](../concepts/images/data-connect-synapse-basic-dataset-choose.png)

    1. In the **Source** tab, locate the **Date filter** section and use the following values to configure it.
        - **Column name:** CreatedDateTime
        - **Start time (UTC):** Select a date sometime prior to the current date.
        - **End time (UTC):** Select the current date.
        - In the **Output columns** section, select **Import schema**.

            ![A screenshot of the Integrate page with Date filter highlighted.](../concepts/images/data-connect-synapse-import-schema.png)

    1. Select the **Sink** tab. Choose **New**, select **Azure Blob Storage**, and then choose **Continue**.  

    ![A screenshot of the Integrate page with the Sink tab and the New button highlighted.](../concepts/images/data-connect-synapse-sink.png)

    ![A screenshot of the New integration dataset pane with Azure Blob Storage highlighted.](../concepts/images/data-connect-synapse-integration-service.png)

    1. For the format for the data, select **Binary**, and then choose **Continue**.
    1. Give the dataset the name **M365JsonFile** and follow the next steps to create a new linked service if it does not exist already.

        ![A screenshot of the Set properties pane with Linked service highlighted.](../concepts/images/data-connect-synapse-set-properties.png)

        1. Under **Linked service**, choose **Select**, and then choose **+New**.
        1. In the dialog box, set the following values, and then choose **Create**.
            - **Authentication type:** Service Principal
            - **Azure subscription:** Select all.
            - **Storage account name:** mgdcm365datastore. This is the storage account created earlier in this exercise.
            - **Service principal ID:** Enter the ID of the Azure AD application you created.
            - **Service principal key:** Enter the hashed key of the Azure AD application you created.

        ![A screenshot of the New linked service pane with the pane highlighted.](../concepts/images/data-connect-synapse-new-linked-service.png)

    1. Next to the **File path** field, select **Browse**.

    1. Select the name of the storage container you created previously, choose **OK**, and then choose **OK** again.

        ![A screenshot of the Set properties pane with File path highlighted.](../concepts/images/data-connect-synapse-storage.png)

1. With the pipeline created, at the top of the designer, choose **Validate all**.  

![A screenshot of the Synapse Analytics Pipeline with validate all highlighted.](../concepts/images/data-connect-synapse-validateAll.png)

1. After validating (and fixing any issues that were found), at the top of the designer, choose **Publish all**.  

![A screenshot of the Synapse Analytics Pipeline with Publish all highlighted.](../concepts/images/data-connect-synapse-publishAll.png)

## Run the Azure Synapse Analytics pipeline

Now that you've created the pipeline, it's time to run it.

> [!NOTE]
> It can take several minutes for the consent request to appear, and it is not uncommon for the entire process (start, requesting consent, and after approving the consent completing the pipeline run) to take over 40 minutes.

1. In the Azure Synapse Analytics designer, with the pipeline open, select **Add trigger > Trigger Now**, and then choose **OK**.

    ![A screenshot of the Activities pane with Add trigger highlighted.](../concepts/images/data-connect-synapse-trigger.png)

1. After starting the job, from the sidebar menu, select **Monitor** to view the current running jobs.

1. On the left pane, select the **Pipeline runs** tab. In the **Pipeline name** column, select the pipeline to view the **Activity runs**. This pipeline will show as _In Progress_.

    ![A screenshot of the Pipeline runs page with Pipeline runs highlighted.](../concepts/images/data-connect-synapse-pipeline-runs.png)

1. After you're in the **Activity runs** view, go to the _Activity runs_ section on the bottom side of the page.

1. Hover over the **Activity name** and select the goggles option. This will open the **Details** tab.

    ![A screenshot of the pipeline page with the bottom pane highlighted.](../concepts/images/data-connect-synapse-activity-run.png)

1. In the **Details** screen, look for the status of the pipeline activity as highlighted in the following image. The status should progress through Initializing, Consent Pending, Extracting Data, Persisting Data and Succeeded – no further action needed from you for this.  

    ![A screenshot of the Details page with ConsentPending highlighted.](../concepts/images/data-connect-synapse-accept-request.png)

1. The request will be sent to the global admin to be approved. For the context of this tutorial, we recommend opening another tab with your admin priviledges enabled so you can approve the pipeline request.

# [Create an Azure Data Factory Pipeline](#tab/AzureDataFactoryPipeline)

1. Open a browser and go to your [Azure portal](https://portal.azure.com/).

1. Sign in using an account with [Application Administrator](/azure/active-directory/roles/permissions-reference#application-administrator) or [Application Developer](/azure/active-directory/roles/permissions-reference#application-developer) role to your Azure portal. Ensure that you are signed-in with your developer account that has privileges to create Azure resources within your subscription.

1. On the home page, select **Create a resource**.

1. Find the **Data Factory** resource type and use the following values to create it, then select **Create**.

    - **Subscription**: Select your Azure subscription.
    - **Resource group**:  Select the resource group you created previously.
    - **Region**: [pick an Azure region in the same region as your Microsoft 365 region](/graph/data-connect-datasets#regions)
    - **Name**: dM365toBlobStorage
    - **Version**: V2
    - Select **Review + create**, and then select **Create**.

1. After the Azure Data Factory resource is created, select **Go to resource**, and then select the **Launch studio** button to launch the Azure Data Factory full screen editor.

    ![A screenshot of the Azure portal Data Factory service page with Open Azure Data Factory Studio highlighted.](../concepts/images/data-connect-adf-studio-new.png)

1. Switch from the **Overview** (home icon) to the **Manage** (toolbox icon) experience by selecting it from the left-hand navigation.

1. By default, the Azure Data Factory uses an integration runtime that is auto-resolving the region. We recommend for the context of this tutorial in the developer tenant, to use the default auto-resolve.  
    1. Select **Integration runtimes** > **New**.
    2. Select **Azure, Self-Hosted** and select **Continue**.

        ![A screenshot of the Azure portal Data Factory service page with Azure, self-hosted selected.](../concepts/images/data-connect-adf-integration-runtime-b-new.png)

    3. Select **Azure** for network environment and select **Continue**.

        ![A screenshot of the Azure portal Data Factory service page with the Azure option selected for the network environment.](../concepts/images/data-connect-adf-network-new.png)

    4. Use the following details to complete the form on the final screen, and then select **Create**.

        - **Name**: Name of your integration runtime.
        - **Region**: Select the region that matches your Microsoft 365 region.
        - **Virtual network configuration (preview)**: Disabled

1. Switch from the **Manage** (toolbox icon) to the **Author** (pencil icon) experience by selecting it from the left-hand navigation.
1. Create a new pipeline by selecting the **plus** icon, then **pipeline**.

    ![A screenshot of the Azure portal Data Factory service page with Pipeline highlighted.](../concepts/images/data-connect-adf-pipeline-create.png)

    1. In the search box, enter *Copy data* and then drag the **Copy data** activity from the **Move & transform** section onto the design surface.

        ![A screenshot of the Azure portal Data Factory service page with the Copy data, Name, and Description fields highlighted.](../concepts/images/data-connect-adf-pipeline-copy-data.png)

    1. Select the activity in the designer.
    1. Select the **General** tab and give it a name.
        - **Name**: CopyFromM365toBlobStorage

    1. In the activity editor pane under the designer, select the **Source** tab, and then select **New**.

          ![A screenshot of the Azure portal Data Factory service page with creating a new pipeline source.](../concepts/images/data-connect-adf-pipeline-source-new.png)

    1. Locate and select the dataset **Microsoft 365 (Office 365)**, and then select **Continue**.

        ![A screenshot of the Azure portal Data Factory service page with Microsoft 365 (Office 365) and Continue highlighted.](../concepts/images/data-connect-adf-m365icon-new.png)

    1. In the **Set properties** pane, click the **Linked service** dropdown, and then select **New**.

        ![A screenshot of the Azure portal Data Factory service page with New linked service pane highlight selecting new.](../concepts/images/dataconnect-adf-source-newlinkedservice.png)

    1. In the dialog that appears, select the integration runtime you previously created in the **Connect via integration runtime** dropdown.
    1. Enter the previously created **Application ID** and **Client Secret Value** of the Azure AD application in the **Service principal ID** and **Service principal key** fields respectively.
    1. Then click **Create**.  

        ![A screenshot of the Azure portal Data Factory service page with the service principal key configured.](../concepts/images/data-connect-adf-linked-service.png)

    1. After creating the Microsoft 365 connection, for the **Table name** field, select **BasicDataSet_v0.Message_v1**, and then select **OK**.

        ![Screenshot of the Azure portal Factory resources page with the list of datasets expanded.](../concepts/images/data-connect-adf-dataset.png)

    1. In the **Source** tab, locate the **Date filter** section and use the following values to configure it.
        - **Column name**: CreatedDateTime
        - **Start time (UTC)**: Select a date sometime prior to the current date.
        - **End time (UTC)**: Select the current date.
        - Select **Import schema** in the _Output columns_ section.

    1. Select the **Sink** tab.

        ![A screenshot of the Azure portal Factory resources page with the Sink tab highlighted.](../concepts/images/data-connect-adf-copy-activity.png)

        1. Click the **New** button, select **Azure Blob Storage**, and then select the **Continue** button.
        1. Select **Binary** as the format for the data, and then select the **Continue** button.

        1. In the **Set properties** pane, change the **Name** field to **M365JsonFile**
        1. Click **Select** under **Linked service**, and then click **+New**.
        1. Set the following values in the dialog, then select **Create**.  

            - **Authentication type**: Service Principal
            - **Azure subscription**: Select all
            - **Storage account name**: Select the storage account you previously created
            - **Tenant**: Enter the ID of your Azure tenant
            - **Service principal ID**: Enter the ID of the Azure AD application you previously created
            - **Service principal key**: Enter the client secret value of the Azure AD application you previously created
        1. Click **Create**

    1. In the Set **properties** pane, next to the **File path** field, click the folder icon to Browse.
    1. Select the **m365mails** storage container you created previously, choose **OK**, and choose **OK** again.

      ![A screenshot of the Azure portal Factory resources page with the file path field highlighted.](../concepts/images/data-connect-adf-sa-fp-config.png)

1. With the pipeline created, select the **Validate all** button at the top of the designer.

      ![A screenshot of the Azure portal Factory resources page with validate all highlighted.](../concepts/images/data-connect-adf-validate-all.png)

1. After validating (and fixing any issues that were found), select the **Publish all** button at the top of the designer.  

      ![A screenshot of the Azure portal Factory resources page with publish all highlighted.](../concepts/images/data-connect-adf-publish-all.png)

## Run the Azure Data Factory pipeline

With the pipeline created, now it is time to run it.

> [!NOTE]
> It can take several minutes for the consent request to appear and it is not uncommon for the entire process (start, requesting consent and after approving the consent completing the pipeline run) to take over 40 minutes.

1. In the Azure Data Factory designer, with the pipeline open, select **Add trigger > Trigger Now** and then select **OK**.

    ![A screenshot of the Azure portal Factory resources page with Trigger now highlighted.](../concepts/images/data-connect-adf-run-trigger.png)

1. After starting the job, from the sidebar menu, select **Monitor** to view current running jobs.

1. On the left-side navigation bar, locate the **Pipeline runs** tab and select it. Select the pipeline under the **Pipeline name** column to view the **Activity runs**. This pipeline will show as _In progress_.

    ![A screenshot of the Azure portal Pipeline runs page with pipeline1 highlighted.](../concepts/images/data-connect-adf-pipeline-runs.png)

1. After you're in the **Activity runs** view, go to the _Activity runs_ section that is located in the bottom side of the page.

1. Hover over the **Activity name** and select the goggles option. This will bring up the **Details** tab.

    ![A screenshot of pipeline1 with the Details tab highlighted.](../concepts/images/data-connect-adf-pipeline-details.png)

1. In the **Details** screen, look for the status of the pipeline activity as highlighted in the following image. The status should progress through Initializing, Consent Pending, Extracting Data, Persisting Data, and Succeeded; this step doesn't require any further action from you.

    ![A screenshot of the Details tab with RequestingConsent highlighted.](../concepts/images/data-connect-adf-wait-for-approval.png)

1. The request will be sent to the global admin to be approved. For the context of this tutorial, we recommend opening another tab with your admin priviledges enabled so you can approve the pipeline request.
