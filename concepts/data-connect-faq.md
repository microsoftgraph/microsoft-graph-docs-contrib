---
title: "Microsoft Graph Data Connect FAQ"
description: "Find answers to frequently asked questions about how Data Connect lets developers create apps that provide managed access to at-scale Microsoft Graph datasets."
author: "fercobo-msft"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Microsoft Graph Data Connect frequently asked questions

Microsoft Graph Data Connect lets developers create applications that customers can use to provide managed access to their at-scale Microsoft Graph datasets. This article provides tips that will help you take advantage of the Microsoft Graph Data Connect feature. For an introduction to Microsoft Graph Data Connect, see the [overview](data-connect-concept-overview.md).

## Is Microsoft Graph Data Connect right for me?

Microsoft Graph Data Connect and Microsoft Graph APIs provide access to the same underlying data but in very different ways. Microsoft Graph Data Connect is designed to extract large amounts of datasets in bulk scalable to your entire organization while Microsoft Graph APIs are suitable for accessing small amount of data from select users and groups in your organization.

For example, you might want to use Microsoft Graph Data Connect to do an initial extraction of the last year of email data, and then use Microsoft Graph APIs to analyze emails in real time moving forward. Microsoft Graph Data Connect and Microsoft Graph APIs are different tools for different jobs. It's important to think about which access method best fits your scenario. For more information, see [When should I use Microsoft Graph API or Microsoft Graph Data Connect](/graph/overview#when-should-i-use-microsoft-graph-api-or-data-connect).

## Is there any initial overhead?

Because Data Connect is designed to extract large amounts of data in bulk, some overhead is incurred before the data can be extracted. This overhead is around 45 minutes, which means that all pipelines take at least that long regardless of the data size. If the initial overhead is too long for your use case, please reach out to the Microsoft Graph Data Connect team at dataconnect@microsoft.com

Please Note: Your tenant admin needs to approve and consent within 24 hours of kicking off the pipeline. If the consent is not given within 24 hours, consent will expire and your will need to restart the consent process by kicking off your pipelines again. The overhead time mentioned aboved does not include time taken in consent approval.

## In what regions is Microsoft Graph Data Connect available?

Microsoft Graph Data Connect is currently available in multiple regions across the following geographies: North America, Europe, Asia Pacific, United Kingdom/Great Britain, and Australia. Other regions will follow. 

For a list of Office to Azure regions and their mapping please refer to [Dataset, regions and sinks](https://docs.microsoft.com/en-us/graph/data-connect-datasets#regions).

## What datasets are available through Microsoft Graph Data Connect?

We have multiple datasets for each of the groups organized in the below
* Teams
* Outlook
* Azure Active Directory (AAD)
* One Drive/Sharepoint (ODSP)
* Viva Insights

New datasets are added to Microsoft Graph Data Connect on a regular basis. Please refer to [Dataset, regions and sinks](https://docs.microsoft.com/en-us/graph/data-connect-datasets) for the complete list.

## Which datasets are in Preview and which ones are in General Availability?

Datasets under the ODSP and Viva Insights section are currently available for customers in Preview or have the Viva Insights license respectively. For more information on how to sign up for Preview for certain datasets, please refer to [Dataset, regions and sinks](https://docs.microsoft.com/en-us/graph/data-connect-datasets#datasets).

## How much do I have to pay for Microsoft Graph Data Connect?

Microsoft Graph Data Connect consumption charges are billed monthly on a pay-as-you-go basis. The Data Connect billing unit is in a multiple of 1000s of objects, where 1 object maps to 1 individual instance of an entity in Microsoft 365. For example, 1 email == 1 object, 1 file == 1 object, 1 Teams chat message == 1 object, and so on. 

We have some datasets available for free or are currently free in preview while other datasets are charged. Microsoft Graph Data Connect offers datasets across multiple different Microsoft 365 products and services. For more information on datasets that are available through Microsoft Graph Data Connect, please refer to, please refer to [Dataset, regions and sinks](https://docs.microsoft.com/en-us/graph/data-connect-datasets#datasets).

There is no charge for extraction of objects from the following datasets:
- BasicDataSet_v0.User_v0
- BasicDataSet_v0.User_v1
- BasicDataSet_v0.MailboxSettings
- BasicDataSet_v0.Manager
- BasicDataSet_v0.DirectReport
- BasicDataSet_v0.GroupDetails
- BasicDataSet_v0.GroupMembers
- BasicDataSet_v0.GroupOwners

## How is billing calculated?

Customers are charged monthly and Microsoft Graph Data Connect does fractionable rounding up. Additionally, each pipeline run is billed separately.

For example, a customer has 20 pipeline runs within the month, each yielding 500 rows. In total, the customer runs pipelines for 10,000 rows that month. However, their bill will not simply be 10,000 rows/1000 rows = 10 units. 

Instead, the customer will be billed for 20 units due to Microsoft Graph Data Connect rounding up fraction. Since 500 rows /1000 rows = 0.5 and 0.5 is a fraction, it will be rounded to 1. The customer will be billed one unit per pipeline run, resulting in 20 units billed in total.

##  What can I do if a dataset is not yet supported for my tenant?

As mentioned earlier, for datasets like ODPS and Viva Insights, please make sure you meet the criteria required to access these datasets mentioned in [Dataset, regions and sinks](https://docs.microsoft.com/en-us/graph/data-connect-datasets#datasets). Additionally, these datasets are only available to customers who have opted in for them explicitly.

For further inquires or questions, please reach out to dataconnect@microsoft.com.

## What scenarios does Microsoft Graph Data Connect best address?

Organizations that can tap into the large datasets that power their productivity tools can gain tremendous insights into the challenges and opportunities they might encounter. We have seen customers building application across multiple scenarios like Organization networks for People Productivity Analytics, Information Oversharing for Security and Compliance analytics, Seller relationship strengths for Customer Relationship analytics, etc.

## Is it possible for my data to stay within the organization's subscription with Microsoft Graph Data Connect?

Microsoft Graph Data Connect respects your organizational tenant boundary when delivering your requested datasets. Both Azure resources and Microsoft 365 services must reside within the same AAD tenancy to access your Microsoft 365 dataset. We do not enable cross tenant dataset access today.

## Are service principals required with Microsoft Graph Data Connect?

When creating the Azure Data Factory pipeline, you have to provide a service principal to the Microsoft 365 linked service. In Azure, a service principal is a security identity that represents an application/service (as opposed to a user). Microsoft Graph Data Connect uses this service principal as its identity when getting authorized access to your Microsoft 365 data.

If you create an Azure managed application for others to use in their tenants, you still provide a service principal for the app to use. This service principal exists in your (the publisher's) tenant. However, if the app needs other service principals, your customer (the installer) creates them in their own tenant. For example, your Azure Data Factory pipeline likely needs access to a storage resource in Azure. The customer creates the service principal with permissions to the storage account for the pipeline to use.

For more information on building your application with Azure Synapse or Azure Data Factory please visit [here](https://docs.microsoft.com/en-us/graph/data-connect-quickstart?tabs=Microsoft365).


## How can I check for pending Privileged Access Management (PAM) requests?

Before Microsoft Graph Data Connect can copy your data, an administrator must approve a Privileged Access Management (PAM) request. PAM is the mechanism used to authorize your data pipeline access to the data in Microsoft 365. The first time you trigger a pipeline, it waits for a Microsoft 365 administrator (or appointed delegate) to approve the access request. Although the pipeline status shows **In progress**, the underlying copy activity will have a status of **ConsentPending** until approval is granted, as shown in the following screenshot.

![Screenshot of the pipeline run status pane with a status of ConsentPending](images/data-connect-tips.png)

During development, it's a good idea to make sure that your pipeline runs aren't stuck on **ConsentPending**, especially after you make a change to your pipeline. For example, if you add an additional field to the schema, the next pipeline run issues a new PAM request that has to be approved. Don't waste time waiting on a pipeline that's waiting for your approval.

Please note that consent requests will expire after 24 hours if not approved and the pipeline will fail. 

Additionally, PAM approval is valid for only 6 months (unless revoked).

## How can I approve PAM requests via the Microsoft 365 admin center?

To approve using the PAM UX, visit the PAM interface in the Microsoft 365 admin center which provides an easy and user-friendly way to view and approve/deny/revoke PAM requests.

To approve a request, users need to follow the below:
- When enabling Microsoft Graph Data Connect, please be within the approver’s group.
- Users must have a Global Admin role.
- Users must have an EXO license assigned.

Follow the below to approve/deny your PAM request:
1. Log into the PAM interface at [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/Settings/PrivilegedAccess).
2. Go to the sidebar on the right hand side and click on **Settings** > **Org Settings** > **Services** > **Microsoft Graph Data Connect**.
3. Locate the request
4. Review the request details
5. (Optional) Add deny list scrubbing if needed
5. Approve or Deny request as needed

For more details please visit [this page](https://docs.microsoft.com/en-us/graph/data-connect-quickstart?tabs=Microsoft365&tutorial-step=1).

## Will every pipeline run trigger a new consent request?
 
As long as the scope of the data being extracted remains the same for datasets, columns, users, etc, the pipeline run will NOT trigger a new consent request. Instead, the pipeline will use the approved consent which will last for 6 months. Running a pipeline with the same scope for different dates will NOT trigger a new consent either.

## How do I trigger a new consent request?

A new consent request will be triggered if the scope of data changes-- such as adding new dataset, selecting more columns, or adding other users. A new consent can also be triggered when changing the pipeline or activity name in Azure Synapse or Azure Data Factory.

## Can I have a second user to approve PAM requests?

When you request a dataset pipeline run, Microsoft Graph Data Connect service will verify and then trigger a PAM approval request if needed. The request is sent to the approver group defined for the tenant when enabling Microsoft Graph Data Connect in the Microsoft Admin Center. 

However, even if this account is part of the approver group that you set up, you can't use it to approve the PAM request because self-approvals are not allowed. If you try, you'll get an error message in the PAM portal: "Requestor and approver are the same. Self-approval is not allowed."

For development, you'll want to have a second account in addition to the admin who approves requests. Both the submitter and the approver must have active Exchange Online accounts.

## Can I deduplicate emails when needed?

When you extract emails from the `Message` dataset, there are often multiple JSON objects for the same email. These duplicates exist because when an email is sent to multiple people, there is a copy of the email in every recipient's mailbox. Because the dataset is extracted from every mailbox, it contains all copies across users. In some scenarios, it might be necessary to keep every copy, but in others, you might want to remove the duplicates.

You can deduplicate the exported JSON objects based on the `internetMessageId` of the messages: two messages with the same `internetMessageId` are duplicate copies of the same instance. Because the duplicates can exist in different blobs, you must deduplicate across all blobs rather than deduplicating in each blob separately.

## Can I use the puser field to determine the relevant user?

The extracted data includes some meta properties that don't exist when using the corresponding Microsoft Graph APIs. Specifically, the `puser` field can be useful for determining which user the data was extracted from. In the scenario where you have two copies of the same email in different mailboxes, you can use the `puser` field to determine which copy came from which mailbox. The `puser` field is also useful for datasets such as the `Manager` dataset. The exported JSON contains information about a manager, but this is only useful if you know whose manager they are. The `puser` field tells you whose manager that JSON object corresponds to.

## Is hybrid mode tenant setup supported?

If your Microsoft 365 setup has some users in Exchange Online and some users in Exchange on-premises, then the users who are in Exchange on-premises would not be supported. Unfortunately, we do not currently support Data Connect for Exchange on-premises users.

## Are resource accounts supported?

We don't currently support access to messages or events from resource accounts.

## Why do I sometimes see multiple files per ADF pipeline run but other times see only one file per run?

Microsoft Graph Data Connect takes the user list for each pipeline run and then distributes the dataset extraction and curation across multiple jobs that run in parallel. For each parallel run, one output file is generated in the data sink defined by you. In some cases, if the user list is small, they might be mapped into one extraction and curation job, and in those cases only one output file would be generated in the data sink.




