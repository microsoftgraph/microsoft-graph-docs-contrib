---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.


## January 2022: New and generally available

### Devices and apps | Service health and communications
- Get a [service announcement attachment](/graph/api/resources/serviceAnnouncementAttachment) added to a [service update message ](https://docs.microsoft.com/en-us/graph/api/resources/serviceupdatemessage).

### Identity and access | Governance
- Get a collection of [access review reviewer](/graph/api/resources/accessreviewreviewer) resources that is used to define reviewers contacted for an [instance of access reviews](/graph/api/resources/accessReviewInstance).
- Differentiate 3 types of resources whose access is represented through an [access review decision](/graph/api/resources/accessreviewinstancedecisionitem):
  - An [access package assignment policy](/graph/api/resources/accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource) for which access is determined by an access review decision.
  - An [Azure resource role](/graph/api/resources/accessReviewInstanceDecisionItemAzureRoleResource) for which access is determined by an access review decision.
  - A [service principal](/graph/api/resources/accessReviewInstanceDecisionItemServicePrincipalResource) whose access to a resource is determined by an access review decision.

### Identity and access | Identity and sign-in
Enforce a [session control](/graph/api/resources/conditionalAccessSessionControls) (by setting the **disableResilienceDefaults** property) to determine whether Azure AD should extend existing sessions based on information collected prior to an outage.

### Teamwork
[Create a chat](/graph/api/chat-post) using application permissions.

## January 2022: New in preview only

### Compliance | eDiscovery
Get the URL of a custodian's OneDrive for Business site (**siteWebUrl** property of [userSource](/graph/api/resources/ediscovery-userSource?view=graph-rest-beta&preserve-view=true)).

### Devices and apps | Cloud PC
- Get or update [settings for an organization](/graph/api/resources/cloudpcorganizationsettings?view=graph-rest-beta&preserve-view=true), which include the Windows operating system version to provision on Cloud PCs, and the user account type on provisioned Cloud PCs.
- [Change the user account type](/graph/api/cloudPC-changeUserAccountType?view=graph-rest-beta&preserve-view=true) on a specified Cloud PC.

### Identity and access | Governance
- Reviewers of an access review can [record](/graph/api/accessreviewinstancedecisionitem-recordalldecisions?view=graph-rest-beta&preserve-view=true) decisions for which the current user is the reviewer.
- Configure [the last sign-in date and time of a user as an insight](/graph/api/resources/userLastSignInRecommendationInsightSetting?view=graph-rest-beta&preserve-view=true) to aid reviewers in making decisions for an [access review schedule definition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true).
- Configure [the last sign-in date and time of a user as an insight](/graph/api/resources/userSignInInsight?view=graph-rest-beta&preserve-view=true) for a [decision on a user or principal's access in an instance of an access review](/graph/api/resources/accessreviewinstancedecisionitem?view=graph-rest-beta&preserve-view=true).
- The requestor of an access package can provide custom information as part of an [access package resource](/graph/api/resources/accesspackageresource?view=graph-rest-beta&preserve-view=true) that may be used to make approval decisions for the access package.
- A requestor can edit an answer to a [question](/graph/api/resources/accessPackageQuestion?view=graph-rest-beta&preserve-view=true) in an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true).

## Reports | Identity and access reports
- Get details of the [authentication methods registered for a user](/graph/api/resources/userRegistrationDetails?view=graph-rest-beta&preserve-view=true), such as multi-factor authentication, self-service password reset, and passwordless authentication.
- Get the following properties for a [sign-in](/graph/api/resources/signIn?view=graph-rest-beta&preserve-view=true) event of a user or application in an organization: 
  - Any conditional access [authentication context](/graph/api/resources/authenticationContext?view=graph-rest-beta&preserve-view=true).
  - Any conditional access [session lifetime policy](/graph/api/resources/sessionLifetimePolicy?view=graph-rest-beta&preserve-view=true).
  - The ID of an Azure resource accessed during sign-in.
  - The identifier of an application's federated identity credential if that was used to sign in.
  - The identifier of the service principal representing the target resource in the sign-in event.

## Reports | Microsoft 365 usage reports
Get usage reports for Outlook, OneDrive, and SharePoint for Microsoft Cloud for US Government. See summary for [cloud deployments](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true#cloud-deployments).

### Sites and lists
- Add or synchronize a content type from the content type hub to a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/resources/list?view=graph-rest-beta&preserve-view=true), by using the [addCopyFromContentTypeHub](/graph/api/contenttype-addcopyfromcontenttypehub?view=graph-rest-beta&preserve-view=true) action. This makes a content type or its update available to a specific site or list where it is needed. This is an improvement from the legacy sync infrastructure which pushes the content type to all sites across an organization, reducing wait times for the publishing to propagate. 
- Get one or more [rich, long-running operations](/graph/api/resources/richlongrunningoperation?view=graph-rest-beta&preserve-view=true) occuring on a site or list, which can happen when adding a content type synchronously.
- Get a collection of [content type](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) resources from the content type hub that are compatible by using the [getCompatibleHubContentTypes](/graph/api/contenttype-getcompatiblehubcontenttypes?view=graph-rest-beta&preserve-view=true) action. 

### Teamwork
- Let users choose **LastModifiedDateTime** or **CreatedDateTime** as the sorting order when [listing messages in a chat](/graph/api/chat-list-messages?view=graph-rest-beta&preserve-view=true).
- Specify user attribution (in the **onBehalfOf** property) when a bot sends a [chat message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) on behalf of a user.
- Add the following types of members to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true):
  - [Anonymous guest](/graph/api/resources/anonymousGuestConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Microsoft account user](/graph/api/resources/microsoftAccountUserConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Skype for Business user](/graph/api/resources/skypeForBusinessUserConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Skype user](/graph/api/resources/skypeUserConversationMember?view=graph-rest-beta&preserve-view=true)

## December 2021: New and generally available

### Cloud communications | Presence
[Subscribe to notifications of changes](/graph/api/subscription-post-subscriptions) in a specified user's [presence](/graph/api/resources/presence) status. Always specify an encryption certificate in the subscription request as these are [rich notifications that include encrypted resource data](webhooks-with-resource-data.md).


### Compliance | Subject rights requests
As part of [privacy management in Microsoft 365](/privacy/solutions/privacymanagement/privacy-management?view=o365-worldwide&preserve-view=true), the [subject rights requests API](/graph/api/resources/subjectrightsrequest) debuts in both v1 and beta endpoints of Microsoft Graph. The API lets users make requests to review or manage their personal data in their organizations. It also lets organizations automate and scale managing these requests, helping them to meet industry regulations more efficiently.

### Customer booking
Use the API for Microsoft Bookings in production apps, and take advantage of the following new features and updates:
- Notify your customers in the US or Canada by SMS for an [appointment](/graph/api/resources/bookingappointment) or specific [service](/graph/api/resources/bookingservice) associated with an appointment.
- Enable meeting online for a service and auto-generate a Microsoft Teams meeting link for the appointment.
- Allow one or more customers in a group appointment, setting a maximum attendee count for a service and for an appointment, and tracking the actual attendee count in an appointment.
- Create a [custom question](/graph/api/resources/bookingcustomquestion) for a [business](/graph/api/resources/bookingbusiness), associate a question with an option to specify it as mandatory for a service, and track questions and answers in an appointment.
- Get or set the time zone for a customer in an appointment or [staff member](/graph/api/resources/bookingstaffmember).
- Get or set the location and phone number for a [customer](/graph/api/resources/bookingcustomer).
- Access the v1 API from the new endpoint `https://graph.microsoft.com/v1.0/solutions/`. Note that the beta API remains in the `https://graph.microsoft.com/beta` endpoint.

### Education
- Specify an [assignment](/graph/api/resources/educationassignment) to be added to only students' calendars using the **addToCalendarAction** property.
- [Reassign](/graph/api/educationsubmission-reassign) a [submitted assignment](/graph/api/resources/educationsubmission) to a student with feedback for review.
- [List assignments](/graph/api/educationuser-list-assignments) for an [educationUser](/graph/api/resources/educationuser). 

### Identity and access | Governance
[Update](/graph/api/accessreviewinstance-update) the reviewers and fall-back reviewers for an [instance of an access review](/graph/api/resources/accessreviewinstance).

### Teamwork
- Identify a [chat](/graph/api/resources/chat) in Microsoft Teams by its web URL (via the **webUrl** property).
- Get details of an event that happened in a chat, channel or team by accessing [eventMessageDetail](/graph/api/resources/EventMessageDetail) from a [chatMessage](/graph/api/resources/chatmessage) or [chat](/graph/api/resources/chat). For example, members added to a channel or  chat, and team description updated.

## December 2021: New in preview only

### Cloud communications | Online meetings
Enable registration for an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) using an [external registration](/graph/api/resources/externalmeetingregistration?view=graph-rest-beta&preserve-view=true) system. 

### Cloud communications | Presence
- Use the [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true) action to set the preferred availability and activity status for a user. The user's presence becomes the preferred presence.
- Use the [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true) action to clear any preferred availability and activity status for a user.
- Use `Presence.ReadWrite` as delegated permission with [setPresence](/graph/api/presence-setpresence?view=graph-rest-beta&preserve-view=true), [clearPresence](/graph/api/presence-clearpresence?view=graph-rest-beta&preserve-view=true), [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true), or [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true).
- Use `Presence.ReadWrite.All` as application permission with [setPresence](/graph/api/presence-setpresence?view=graph-rest-beta&preserve-view=true), [clearPresence](/graph/api/presence-clearpresence?view=graph-rest-beta&preserve-view=true), [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true), or [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Cloud PC
- Administrators can enable [Microsoft Managed Desktop](/graph/api/resources/microsoftmanageddesktop?view=graph-rest-beta&preserve-view=true) by specifying settings in a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) and configuring a managed device experience for a Cloud PC.
- [Reboot](/graph/api/cloudpc-reboot?view=graph-rest-beta&preserve-view=true) a [Cloud PC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true).
- [Rename](/graph/api/cloudpc-rename?view=graph-rest-beta&preserve-view=true) to update the display name of a Cloud PC.
- [Troubleshoot](/graph/api/cloudpc-troubleshoot?view=graph-rest-beta&preserve-view=true) to check the health status of a Cloud PC and the session host.
- Track the last remote action result on a Cloud PC, including reboot, rename, reprovision, troubleshoot, by the **lastRemoteActionResult** property.
- Track the last login timestamp of a Cloud PC by the **lastLoginResult** property.
- Track the date that a [Cloud PC device image](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) becomes unavailable by the **expirationDate** property.
- Track the status of the operating system in a [Cloud PC device image](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) by the **osStatus** property.
- [Create](/graph/api/rbacapplication-post-roledefinitions?view=graph-rest-beta&preserve-view=true), [update](/graph/api/unifiedroledefinition-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/unifiedroledefinition-delete?view=graph-rest-beta&preserve-view=true) a [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) object for a Cloud PC RBAC provider.

### Education
- [Track changes](delta-query-overview.md) to [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta&preserve-view=true) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta&preserve-view=true) resources.
- Specify an [assignment](/graph/api/resources/educationassignment) to be added to only students' calendars using the **addToCalendarAction** property.

### Identity and access | Directory management
- [Get](/graph/api/application-get?view=graph-rest-beta&preserve-view=true) the certification details of an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) through the **certification** property. The property is set only when the application is certified through the [Microsoft 365 App Compliance Program](/microsoft-365-app-certification/docs/enterprise-app-certification-guide).  
- [Include](/graph/api/permissiongrantpolicy-post-includes?view=graph-rest-beta&preserve-view=true) or [exclude](/graph/api/permissiongrantpolicy-post-excludes?view=graph-rest-beta&preserve-view=true) certification as a [condition](/graph/api/resources/permissionGrantConditionSet?view=graph-rest-beta&preserve-view=true) in a [permission grant policy](/graph/api/resources/permissiongrantpolicy?view=graph-rest-beta&preserve-view=true), through the **certifiedClientApplicationsOnly** property of [permissionGrantConditionSet](/graph/api/resources/permissionGrantConditionSet?view=graph-rest-beta&preserve-view=true).

### Search | Index
Use the [update](/graph/api/externalconnectors-schema-update?view=graph-rest-beta&preserve-view=true) operation to update properties for items in a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) schema, including their aliases and labels.

### Teamwork
- [List](/graph/api/teams-list?view=graph-rest-beta&preserve-view=true) all teams in an organization.

### To-do tasks
- To anticipate being able to manage in a single place all the tasks from multiple sources (such as Outlook messages, Teams chats, OneDrive documents):
  - Use the [latest To Do API](/graph/api/resources/tasks-overview?view=graph-rest-beta&preserve-view=true) and access it from the new endpoint `https://graph.microsoft.com/beta/me/tasks/`.
  - Use the segment `allTasks` to get all the tasks for a user: `https://graph.microsoft.com/beta/me/tasks/alltasks`.
  - Differentiate between a built-in task list (such as **Flagged Email** or **Tasks**) and a user-defined task list. A built-in task list is represented by the [wellKnownTaskList](/graph/api/resources/wellknowntasklist?view=graph-rest-beta&preserve-view=true) resource, and a user-defined task list is represented by the [taskList](/graph/api/resources/tasklist?view=graph-rest-beta&preserve-view=true) resource.
  - Differentiate between the currently defined type of tasks, [task](/graph/api/resources/task?view=graph-rest-beta&preserve-view=true), from a base type [baseTask](/graph/api/resources/basetask?view=graph-rest-beta&preserve-view=true).
- Break down a more complex [task](/graph/api/resources/task?view=graph-rest-beta&preserve-view=true) into smaller, more actionable subtasks. Each subtask is represented by a [checklistItem](/graph/api/resources/checklistitem?view=graph-rest-beta&preserve-view=true) resource.
- [Move](/graph/api/basetask-move?view=graph-rest-beta&preserve-view=true) a task across lists.
- Refer to this [blog post](https://devblogs.microsoft.com/microsoft365dev/announcing-the-public-preview-of-to-do-tasks-api/) for more details and migrate any existing apps that use the [earlier To Do API](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true) to the [latest To Do API](/graph/api/resources/tasks-overview?view=graph-rest-beta&preserve-view=true).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
