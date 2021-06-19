---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## June 2021: New and generally available

### Applications
Get or set the status of an [application](/graph/api/resources/application) or [servicePrincipal](/graph/api/resources/serviceprincipal) to identify if Microsoft has disabled the application through the **disabledByMicrosoftStatus** property. Disabling reasons include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement.

### Change notifications
Extended the maximum length of a subscription before expiring for the following resources:
- OneDrive [driveItem](/graph/api/resources/driveitem) and SharePoint [list](/graph/api/resources/list) from 3 to 30 days
- [group](/graph/api/resources/group), [user](/graph/api/resources/user), or other directory resources from 3 to 29 days

### Education
The APIs for the education [assignments service](/graph/api/resources/educationassignment) are now generally available. 

## June 2021: New in preview only

### Cloud communications | Online meetings
Customize audio and video control in an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) by enabling or disabling attendees from turning on their cameras and microphones, through the **allowAttendeeToEnableCamera** and **allowAttendeeToEnableMic** respectively.

### Devices and apps | Cloud PC
- [Assign](/graph/api/cloudpcusersetting-assign?view=graph-rest-beta&preserve-view=true) [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to enable local admin or self-service option for a user on a cloud PC.
- Get a few more properties of a [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true): the names of the provisioning policy and of the on-premises connection used during provisioning, and the end date/time of the grace period by which reprovisioning or deprovisioning happens.

### Education
- Teachers can now select the default behavior for a calendar when they publish assignments. Teachers can control the assignment calendar behavior by using the **addToCalendarAction** property of the [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) resource.
- Teachers can now also set a default behavior for a calendar when they publish assignments. Teachers can control the assignment default calendar behavior by using the **addToCalendarAction** property of the [educationAssignmentDefaults](/graph/api/resources/educationAssignmentDefaults?view=graph-rest-beta&preserve-view=true) resource.

## May 2021: New and generally available

### Devices and apps | Cloud printing
Find out when a printer last interacted with Universal Print, by using the **lastSeenDateTime** property of [printer](/graph/api/resources/printer).

### Identity and access | Identity and sign-in
Get or update the role of a guest user by using the **guestUserRoleId** property of [authorizationPolicy](/graph/api/resources/authorizationpolicy).

### Mail
- [Create drafts and send Outlook messages in MIME format](outlook-send-mime-message.md), attach S/MIME digital signatures, and encrypt message content in S/MIME.
- Create a [mailFolder](/graph/api/resources/mailfolder) as a [hidden folder](/graph/api/resources/mailfolder#hidden-mail-folders) by [setting the isHidden property](/graph/api/user-post-mailfolders#example).

### Microsoft Graph Toolkit
Try the following new features in the Microsoft Graph Toolkit 2.2:
- [File](/graph/toolkit/components/file) and [file list](/graph/toolkit/components/file-list) components
- [MSAL 2.0 authentication provider](/graph/toolkit/providers/msal2)
- [SharePoint Framework library](/graph/toolkit/get-started/mgt-spfx)

### Reports | Azure AD activity reports
GA of the reporting API to [list](/graph/api/provisioningobjectsummary-list) actions performed by the Azure AD provisioning service and its associated properties. Aligned the prior beta version to the v1.0 version of the API.

## May 2021: New in preview only

### Connecting external content
- Be aware of [implementation and operational limits](connecting-external-content-api-limits.md) when designing connectors.
- Try the [connectors API with Postman](connecting-external-content-connectors-api-postman.md).

### Devices and apps | Cloud PC
Request the least privileged application permissions, `CloudPC.Read.All` or `CloudPC.ReadWrite.All`, to access methods of the following resources:
  - Read and write operations, and [reprovision](/graph/api/cloudpc-reprovision?view=graph-rest-beta&preserve-view=true) method of [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [getSourceImages](/graph/api/cloudpcdeviceimage-getsourceimages?view=graph-rest-beta&preserve-view=true) method of [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [updateAdDomainPassword](/graph/api/cloudpconpremisesconnection-updateaddomainpassword?view=graph-rest-beta&preserve-view=true) method of [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [assign](/graph/api/cloudpcprovisioningpolicy-assign?view=graph-rest-beta&preserve-view=true) method of [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true).

### Education
- [Set up a SharePoint resource folder](/graph/api/educationAssignment-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) to upload and store all file-based resources in the same location for an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true).
- [Set up a SharePoint resource folder](/graph/api/educationsubmission-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) to upload and store all file-based resources, such as a Word or Excel file, in the same location for an [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
- Get a collection of [accessPackageAssignment](/graph/api/resources/accessPackageAssignment?view=graph-rest-beta&preserve-view=true) resources by [filtering on the signed-in user](/graph/api/accesspackageassignment-filterbycurrentuser?view=graph-rest-beta&preserve-view=true).
- Get a collection of [accessPackageAssignmentRequest](/graph/api/resources/accessPackageAssignmentRequest?view=graph-rest-beta&preserve-view=true) resources by [filtering on the signed-in user](/graph/api/accesspackageassignmentrequest-filterbycurrentuser?view=graph-rest-beta&preserve-view=true).

### Use SDKs
Try the preview version of [Microsoft Graph .NET SDK v4](https://www.nuget.org/packages/Microsoft.Graph/4.0.0-preview.4), and take advantage of the following improvements:
- Use a single API to authenticate against Microsoft Graph and Azure .NET clients.
- New support for JSON serialization and deserialization.
- Easy access to response information.
- Better experience upgrading dependencies.


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
