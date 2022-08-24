---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

You can also use Azure Synapse instead of Azure Data Factory to create a pipeline to extract the data from Microsoft 365 to the Azure Storage account using Microsoft Graph Data Connect.

## Create an Azure Synapse pipeline

1. Open a browser and go to your [Azure Portal](https://portal.azure.com/#home).

2. Sign in using an account with **Global administrator** rights to your Azure and Microsoft 365 tenants.

3. On the sidebar navigation, select **Create a resource**. 

4. Find the **Azure Synapse Analytics** resource type and use the following values to create it, then select **Create**. 
    1. **Subscription:** select your Azure subscription 
    2. **Resource group:** GraphDataConnect 
    3. **Region:** pick an Azure region in the same region as your Microsoft 365 region 
    4. **Name:** m365tostorage 
    5. **Account name:** synapsedatalstorage 
    6. **File system name:** flsynapse 

    ![Screenshot shows create](.../concepts/images/data-connect-synapse-create.png)

    ![Screenshot shows workspace](.../concepts/images/data-connect-synapse-workspace.png)

5. After the Azure Synapse Analytics resource is created, select the **Open Synapse Studio** tile to launch Azure Synapse

    ![Screenshot showing open synapse studio](.../concepts/images/azure-synapse-studio-tile.png)

6. By default, Azure Synapse will use an integration runtime that is auto-resolving the region. Microsoft Graph Data Connect requires that your source, destination, and integration runtime exist in the same Microsoft 365 region. Therefore, we recommend you create a new integration runtime with a fixed region.

    1. Switch to the **Manage hub > Integration runtimes > New**.

    2. Select **Azure, Self-Hosted** and select **Continue**.

    ![Screenshot showing IR](.../concepts/images/data-connect-synapse-IR.png)

    3. Select **Azure** for network environment and select **Continue**.

    ![Screenshot showing azure network env](.../concepts/images/data-connect-synapse-azure.png)

    4. Use the following details to complete the form on the final screen and then select **Create**.
        - **Name**: name of your integration runtime
        - **Description**: enter a description
        - **Region**: select the region that matches your Microsoft 365 region

7. Switch from the **Manage** to the **Integrate** experience by selecting it from the left-hand navigation.

8. Create a new pipeline by selecting the **Plus** icon, then **Pipeline**.

    ![Screenshot showing azure network env](.../concepts/images/data-connect-synapse-pipeline.png)

    1. Drag the **Copy Data** activity from the **Move and Transform** section onto the design surface.

    ![Screenshot showing move and transform](.../concepts/images/data-connect-synapse-move-transform.png)
    
    2. Select the activity in the designer.
    3. Select the **General** tab and give it a name and description.
        - **Name:** CopyFromM365toStorage
        - **Description:** A description you want.
        - In the activity editor pane below the designer, select the **Source** tab, then select **New**.

            ![Screenshot General tab](.../concepts/images/data-connect-synapse-general.png)

    4. Locate the dataset **Microsoft 365 (Office 365)**, select it and then select the **Continue** button.
        
        ![Screenshot locate dataset](.../concepts/images/data-connect-synapse-locate-dataset.png)
        
    5. In the table settings for **Linked Service** click on the **New** button.
        
        ![Screenshot for linked service](.../concepts/images/data-connect-synapse-linked-service.png)
        
    6. In the dialog that appears, enter the previously created Integration runtime, Azure AD application's **Application ID** and **Secret ID** in the **Service principal ID** and **Service principal key** fields respectively, then select **Create**.
        
        ![Screenshot for synapse service](.../concepts/images/data-connect-synapse-service-id.png)

    7. After creating the Microsoft 365 connection, for the **Table name** field, select **BasicDataSet_v0.Message_v1**
        
        ![Screenshot for choose basic dataset](.../concepts/images/data-connect-synapse-basic-dataset-choose.png)
        
    8. Use the following values for the **Date Filter**
        - **Column name:** CreatedDateTime
        - **Start time (UTC):** select a date sometime prior to the current date
        - **End time (UTC):** select the current date
        - Select **Import schema** in the Output columns section.

            ![Screenshot for importing schema](.../concepts/images/data-connect-synapse-import-schema.png)
    
    9. Select the **Sink** tab.
        - Select the **New** button, select **Azure Blob Storage**, and then select the **Continue** button.

            ![Screenshot covers sink tabs](.../concepts/images/data-connect-synapse-sink.png)

            ![Screenshot covers integration service](.../concepts/images/data-connect-synapse-integration-service.png)

        - Select **Binary** as the format for the data and then select the **Continue** button.
        - Give the dataset the name **M365JsonFile** and create a new linked service if it does not exist already.

            ![Screenshot covers M365 properties](.../concepts/images/data-connect-synapse-set-properties.png)

    10. Set the following values in the dialog, then select **Finish**.
        - **Authentication method:** Service principal
        - **Azure subscription:** Select all
        - **Storage account name:** mgdcm365datastore. This is the storage account created earlier in this exercise.
        - **Service principal ID:** enter the ID of the Azure AD application you previously created
        - **Service principal key:** enter the hashed key of the Azure AD application you previously created.

            ![Screenshot covers new linked service](.../concepts/images/data-connect-synapse-new-linked-service.png) 
    
    11. Next to the **File path** field, select **Browse.**
    
    12. Select the name of the storage container you created previously.

        ![Screenshot for storage container](.../concepts/images/data-connect-synapse-storage.png)

9. With the pipeline created, select the **Validate All** button at the top of the designer.

10.	After validating (and fixing any issues that were found), select the **Publish All** button at the top of the designer.

# Run the Azure Synapse Analytics Pipeline

With the pipeline created, now it is time to run it.

> [!NOTE]
> It can take several minutes for the consent request to appear and it is not uncommon for the entire process (start, requesting consent and after approving the consent completing the pipeline run) to take over 40 minutes.

1. In the Azure Synapse integrate tab with the pipeline open, select **Add trigger > Trigger Now**.

    ![Screenshot for adding triggers](.../concepts/images/data-connect-synapse-trigger.png)

2.	After starting the job, from the sidebar menu, select **Monitor** to view current running jobs.

3.	On the left-side navigation bar, locate the **Pipeline runs** tab and select it. Select the pipeline under the **Pipeline name** column to view the **Activity runs**. This pipeline will show as *In Progress*.

    ![Screenshot for adding triggers](.../concepts/images/data-connect-synapse-pipeline-runs.png)

4.	After you are in the **Activity runs** view, go to the **Activity runs** section, which is located in the bottom side of the page.

5.	Hover over the **Activity name** and select the goggles option. This will bring up the **Details** tab.

    ![Screenshot for activity runs](.../concepts/images/data-connect-synapse-activity-run.png)

6.	In the **Details** screen, look for the status of the pipeline activity as highlighted in the following image. In this case you can see it is in a state of **RequestingConsent**.

    ![Screenshot for requesting consent](.../concepts/images/data-connect-synapse-accept-request.png)

7. At this point, the activity run is internally paused until someone manually approves the consent request via the Microsoft 365 admin center or via PowerShell.






