---
title: "Subscribe to change notifications from cloud printing APIs"
description: "Learn how to subscribe to change notifications for various print job events by using the Microsoft Graph API."
author: "jahsu"
ms.localizationpriority: high
ms.subservice: "universal-print"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
---

# Subscribe to change notifications from cloud printing APIs using Microsoft Graph

Universal Print helps customers move their print infrastructure to the cloud, and is part of a robust ecosystem of partner solutions that offer advanced print functionality. These solutions can become even more powerful when you use the cloud printing APIs in Microsoft Graph to integrate with Universal Print.

Many partner solutions need to process print jobs in real time as they're sent from users' devices to printers, which means they need to be notified when print jobs are available for processing. Universal Print provides hooks for print vendor solutions to be notified as jobs move through the cloud, and APIs that enable management of printers and print jobs.

This article describes how to subscribe to notifications for various print job events.


## Get started with change notifications

Before you can take advantage of change notifications via Microsoft Graph, you must [register your application in Azure](/azure/active-directory/develop/howto-create-service-principal-portal#register-an-application-with-azure-ad-and-create-a-service-principal) and provision your application in the customers Microsoft Entra tenant. Make sure that the application has the required permission scopes enabled, as described later in this article.


### Notifications and subscriptions

Universal Print currently supports notifications for two scenarios related to print jobs:

* PrintTask is triggered (JobStarted): An application can subscribe to receive notifications when their printTask(hook) is triggered.
For details about how to trigger a task, see [Enable pull printing](./universal-print-concept-overview.md#enable-pull-printing). Currently, a printTask can be triggered only for a JobStarted event. A JobStarted event is raised when a print job has been successfully created, its payload has been uploaded, and job processing has started.  

* JobFetchable: After the job has started, third-party print applications or Universal Print might do some processing (like converting XPS payload to PDF for a PDF printer). After processing is complete and the payload is ready to be downloaded by a printer, a JobFetchable event is raised for the corresponding print job.

>[!NOTE]
>For listening to the change notifications for JobFetchable event, a **printTaskDefinition** resource is not required.
>
>The application should handle duplicate notifications.

### Create an application to listen to notifications

For information about how to listen for Microsoft Graph notifications, see [Set up notifications for changes in user data – Code Samples](./change-notifications-overview.md#code-samples).


### Permission scopes

To subscribe to notifications for print jobs, applications must have the following permission scopes approved in the customer's Microsoft Entra tenant: 

* For printTask triggered (JobStarted) event, the permissions listed in [Get taskDefinition](/graph/api/printtaskdefinition-get). 

* For JobFetchable event, the permissions listed in [Create subscription](/graph/api/subscription-post-subscriptions).

Applications must [generate and use the Microsoft Entra security token](/graph/auth-v2-service?context=graph/api/1.0) in the Microsoft Graph API request header. The security token contains the claims as per the scopes approved for the customer's Microsoft Entra tenant by its administrator.  


## Create subscription: printTask triggered (JobStarted) event 

Some applications monitor print queues for incoming jobs and want to be notified as soon as there is a valid job in the queue. After they're notified, they can collect the relevant job metadata or even perform modifications in the print job – including aborting the job or redirecting the job from the current print queue to another queue after modifying the job attributes accordingly. 

Before creating a notification for a **printTask**-triggered event, ensure that application has created the following:

- A [printTaskDefinition](/graph/api/print-post-taskdefinitions) for the customer's Microsoft Entra tenant. A single task definition can be associated with one or more printers within the same Microsoft Entra tenant. 

- A [printTaskTrigger](/graph/api/printer-post-tasktriggers) for each of the printer queues for which the partner wants to receive a notification when a new print job starts. The **printTaskTrigger** needs to be bound to the **printTaskDefinition**. 

>[!NOTE]
>One printer can be associated with only one **printTaskTrigger** and one **printTaskTrigger** can be associated with only one **printTaskDefinition**. However, one **printTaskDefinition** can have one or more **printTaskTriggers** associated with it. 

With the **printTaskDefinition** that exists for customer's Microsoft Entra tenant, the application can [create a subscription for a printTask triggered (JobStarted) event using the printTaskDefinition](/graph/api/subscription-post-subscriptions). While creating the subscription:  

* The `resource` field needs to be set as `print/taskDefinitions/{printTaskDefinition ID}/tasks`. 
* The `changeType` field needs to be set as `created`. 
* The `expirationDateTime` field needs to be less than the [maximum expiration time](/graph/api/resources/subscription#maximum-length-of-subscription-per-resource-type).

For more details, see [Subscription resource type properties](/graph/api/resources/subscription#properties).

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_subscription_print_taskdefinition"
}--> 
```http
POST https://graph.microsoft.com/v1.0/subscriptions 
Content-Type: application/json
{ 
    "changeType":"created", 
    "resource":"print/taskDefinitions/{printTaskDefinition ID}/tasks", 
    "clientState":"secret", 
    "notificationUrl":"{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}", 
    "expirationDateTime":"2020-01-30T22:42:09Z" 
} 
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
{ 
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#subscriptions/$entity", 
    "id": "{Subscription ID}", 
    "resource": "print/taskDefinitions/{printTaskDefinition ID}/tasks", 
    "applicationId": "{application ID}", 
    "changeType": "created", 
    "clientState": "secret", 
    "notificationUrl": "{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}", 
    "notificationQueryOptions": null, 
    "lifecycleNotificationUrl": null, 
    "expirationDateTime": "2020-12-30T22:42:09Z", 
    "creatorId": "{Creator ID}", 
    "includeResourceData": null, 
    "latestSupportedTlsVersion": "v1_2", 
    "encryptionCertificate": null, 
    "encryptionCertificateId": null 
}
```


## Create subscription: JobFetchable event 
Some cloud applications need to download print jobs from Universal Print when they are ready. Because these applications running in the cloud are not behind the customer's firewall, they can use Microsoft Graph change notifications to be notified when a print job is ready to be downloaded.

>[!NOTE]
>Print jobs can't be modified when they enter the JobFetchable state.
A JobFetchable notification needs to be created for each printer queue. While creating the subscription:
* The `resource` field needs to be set as 'print/printers/{printer id}/jobs'. 
* The `changeType` field needs to be set as `updated`. 
* The `notificationQueryOptions` field needs to be set as `$filter = isFetchable eq true`. 
* The `expirationDateTime` field needs to be less than the [maximum expiration time](/graph/api/resources/subscription#maximum-length-of-subscription-per-resource-type). 

For more details, see [Subscription resource type properties](/graph/api/resources/subscription#properties).

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_subscription_for_print"
}--> 
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
    "changeType":"updated",
    "resource":"print/printers/{printer id}/jobs",
    "notificationQueryOptions": "$filter = isFetchable eq true", 
    "notificationUrl":"{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}",
    "expirationDateTime":"2020-12-30T22:42:09Z",
    "clientState":"mysecret"
} 
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
{ 
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#subscriptions/$entity", 
    "id": "{Subscription ID}", 
    "resource": "print/printers/{printer ID}/jobs", 
    "applicationId": "{Application ID}", 
    "changeType": "updated", 
    "clientState": "mysecret", 
    "notificationUrl": "{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}", 
    "notificationQueryOptions": "$filter = isFetchable eq true", 
    "lifecycleNotificationUrl": null, 
    "expirationDateTime": "2020-12-30T22:42:09Z", 
    "creatorId": "{Creator ID}", 
    "includeResourceData": null, 
    "latestSupportedTlsVersion": "v1_2", 
    "encryptionCertificate": null, 
    "encryptionCertificateId": null
}
```


## Renew a notification subscription

Microsoft Graph has a limit on the expiration time. For details, see [maximum expiration time](/graph/api/resources/subscription#maximum-length-of-subscription-per-resource-type). To continue receiving notifications, the subscription needs to be renewed periodically by using the [Update subscription API](/graph/api/subscription-update). 

## Get or delete notification subscriptions

Applications can [get](/graph/api/subscription-get) details of the subscription or [delete](/graph/api/subscription-delete) a subscription when required. For details, see [Use the Microsoft Graph API to get change notifications](/graph/api/resources/webhooks).


## FAQs
### How does Microsoft Graph validate notification URLs?
Microsoft Graph validates the notification endpoint provided in the **notificationUrl** property of the subscription request before creating the subscription.
For details, see [Notification endpoint validation](./change-notifications-delivery-webhooks.md#notificationurl-validation).

### What are applications expected to do after receiving a change notification?
Applications should process and acknowledge every change notification they receive. For details, see [Processing the change notification](./change-notifications-delivery-webhooks.md#processing-the-change-notification).

### How can I validate the authenticity of notifications?
The authenticity of notifications can either be validated using **clientState** value as described in [Processing the change notification](./change-notifications-delivery-webhooks.md#processing-the-change-notification) or [validating tokens in the change notification](./change-notifications-with-resource-data.md#validation-tokens-in-the-change-notification).

### How can I get a list of active subscriptions?
For details about how to retrieve a list of webhook subscriptions, see [List subscriptions](/graph/api/subscription-list).

## Related content

- To learn more about the cloud printing API in Microsoft Graph, see [Universal Print cloud printing API overview](/graph/universal-print-concept-overview).
- For suggestions or feedback about the cloud printing API in Microsoft Graph, visit the [Universal Print tech community](https://aka.ms/community/UniversalPrint).
