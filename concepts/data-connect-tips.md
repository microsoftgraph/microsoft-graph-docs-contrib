---
title: "Tips for using Microsoft Graph data connect"
description: "This doc provides supplementary tips as you begin exploring data connect"
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Tips for using Microsoft Graph data connect

Microsoft Graph data connect allows developers to create applications that customers can provide managed access to their at-scale Microsoft Graph datasets. This article provides tips that will help you take advantage of the data connect feature. For an introduction to Microsoft Graph data connect, see the [Overview](data-connect-concept-overview.md) article.

## Is Microsoft Graph data connect right for you?

Data connect and the Microsoft Graph APIs provide access to the same underlying data but in very different ways. Data connect is designed to extract large amounts of data in bulk while the Microsoft Graph APIs are much more suitable for accessing discrete sets of data in real-time. In some cases, it might even make sense to combine them. For example, you may want use data connect to do an initial "backfill" of the last year of email data, and then use the Microsoft Graph APIs to analyze emails in real-time moving forward. Data connect and the Microsoft Graph APIs are different tools for different jobs, so it is important to think about which access method best fits your scenario.

## Expect an initial overhead

Since data connect is designed to extract large amounts of data in bulk, there's some overhead before the data can be copied. This overhead is around 45 minutes, meaning all pipelines will take at least that long regardless of the data size. This may be a negligible penalty for large amounts of data, but if this time is unacceptable for your scenario, then the Microsoft Graph APIs may provide a better approach.

## Data must stay within the organization's subscription

Data connect pipelines are orchestrated by Azure Data Factory, a data integration service that runs in an Azure subscription. The Azure subscription is [associated with exactly one Office 365 tenant](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-how-subscriptions-associated-directory). This way, the data must initially flow to an associated Azure subscription and, after further minimalization and aggregation, the data may be used elsewhere.

If you want to build an app for others to use to extract their Office 365 data, you can package the app as an [Azure managed application](https://docs.microsoft.com/en-us/azure/managed-applications/overview) and publish it to the Azure Marketplace. Then someone can deploy your app into their own Azure subscription, and the app can access data in their tenant. 

## Use of service principals

When creating the Data Factory pipeline, you will have to provide a service principal to the Office 365 linked service. In Azure, a service principal is a security identity that represents an application/service (as opposed to a user). Data connect uses this service principal as its identity when getting authorized access to your Office 365 data.
If you create an Azure Managed Application for others to use in their tenants, you'll still provide a service principal for the app to use. This service principal will exist in your (the publisher's) tenant. However, if the app needs other service principals, your customer (the installer) will create them in their own tenant. For example, your Data Factory pipeline will likely need access to a storage resource in Azure. The customer would create the service principal with permissions to the storage account for the pipeline to use.

## Check for pending Privileged Access Management requests

Before data connect can copy your data, an administrator must approve a Privileged Access Management (PAM) request. PAM is the mechanism used to authorize your data pipeline access to the data in Office 365. The first time you trigger a pipeline, it will wait on an Office 365 administrator (or appointed delegate) to approve the access request. Although the pipeline status shows `In progress` the underlying copy activity will have a status of `ConsentPending` until approval is granted.

![Copy Activity View](images/data-connect-tips.png)

During development it's a good idea to make sure your pipeline executions aren't stuck on `ConsentPending`, especially after you make a change to your pipeline. For example, if you add an additional field to the schema, the next pipeline run will issue a new PAM request that has to be approved. Don't waste time waiting on a pipeline that's waiting on you!

## Approve PAM requests via Office 365 admin portal

The data connect documenatoin shows you how to use PowerShell and the PAM UX to approve PAM requests. To approve using the PAM UX, visit the PAM interface in the Office 365 admin portal(https://admin.microsoft.com/Adminportal/Home?source=applauncher#/Settings/PrivilegedAccess). The portal provides an easy and user-friendly way to view and approve/deny/revoke PAM requests. You can find a link to it in the Microsoft Graph data connect add-in under `Settings -> Services & Add-ins -> Microsoft Graph data connect`

## Use a second user to approve PAM requests

When you execute a pipeline and trigger a PAM request, the request is attached to your user account which owns the service principal used by the pipeline. But even if this account is part of the approver group you set up, you can't use it to approve the PAM request because self-approvals are not allowed. If you try, you'll get an error message in the PAM portal `Requestor and approver are the same. Self-approval is not allowed.` For development, you'll want to have a 2nd account in addition to the admin who approves requests. Both the submitter and the approver must have active Exchange online accounts as well.

## Deduplicate emails when needed

When extracting emails from the `Message` datasets, there will often be multiple JSON objects for the same email. These duplicates exist because when an email is sent to multiple people, there is a copy of the email in every recipient's mailbox. The dataset is extracted from every mailbox, so it will contain all copies. In some scenarios, it may be necessary to keep every copy. But in some scenarios, you only want to count the email once, so you should deduplicate the emails after extraction.
You can deduplicate the exported JSON objects based on the `internetMessageId` of the messages: Two messages with the same `internetMessageId` are duplicate copies of the same instance. The duplicates can exist in different blobs, so you must deduplicate across all blobs rather than deduplicating in each blob separately.

## Use puser field to determine the relevant user

In the extracted data, there are some meta properties that don't exist when using the corresponding Graph APIs. Specifically, the `puser` field can be useful for determining which user the data was extracted from. In the scenario above where you have 2 copies of the same email in different mailboxes, you could use the `puser` field to determine which copy came from which mailbox.
The `puser` is also useful for datasets such as the `Manager` dataset. The exported JSON will contain information about a manager, but this is only useful if you know whose manager they are. The `puser` field will tell you whose manager that JSON object corresponds to.

## Next Steps

Reach out on [Uservoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581) or to Microsoft Support if you encounter an issue executing a data connect pipeline. 
