# Managed Access to Microsoft Graph 

Managed Access to Microsoft Graph brings Office 365 data and Microsoft Azure resources to you through a core data pipeline. You can use Managed Access to build intelligent applications that access valuable data using the best development tools offered by Microsoft, all within the Microsoft secure cloud. All businesses are interested in improving productivity, which means that building products that make knowledge workers more productive presents tremendous opportunities. 

You can take advantage of Managed Access if you are:

- An ISV building intelligent applications for all Office 365 customers
- An enterprise developer building intelligent applications for everyone inside of your organization that access Office 365 data.

## Develop a pipeline with Office 365 data
This system enables developers to create new types of applications based on Office 365 data using the best tooling inside Microsoft Azure. You can use Azure Data Factory to move Office 365 data into popular Azure data stores: Azure Data Lake Generation 1, Generation 2 or Azure Blob Storage. Once the data resides there, developers can then process the data (using Azure Data Lake Analytics for example) or move it into an additional store, like Azure SQL Database. This data can then be utilized to service your application's end user scenario.

Before the Azure Data Factory pipeline can move data from Office 365, a data request consent is sent to customer's Office 365 administrator designated data approvers. Data movement begins only upon approval by the data approvers.

## Publish your app as an Azure Managed Application
After developing an application using this system, you can make that application available to others (either in their organization or more broadly). Managed Access leverages [Azure Managed Applications](https://docs.microsoft.com/en-us/azure/managed-applications/overview) to make these applications available to others through the Microsoft Azure Marketplace. Azure Managed Applications allows ISVs and enterprise developers to deliver turn-key solutions to their customers. Customers deploy these managed applications in their subscriptions while the vendors (ISV and Enterprise developer) will manage and support these applications. Application vendors can also apply [policies](https://docs.microsoft.com/en-us/azure/managed-applications/overview#azure-policy) to their applications, such as encryption at rest, to give their customer's the peace of mind that their data is being handled in a secure and compliant manner. Applications can be published either to [Azure Marketplace](https://docs.microsoft.com/en-us/azure/managed-applications/publish-marketplace-app) or the [Azure service catalog](https://docs.microsoft.com/en-us/azure/managed-applications/publish-service-catalog-app).

Customers installing the application will see the terms of service, the data that is required, price for each application SKU and approximate cost for resource consumption. Once the properties are specified by the purchaser the resources are provisioned. This includes the Data Factory pipeline that begins extracting data. The purchaser is given a ReadMe from the developer author about when to expect the installation to be complete, how to use the application, and how to get support.

## Next Steps 
To get started developing with our platform, see (Overview of Managed Access)(link to Learn topic)
