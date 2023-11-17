---
title: "Microsoft Graph Data Connect templates"
description: "Make use of templates that are available to help you build Microsoft Graph Data Connect solutions."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Microsoft Graph Data Connect templates

Collaboration and communication activities generate a massive amount of rich data in Microsoft 365. You can use Microsoft Graph Data Connect to help you gain insights about your organization. The Data Connect templates help you to reduce the time required to gain data insights and enrich those insights with your own data.

The Microsoft Graph Data Connect templates can help you realize possibilities with your Microsoft 365 data, and accelerate time to added value. Each template contains resources that are specific to different use cases and business scenarios. You can use these templates to help get started with:

- Entity Sentiment Analysis
  - Extract entities from Outlook and Teams data. Then, analyze how users feel about those entities.
  - Sets up Synapse Workspace, Apache Spark Pool, Azure Datalake Storage Account, and Azure Congitive Services resources.
- Organizational Network Analysis
  - Identify collaboration and communication patterns that are key for organizations to achieve real business agility.
  - Sets up Synapse Workspace, Apache Spark Pool, and Azure Datalake Storage Account resources.
- Information Oversharing
  - Secure your business by identifying patterns of information oversharing and fraud in your Microsoft 365 data.
  - Sets up Synapse Workspace, Apache Spark Pool, and Azure Datalake Storage Account resources.

The templates help you quickly provision Azure resources and provide data pipelines and samples that you can use to realize value right away.

To learn more and get started with the Microsoft Graph Data Connect templates, see the [Data Connect solutions GitHub repository](https://github.com/microsoftgraph/dataconnect-solutions/tree/main).

## Quick Start Templates

Quick Start Templates help to easily setup pipelines for extraction of Microsoft Graph Data Connect datasets along with the Azure resources to deploy them. Configuring data pipelines becomes expedite as the details of registered applications are leveraged for efficiency. Currently, the Quick Start Templates only support Azure Data Factory as the platform and the Copy Activity as the Activity Type. Support for other platforms and activity types will follow.

### Prerequisites

To use the Quick Start Templates, ensure the following prerequisites are met: 

- The Microsoft Graph Data Connect application must be configured before using this feature. Refer to the instructions [here](/graph/data-connect-quickstart?tabs=AzureSynapsePipeline%2CMicrosoft365) on how to create a Microsoft Graph Data Connect application.
- The application secret of the Azure Entra application used during Microsoft Graph Data Connect application registration. Refer to the instructions [here](/graph/data-connect-quickstart?tabs=NewConsentFlow%2CPAMMicrosoft365%2CAzureSynapsePipeline&tutorial-step=2).
- A container in Azure storage destination to write data to. Refer to the instructions [here](/graph/data-connect-quickstart?tabs=NewConsentFlow%2CPAMMicrosoft365%2CAzureSynapsePipeline&tutorial-step=3).

### Instructions

1) Open your application from the homepage of Microsoft Graph Data Connect in the Azure Portal and navigate to the Quick Start Templates tab:

![An image that shows the selection of the Quick Start Templates tab in the Microsoft Graph Data Connect extension in Azure Portal.](images/data-connect-templates-quickstart-1.png)

2) Click Start in the Quick Pipeline Set-Up template.

![An image that shows Quick Pipeline Set-Up template within the Templates tab in the Microsoft Graph Data Connect extension in Azure Portal.](images/data-connect-templates-quickstart-2.png)

3) Fill in the remaining values in the pre-populated custom deployment form.

![An image that shows the custom deployment form to setup the Quick Pipeline Set-Up template for Microsoft Graph Data Connect.](images/data-connect-templates-quickstart-3.png)

The form is composed by the following fields:
- **Resource Group**: The resource group where your storage account is located. This would be used for the Azure Data Factory location as well.
- **Service Principal Id**: This is the Azure Entra application used to create an application with Microsoft Graph Data Connect. This field is *pre-populated*.
- **Tenant Id**: This is the tenant for which data is being extracted. This field is *pre-populated*.
- **Application Secret**: This is the secret value of the Azure Entra application used during registration.
- **Azure Data Factory Name**: This field is *pre-populated* by appending the unique string associated with the resource group ID to the string "datafactory". However, you can also provide an existing Azure Data Factory resource or enter a new unique name for a new Azure Data Factory resource.
- **Datasets**: This field is *pre-populated*. One pipeline will be generated per dataset.
- **Storage Container**: The root container in the Azure storage destination where data will be written to. 

4) Click Review + Create to proceed.

A deployment status screen will appear to monitor the creation of the resources.

![An image that shows the progress of a custom deployment of Azure resources.](images/data-connect-templates-quickstart-4.png)

5) Navigate to the Azure Data Factory resource in the selected resource group.

If a new Azure Data Factory resource was created during the deployment, you can click on the resource name from the Deployment details pane.

![An image that shows the selection of an Azure Data Factory resource within the Deployment details pane.](images/data-connect-templates-quickstart-6.png)

6) Select a dataset within a Copy Activity of a pipeline and configure the data filters for the extraction.

![An image that shows how to configure dataset filters in an Azure Data Factory Copy Activity.](images/data-connect-templates-quickstart-5.png)

Before triggering the pipeline, click on each Copy Activity to configure the applicable filters to each dataset. For more information about column filters, visit the following documentation about [User selection and filtering capabilities in Microsoft Graph Data Connect](/graph/data-connect-filtering).

7) Trigger the pipeline using the Add trigger button.

 ![An image that highlights the Add trigger button in an Azure Data Factory pipeline.](images/data-connect-templates-quickstart-7.png)
