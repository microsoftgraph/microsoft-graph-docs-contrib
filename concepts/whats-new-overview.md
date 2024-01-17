---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This topic provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md). 

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Do not use preview features in production apps.

## January 2024: New and generally available

### Device and app management | Cloud PC

The [virtualEndpoint](/graph/api/resources/virtualendpoint) resource is generally available, laying the foundation for future Cloud PC updates to the `v1.0` path.

### Teamwork and communications | Calls and online meetings
Communications servers can publish [deltaParticipants](/graph/api/resources/deltaParticipants) notifications for the creation, update, or deletion of a [participant](/graph/api/resources/participant) in a [call](/graph/api/resources/call). For more information, see [JSON payload examples](/graph/api/application-post-calls#notification---roster) of notifications with delta roster disabled or enabled.

## January 2024: New in preview only

### Applications

For Azure AD Connect cloud sync scenarios, you can now specify organizational units and groups that are in scope of a [synchronizationRule](/graph/api/resources/synchronization-synchronizationrule?view=graph-rest-beta&preserve-view=true). For details, see the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=d9c34227-2a99-49e5-ac9c-e8444f685ce5).

### Device and app management | Cloud PC

- Use the **errorMessage** property in the [cloudPcPartnerAgentInstallResult](/graph/api/resources/cloudpcpartneragentinstallresult) to access a detailed error message for instances where the installation of a partner agent on a Cloud PC fails.
- [Get the remote action status reports](/graph/api/cloudpcreports-getactionstatusreports?view=graph-rest-beta&preserve-view=true), including data such as the Cloud PC ID, Cloud PC device display name, action taken, and action state.
- Deprecate the **recommendedSku** property on [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true).
- Deprecate the **offer** and **offerDisplayName** properties on [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true) in favor of the **offerName** property.
- Deprecate the **publisher** property on [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true) in favor of the **publisherName** property.
- Deprecate the **sku** and **skuDisplayName** properties on [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true) in favor of the **skuName** property.
- Deprecate the **statusDetails** property on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) in favor of the  **errorCode** property, to identify why an upload failed. The **errorCode** property is of type [cloudPcDeviceImageErrorCode](/graph/api/resources/cloudpcdeviceimage#cloudpcdeviceimageerrorcode-values?view=graph-rest-beta&preserve-view=true).
- Deprecate the **id** property on [cloudPcSourceDeviceImage](/graph/api/resources/cloudpcsourcedeviceimage?view=graph-rest-beta&preserve-view=true) in favor of the **resourceId** property, to get the fully qualified unique identifier of the source image resource in Azure.

## December 2023: New and generally available

### Identity and access | Directory management

When a Microsoft service fails to provision a user, group, or organizational contact, and returns an error, you can now manually retry provisioning using the following APIs:

- [Retry provisioning a user](/graph/api/user-retryserviceprovisioning)
- [Retry provisioning a group](/graph/api/group-retryserviceprovisioning)
- [Retry provisioning an organizational contact](/graph/api/orgcontact-retryserviceprovisioning)

For details, see the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=9bb64b16-cc35-474d-8036-e8d5d1534fa1).

### Teams meeting APIs

Pricing updates for the Teams meeting APIs apply starting January 1, 2024. For more information, see [Payment models and licensing requirements for Microsoft Teams APIs](/graph/teams-licenses#payment-requirements-for-meeting-apis).

### Teamwork and communications | Calls and online meetings
Manage change notifications for virtual events using the [Create](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0&preserve-view=true), [Get](/graph/api/subscription-get?view=graph-rest-1.0&preserve-view=true), [Update](/graph/api/subscription-update?view=graph-rest-1.0&preserve-view=true), and [Delete](/graph/api/subscription-delete?view=graph-rest-1.0&preserve-view=true) operations of the [subscription](/graph/api/resources/subscription?view=graph-rest-1.0&preserve-view=true) resource.

## December 2023: New in preview only

### Employee experience | Employee engagement

Create and get a Viva Engage community that is a central place for conversations, files, events, and updates for people sharing a common interest or goal. Use the Viva Engage API for the following scenarios:

- [Create a community](/graph/api/employeeexperience-post-communities?view=graph-rest-beta&preserve-view=true)
- [Poll for community creation status](/graph/api/engagementasyncoperation-get?view=graph-rest-beta&preserve-view=true)
- [Get a community](/graph/api/community-get?view=graph-rest-beta&preserve-view=true)

For details, see the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6ef521a9-141c-48fe-a109-1082be3fb5b3).

### Identity and access | Identity and sign-in

- Customize user authentication experiences in Microsoft Entra External ID for customers by configuring actions to run before or after you collect attributes from a user. You can configure the following Microsoft Graph entities:
  - [onAttributeCollectionStartCustomExtension](/graph/api/resources/onattributecollectionstartcustomextension?view=graph-rest-beta&preserve-view=true) and [onAttributeCollectionSubmitCustomExtension](/graph/api/resources/onattributecollectionstartcustomextension?view=graph-rest-beta&preserve-view=true) objects to run custom code before or after you collect attributes from a user, respectively.
  - [onAttributeCollectionStartListener](/graph/api/resources/onattributecollectionstartlistener?view=graph-rest-beta&preserve-view=true) and [onAttributeCollectionSubmitListener](/graph/api/resources/onattributecollectionsubmitlistener?view=graph-rest-beta&preserve-view=true) objects to specify the event to invoke before or after you collect attributes from a user, respectively.

  _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=4badb014-c277-4c08-b593-8ed808b11baa)_.

- We have refined how you can programmatically define the [tenant-wide policy for registering new devices](/graph/api/resources/deviceregistrationpolicy?view=graph-rest-beta&preserve-view=true) using Microsoft Entra join and Microsoft Entra register within your organization. This update introduces breaking changes that require you to update your app logic to ensure continued functionality. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6bd09a97-53a9-401e-b0c5-266b9db06a1b)_.

### Teamwork and communications | Calls and online meetings
Manage change notifications for virtual events using the [Create](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&preserve-view=true), [Get](/graph/api/subscription-get?view=graph-rest-beta&preserve-view=true), [Update](/graph/api/subscription-update?view=graph-rest-beta&preserve-view=true), and [Delete](/graph/api/subscription-delete?view=graph-rest-beta&preserve-view=true) operations of the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource.

### Teamwork and communications | Shift management

- Get all [openShift](/graph/api/resources/openshift) objects across all teams a user is a direct member of, removing the need to specify a team ID in the request. For more information, see [team: getOpenShifts](/graph/api/team-getopenshifts?view=graph-rest-beta&preserve-view=true).
- [Stage the deletion](/graph/api/changetrackedentity-stagefordeletion?view=graph-rest-beta&preserve-view=true) of an [openShift](/graph/api/resources/openshift), [shift](/graph/api/resources/shift), or [timeOff](/graph/api/resources/timeoff) instance in a [schedule](/graph/api/resources/schedule) in draft mode.

For details, see the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=958cb6cc-4eb0-4dec-a19d-7fe3da86b3ec)_.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support? 

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community.

## See also
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/)
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
