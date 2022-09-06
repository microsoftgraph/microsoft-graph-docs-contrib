---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

The next step is to use the Azure Data Factory to create a pipeline to extract the data from Microsoft 365 to the Azure Storage account using Microsoft Graph Data Connect.

## Create an Azure Data Factory pipeline

1. Open a browser and go to your [Azure portal](https://portal.azure.com/).

1. Sign in using an account with **[Application Administrator](/azure/active-directory/roles/permissions-reference#application-administrator)** or **[Application Developer](/azure/active-directory/roles/permissions-reference#application-developer)** role to your Azure portal. Ensure that your account has privileges to create Azure resources within your subscription.

1. On the home page, select **Create a resource**.

1. Find the **Data Factory** resource type and use the following values to create it, then select **Create**.

    - **Subscription**: select your Azure subscription
    - **Resource group**: GraphDataConnect
    - **Region**: [pick an Azure region in the same region as your Microsoft 365 region](/graph/data-connect-datasets#regions)
    - **Name**: dM365toBlobStorage
    - **Version**: V2

       <!-- ![A screenshot showing the successful creation of the new Azure Data Factory service in the Azure portal.](../concepts/images/data-connect-adf-create.png) -->
    - Select **Next: Git configuration >**.
    - In the **Git configuration** tab, make sure you either configure Git or select the option _Configure Git later_.
    - Select **Review + create**, and then select **Create**.

1. After the Azure Data Factory resource is created, select **Go to resource** and then select the **Open Azure Data Factory Studio** tile to launch the Azure Data Factory full screen editor.

    ![A screenshot showing the Azure Portal UI for the Data Factory service. The user is clicking the Author and Monitor button.](../concepts/images/data-connect-adf-studio-new.png)

1. Switch from the **Overview** (home icon) to the **Manage** (toolbox icon) experience by selecting it from the left-hand navigation.

1. By default, the Azure Data Factory will use an integration runtime that is auto-resolving the region. Because Data Connect requires that your source, destination, and integration runtime exist in the same Microsoft 365 region, we recommend that you create a new integration runtime with a fixed region.
    1. Select **Integration runtimes** > **New**.
    2. Select **Azure, Self-Hosted** and select **Continue**.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is selecting the Azure option for the network environment.](../concepts/images/data-connect-adf-integration-runtime-b-new.png)

    3. Select **Azure** for network environment and select **Continue**.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is selecting the Azure option for the network environment.](../concepts/images/data-connect-adf-network-new.png)

    4. Use the following details to complete the form on the final screen and then select **Create**.

        - **Name**: name of your integration runtime
        - **Description**: enter a description
        - **Region**: select the region that matches your Microsoft 365 region
        - **Virtual network configuration (preview)**: Disabled

1. Switch from the **Manage** (toolbox icon) to the **Author** (pencil icon) experience by selecting it from the left-hand navigation.
1. Create a new pipeline by selecting the **plus** icon, then **pipeline**.

    ![A screenshot showing the Azure portal UI for the Data Factory service. The user is creating a new pipeline.](../concepts/images/data-connect-adf-pipeline-create.png)

    1. In the search box, enter *Copy data*  and then drag the **Copy data** activity from the **Move & transform** section onto the design surface.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is dragging the copy data activity into the editor on the right side of the screen.](../concepts/images/data-connect-adf-pipeline-copy-data.png)

    1. Select the activity in the designer.
    1. Select the **General** tab and give it a name and description.
        - **Name**: CopyFromM365toBlobStorage
        - **Description**: A description you want

    1. In the activity editor pane below the designer, select the **Source** tab, then select **New**.

    1. Locate and select the dataset **Microsoft 365 (Office 365)** and then select the **Continue** button.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is selecting the Office 365 dataset in the UI and selecting the continue button afterwards.](../concepts/images/data-connect-adf-m365icon-new.png)

    1. The designer will update the **Source** tab with the Microsoft 365 connector settings.
    1. In the dialog that appears, enter the previously created Azure Active Directory (Azure AD) application's **Application ID** and **Secret ID** in the **Service principal ID** and **Service principal key** fields respectively, then select **Create**.
    1. Select the integration runtime you previously created in the **Connect via integration runtime** dropdown.
    1. Click **Select** under **Linked service** and then click **+New**.
    1. In the dialog that appears, select the integration runtime you previously created in the **Connect via integration runtime** dropdown, enter the previously created Azure AD application's **Application ID** and **Secret ID** in the **Service principal ID** and **Service principal key** fields respectively, and select **Create**.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is configuring the integration runtime with the service principal key.](../concepts/images/data-connect-adf-linked-service.png)

    1. After creating the Microsoft 365 connection, for the **Table name** field, select **BasicDataSet_v0.Message_v0** and then select **OK**.

        ![Screenshot explaining dataset](../concepts/images/data-connect-adf-dataset.png)

    1. In the **Source** tab, locate the **Date filter** section and use the following values to configure it.
        - **Column name**: CreatedDateTime
        - **Start time (UTC)**: select a date sometime prior to the current date
        - **End time (UTC)**: select the current date
        - Select **Import schema** in the _Output columns_ section.

    1. Select the **Sink** tab.

        ![A screenshot explaining basic dataset and copy activity](../concepts/images/data-connect-adf-copy-activity.png)
        1. Select the **New** button, select **Azure Blob Storage** or **Azure Data Lake Gen2**, and then select the **Continue** button.
        1. Select **Binary** as the format for the data and then select the **Continue** button.

        1. Give the dataset the name **M365JsonFile** and follow the next steps to create a new linked service if it does not exist already.
        1. Click **Select** under **Linked service** and then click **+New**.
        1. Set the following values in the dialog, then select **Create**.

            - **Authentication type**: Service Principal
            - **Azure subscription**: Select all
            - **Storage account name**: mgdcdemoapp
                - This is the storage account created earlier in this exercise.
            - **Tenant**: enter the ID of your Azure tenant
            - **Service principal ID**: enter the ID of the Azure AD application you previously created
            - **Service principal key**: enter the hashed key of the Azure AD application you previously created

    1. Next to the **File path** field, select **Browse**.
    1. Select the name of the storage container you created previously, select **OK**, and select **OK** again.

      ![A screenshot showing the Azure portal UI for the Data Factory service. The user is configuring the container and file path in the sink properties.](../concepts/images/data-connect-adf-sa-fp-config.png)

1. With the pipeline created, select the **Validate all** button at the top of the designer.

1. After validating (and fixing any issues that were found), select the **Publish all** button at the top of the designer.

## Run the Azure Data Factory pipeline

With the pipeline created, now it is time to run it.

> [!NOTE]
> It can take several minutes for the consent request to appear and it is not uncommon for the entire process (start, requesting consent and after approving the consent completing the pipeline run) to take over 40 minutes.

1. In the Azure Data Factory designer, with the pipeline open, select **Add trigger > Trigger Now** and then select **OK**.

    ![A screenshot showing the Azure portal UI for the Data Factory service to show how to activate a trigger in the pipeline.](../concepts/images/data-connect-adf-run-trigger.png)

1. After starting the job, from the sidebar menu, select **Monitor** to view current running jobs.

1. On the left-side navigation bar, locate the **Pipeline runs** tab and select it. Select the pipeline under the **Pipeline name** column to view the **Activity runs**. This pipeline will show as _In progress_.

    ![A screenshot showing the Azure portal UI for Data Factory, it is showing the pipeline runs list.](../concepts/images/data-connect-adf-pipeline-runs.png)

1. After you're in the **Activity runs** view, go to the _Activity runs_ section, which is located in the bottom side of the page.

1. Hover over the **Activity name** and select the goggles option. This will bring up the **Details** tab.

    ![A screenshot showing the Azure Portal UI for Data Factory Activity Runs, the user is selecting the googles in the activity name to open the details tab.](../concepts/images/data-connect-adf-pipeline-details.png)

1. In the **Details** screen, look for the status of the pipeline activity as highlighted in the following image. In this case you can see it is in a state of **ConsentPending**. Close the **Details** dialog.

    ![A screenshot showing the Azure portal UI for the Data Factory service where the request's load status is set to "RequestingConsent".](../concepts/images/data-connect-adf-wait-for-approval.png)

1. At this point, the activity run is internally paused until someone manually approves the consent request via the Microsoft 365 admin center or via PowerShell.
