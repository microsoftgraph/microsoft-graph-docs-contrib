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

In this tutorial, you'll create your first Data Connect application. Exciting, right? We think so too! To get started, you'll need to set up a few things first.

### Prerequisites

To complete this tutorial, you'll need the following subscriptions or licenses.

- The Azure subscription must be in the same tenant as the Microsoft 365 tenant. Microsoft Graph Data Connect will only export data to an Azure subscription in the same tenant, not across tenants.
- Your Microsoft 365 and Azure tenants must be in the same Azure Active Directory (Azure AD) tenancy.
- Ensure that two users in your Microsoft 365 tenant have the **Global Administrator** role enabled. For more details, see [Global Administrator built-in role](/azure/active-directory/roles/permissions-reference#global-administrator).

1. **Microsoft 365 tenancy**

   - If you don't have a Microsoft 365 tenant, you can get one (for free) by signing up to the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program). The Microsoft 365 Developer Program sandbox subscription provides:
   - Multiple Microsoft 365 users with emails sent and received.
   - Access to at least two accounts that meet the following requirements:
      - Must have the **Global Administrator** role assigned to you to have access to the [Microsoft 365 admin center](https://admin.microsoft.com/).
      - Must have an **existing Exchange Online license with E5 SKU**.
     
2. **Microsoft Azure subscription**

   - If you don't have one, you can get one (for free) on the [Azure website](https://azure.microsoft.com/free/).
   - The account used to sign in must be granted the **Global Administrator** role.
   - Your Azure subscription must be in the same tenant as your Microsoft 365 tenant and both must be in the same Azure AD tenancy.
   - The Azure subscription must be in the same tenant as the Microsoft 365 tenant, as Microsoft Graph Data Connect will only export data to an Azure subscription in the same tenant, not across tenants. If your Azure subscription isn't in the same tenant as your Microsoft 365 tenant, you can associate your subscription with Azure AD in your Microsoft 365 tenant. To do so, follow the steps listed in [Associate or add an Azure subscription to your Azure Active Directory tenant](/azure/active-directory/fundamentals/active-directory-how-subscriptions-associated-directory).

<!--This can stay for now, please update this once we remove the ASP.NET page-->
3. Make sure you have [Visual Studio](https://visualstudio.microsoft.com/vs/) installed on your development computer.

> [!NOTE]
> The screenshots and examples used in this tutorial are from a Microsoft 365 test tenant with sample email from test users. You can use your own Microsoft 365 tenant to perform the same steps. No data is written to Microsoft 365. A copy of email data is extracted from all users in a Microsoft 365 tenant and copied to an Azure Blob Storage account. You maintain control over who has access to the data within the Azure Blob Storage.
