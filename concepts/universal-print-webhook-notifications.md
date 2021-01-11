---
title: "Universal Print job notifications using Microsoft Graph APIs"
description: "Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft."
author: "jahsu"
localization_priority: Priority
ms.prod: "cloud-printing"
ms.custom: scenarios:getting-started
---

# Subscribe to change notifications on cloud printing APIs using Microsoft Graph

Universal Print targets to help customers in their move to cloud. One of the important components in customers’ deployments is third-party vendor solutions that provide advanced print functionality while piggybacking on the base infrastructure provided by Universal Print. 

Most of the print vendors need to build capabilities to process print jobs in real-time as the job transits from users’ devices to printers. Universal Print provides hooks for print vendor solutions to be notified as jobs transitions through the cloud, and APIs that allow them to manage printers and print jobs. 

In this article, we describe how to subscribe to notifications for various print job events. 


## Getting Started

Before leveraging the notification functionality via Microsoft Graph, print vendor’s application needs to be [registered in Azure](https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal#register-an-application-with-azure-ad-and-create-a-service-principal) and provisioned in the customers Azure Active Directory (Azure AD) tenant. While registering the application, ensure it has required scopes enabled (as described below in the document). 


### Notifications and subscriptions

Universal Print currently supports notifications for two scenarios related to print jobs: 

1. PrintTask is triggered (JobStarted): Partner can subscribe to receive notifications when their printTask(hook) is triggered.
For details about how to trigger task, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing). Currently, printTask can be triggered only for JobStarted event. JobStarted event is raised when a print job has been successfully created, payload has been uploaded and job processing has started.  

2. JobFetchable: After the job has started, there might be processing done by third-party print applications or by Universal Print itself (like converting XPS payload to PDF for a PDF printer). Once all the processing is complete and payload is ready to be downloaded by a printer, JobFetchable event is raised for the corresponding print job. 
>[!NOTE]
>For listening to the change notifications for JobFetchable event, a printTaskDefinition resource is not required.

### Create an application to listen to notifications

For adding the ability to listen to Microsoft Graph notifications, you may refer to the documentation that provides steps and example codes. 

[Use Change Notifications and Track Changes with Microsoft Graph](https://docs.microsoft.com/learn/modules/msgraph-changenotifications-trackchanges/)

[Set up notifications for changes in user data – Code Samples](https://docs.microsoft.com/graph/webhooks#code-samples)


### Scopes

To subscribe to notifications for print jobs, applications must have the following scopes approved in the customer’s Azure AD tenant: 

* For printTask triggered (JobStarted) event: Same as permissions to [get printTaskDefinition resource](/graph/api/printtaskdefinition-get?view=graph-rest-beta&tabs=http%22%20%5Cl%20%22permissions%22%20%5C). 

* For JobFetchable event: Same as permissions to [create printer webhook subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&tabs=http).

Vendor applications must [generate and use the Azure AD security token](/graph/auth-v2-service?context=graph%2Fapi%2Fbeta&view=graph-rest-beta) in the Microsoft Graph API request header. The security token contains the claims as per the scopes approved for the customer’s Azure AD tenant by its administrator.  

Here is a sample header block for one of the API calls: 

```
Authorization: Bearer {Azure AD security token} 
Content-Type: application/json 
Cache-Control: no-cache 
Connection: keep-alive 
Content-Length: 68 
```

### Create subscription: printTask triggered (JobStarted) event 

Some applications monitor print queues for incoming jobs and want to be notified as soon as there is a valid job in the queue. Once notified they can collect the relevant job metadata or even perform modifications in the print job – including aborting the job or even redirecting the job from current print queue to another queue after modifying the job attributes accordingly. 

Before creating a notification for printTask triggered event, ensure that application has: 

1. Created a [printTaskDefinition](/graph/api/print-post-taskdefinitions?view=graph-rest-beta&tabs=http)  for the customer’s Azure AD tenant. Single task definition may be associated with one or more printers within the same Azure AD tenant. 

2. Created [printTaskTrigger](/graph/api/printer-post-tasktriggers?view=graph-rest-beta&tabs=http) for each of the printer queues for which partner wishes to receive notification when a new print job starts. The printTaskTrigger needs to be bound to the printTaskDefinition. 

>[!NOTE]
>One printer may be associated to only one printTaskTrigger and one printTaskTrigger may be associated to only one printTaskDefinition. However, one printTaskDefinition may have one or more printTaskTriggers associated to it. 

With the printTaskDefinition that exists for customer’s Azure AD tenant, application may [create subscription for printTask triggered (JobStarted) event using the printTaskDefinition](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&tabs=http). While creating the subscription,  

* `resource` field needs to be set as *print/taskDefinitions/{printTaskDefinition ID}/tasks*. 
* `changeType` field needs to be set as *created*. 
* `expirationDateTime` field needs to be less than [maximum expiration time](/graph/api/resources/subscription?view=graph-rest-beta#maximum-length-of-subscription-per-resource-type). 

Refer to [Subscription resource type properties](/graph/api/resources/subscription?view=graph-rest-beta#properties) for more details.

Here is an example of the request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_subscription"
}--> 
```http
POST https://graph.microsoft.com/beta/subscriptions 
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

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
{ 
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity", 
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
    "includeProperties": null, 
    "includeResourceData": null, 
    "latestSupportedTlsVersion": "v1_2", 
    "encryptionCertificate": null, 
    "encryptionCertificateId": null 
}
```


### Create subscription: JobFetchable event 
There are cloud applications that need to download print jobs from Universal Print when they are ready. Since these applications are running in cloud and are not behind the customer’s firewall, they can leverage the Microsoft Graph change notification mechanism to be notified when a print job is ready to be downloaded. 

Please note that print job may not be modified when it is in the JobFetchable state. 
JobFetchable notification need to be created for each printer queue. While creating the subscription,  
* `resource` field needs to be set as “print/printers/{printer id}/jobs” 
* `changeType` field needs to be set as “updated”. 
* `notificationQueryOptions` field needs to be set as "$filter = isFetchable eq true". 
* `expirationDateTime` field needs to be less than [maximum expiration time](/graph/api/resources/subscription?view=graph-rest-beta#maximum-length-of-subscription-per-resource-type). 

Refer to [Subscription resource type properties](/graph/api/resources/subscription?view=graph-rest-beta#properties) for more details.

Here is an example of the request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_subscription"
}--> 
```http
POST https://graph.microsoft.com/beta/subscriptions
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

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
{ 
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity", 
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
    "includeProperties": null, 
    "includeResourceData": null, 
    "latestSupportedTlsVersion": "v1_2", 
    "encryptionCertificate": null, 
    "encryptionCertificateId": null
}
```


## Renewing notification subscription

Microsoft Graph has a limit on the expiration time. Please refer to the [maximum expiration time](/graph/api/resources/subscription?view=graph-rest-beta#maximum-length-of-subscription-per-resource-type) documentation. To continue receiving notifications, subscription needs to be renewed periodically using [Update Subscription API](/graph/api/subscription-update?view=graph-rest-beta&tabs=http). 

## Other operations on notification subscriptions 

Application may [get](/graph/api/subscription-get?view=graph-rest-beta&tabs=http) details of the subscription or may [delete](/graph/api/subscription-delete?view=graph-rest-beta&tabs=http) a subscription when required. Refer to the [Use Microsoft Graph API to get change notifications documentation](/graph/api/resources/webhooks?view=graph-rest-beta) for more details.

## Other Resources

To get details on specific print APIs, please start with [Microsoft Graph API documentation for Universal Print](https://aka.ms/UPGraphDocs). 

We are happy to help you move your existing solutions to cloud or bring new innovations to the market that will redefine printing for organizations. If you have any new ideas or feedback on the current APIs, please reach out to us via the [Universal Print tech community](https://aka.ms/community/UniversalPrint).

## FAQ
1. How is notification url validated by Microsoft Graph?
> Microsoft Graph validates the notification endpoint provided in the notificationUrl property of the subscription request before creating the subscription.
Refer to the [Notification endpoint validation](/graph/webhooks#notification-endpoint-validation) for more details.

2. Once we send a notification, what is expected and how should partner acknowledge it?
> Your process should process every change notification it receives. For minimum tasks that the application must perform to process a change notification, refer to [Processing the change notification](/graph/webhooks#processing-the-change-notification) for more details.

2. How to get list of active subscriptions?
> Retrieve a list of webhook subscriptions. Refer to the [Processing the change notification](/graph/api/subscription-list?view=graph-rest-beta&tabs=http) for more details.

