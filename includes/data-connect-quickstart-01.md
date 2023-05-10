---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

Microsoft Graph Data Connect (Data Connect) augments transactional APIs with an intelligent way to access rich data at scale. The data covers how workers communicate, collaborate, and manage their time across all the Microsoft 365 applications and services.

Data Connect is ideal for big data applications and machine learning as it allows you to develop applications for analytics, intelligence, and business process optimization by extending Microsoft 365 data into Microsoft Azure. Through this offering, you'll be able to take advantage of the vast suite of compute and storage in Azure while staying compliant with industry standards and keeping your data secure.

![An architectural diagram of Microsoft Graph data connect, showing defined data controls, extending Office 365 data into Azure, and enabling big data and machine learning.](../concepts/images/data-connect-mgdc-capabilities.PNG)

Data Connect uses Azure Synapse or Azure Data Factory to copy Microsoft 365 data to your application's storage at configurable intervals. It also provides a set of tools to streamline the delivery of this data to Azure, letting you access the most applicable development and hosting tools available.

Data Connect also grants a more granular control and consent model: you can manage data, see who is accessing it, and request specific properties of an entity. This enhances the Microsoft Graph model, which grants or denies applications access to entire entities.

Additionally, you can use Data Connect to enable machine learning scenarios for your organization. In these scenarios, you can create applications that provide valuable information to your stakeholders, train machine learning models, and even perform forecasting based on large amounts of acquired data.

## Get started

In this tutorial, you'll create your first single-tenant Microsoft Graph Data Connect application. Exciting, right? We think so too! To get started, you'll need to set up a few things first.

### Prerequisites

To complete this tutorial, you'll need the following subscriptions or licenses.

- Your Microsoft 365 and Azure tenants must be in the same Azure Active Directory (Azure AD) tenancy.
- The Azure subscription must be in the same tenant as the Microsoft 365 tenant. Microsoft Graph Data Connect can export data across tenants (for example, to enable ISVs), but this will not be explored in this tutorial.
- One user in your Microsoft 365 tenant has the [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator) role enabled. Going forward, this tutorial refers to this user as the "admin". Only an "admin" user can approve the test application.
- A different user in your Microsoft 365 tenant with [Application Administrator](/azure/active-directory/roles/permissions-reference#application-administrator) or [Application Developer](/azure/active-directory/roles/permissions-reference#application-developer) role. Going forward, this tutorial refers to this user as the "developer".  
- For this tutorial, we highly recommend that you use a Microsoft 365 developer tenant.

1. **Microsoft 365 tenancy**

   - If you don't have a Microsoft 365 tenant, you can get one (for free) by signing up to the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program). The Microsoft 365 Developer Program sandbox subscription provides:
   - Multiple Microsoft 365 users with emails sent and received.
   - Access to at least two user accounts:
      - A "developer" account that can create and trigger a test application and pipelines. 
      - An "admin" account that can access the [Microsoft 365 admin center](https://admin.microsoft.com/), specifically to approve the test application.  
      >**Note:** You can't approve your own test application using the same account. Ensure that you have another member (or account) in your tenant that acts as an "admin".
   - Note the Microsoft 365 region where your tenant is located. If you create a new tenant, ensure it is one of the [regions supported by Microsoft Graph Data Connect](/graph/data-connect-datasets#regions).
     
2. **Microsoft Azure subscription**

   - If you don't have a Microsoft Azure subscription, visit the following link to get one (for free): https://azure.microsoft.com/free/.
   - Your Azure subscription must be in the same tenant as your Microsoft 365 tenant and both must be in the same Azure AD tenancy.
   - If your Azure subscription isn't in the same tenant as your Microsoft 365 tenant, you can associate your subscription with Azure AD in your Microsoft 365 tenant by following the steps listed in [Associate or add an Azure subscription to your Azure Active Directory tenant](/azure/active-directory/fundamentals/active-directory-how-subscriptions-associated-directory).

> [!NOTE]
> The screenshots and examples used in this tutorial are from a Microsoft 365 test tenant with sample email from test users. You can use your own Microsoft 365 tenant to perform the same steps. No data is written to Microsoft 365. A copy of email data is extracted from all users in a Microsoft 365 tenant and copied to an Azure Blob Storage account. You maintain control over who has access to the data within the Azure Blob Storage.
