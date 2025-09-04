---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 07/03/2025
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## September 2025: New and generally available

### Backup storage

Added a note to the **artifactCount** property of the [granularMailboxRestoreArtifact](/graph/api/resources/granularmailboxrestoreartifact) about its upcoming deprecation.

### Security | Alerts and incidents

- Added the following new properties to the [securityGroupEvidence](/graph/api/resources/security-securitygroupevidence) resource:
  - Use the **activeDirectoryObjectGuid** property to get the unique group identifier assigned by the on-premises Active Directory.
  - Use the **distinguishedName** property to identify the distinguished name of the security group.
  - Use the **friendlyName** property to identify the friendly name of the security group.	
  - Use the **sid** property to get the security identifier of the group.
- Use the **activeDirectoryObjectGuid** property on [userAccount](/graph/api/resources/security-useraccount) to get the unique user identifier assigned by the on-premises Active Directory.

### Security | eDiscovery

- Use the **caseType** property on [ediscoveryCaseSettings](/graph/api/resources/security-ediscoverycasesettings) to get or set the type of an eDiscovery case.
- Use the **reviewSetSettings** property on [ediscoveryCaseSettings](/graph/api/resources/security-ediscoverycasesettings) to get or set the review set settings for a case.

## September 2025: New in preview only

### Backup storage

Added a note to the **artifactCount** property of the [granularMailboxRestoreArtifact](/graph/api/resources/granularmailboxrestoreartifact?view=graph-rest-beta&preserve-view=true) about its upcoming deprecation.

## August 2025: New and generally available

### Device and app management | Cloud PC

Use the [resize](/graph/api/cloudpc-resize) operation of [cloudPC](/graph/api/resources/cloudpc) to upgrade or downgrade an existing Cloud PC to a configuration with a new virtual CPU (vCPU) and storage size.

### Sites and lists

Removed support for delegated permissions in the [List sites](/graph/api/site-list) and [site: delta](/graph/api/site-delta) APIs.


### Teamwork and communications | Calls and online meetings

- Use the **isInteractiveRosterEnabled** property on [incomingCallOptions](/graph/api/resources/incomingcalloptions) and [outgoingCallOptions](/graph/api/resources/outgoingcalloptions) to indicate whether delta roster filtering by participant interactivity is enabled.
- Use the **outOfOfficeSettings** property on [presence](/graph/api/resources/presence) to get the out-of-office settings for a user.
- Use the **sequenceNumber** property on [presence](/graph/api/resources/presence) to get the lexicographically sortable String stamp that represents the version of a **presence** object.
- Use the **isEndToEndEncryptionEnabled** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to indicate whether end-to-end encryption (E2EE) is enabled for a meeting or virtual event session.

## August 2025: New in preview only

### Backup storage

- Use the **isEnabled** property on [exchangeProtectionPolicy](/graph/api/resources/exchangeProtectionPolicy?view=graph-rest-beta&preserve-view=true), [oneDriveForBusinessProtectionPolicy](/graph/api/resources/oneDriveForBusinessProtectionPolicy?view=graph-rest-beta&preserve-view=true), and [sharePointProtectionPolicy](/graph/api/resources/sharePointProtectionPolicy?view=graph-rest-beta&preserve-view=true) to get whether the policy is enabled.
- Use the **protectionPolicyArtifactCount** property on [exchangeProtectionPolicy](/graph/api/resources/exchangeProtectionPolicy?view=graph-rest-beta&preserve-view=true), [oneDriveForBusinessProtectionPolicy](/graph/api/resources/oneDriveForBusinessProtectionPolicy?view=graph-rest-beta&preserve-view=true), and [sharePointProtectionPolicy](/graph/api/resources/sharePointProtectionPolicy?view=graph-rest-beta&preserve-view=true) to get the count of artifacts in the protection policy by status.

### Calendars | Places

[Create](/graph/api/place-post?view=graph-rest-beta&preserve-view=true), [get descendants](/graph/api/place-descendants?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/place-delete?view=graph-rest-beta&preserve-view=true) a [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) and its derived objects (for example, [building](/graph/api/resources/building?view=graph-rest-beta&preserve-view=true), [desk](/graph/api/resources/desk?view=graph-rest-beta&preserve-view=true), [floor](/graph/api/resources/floor?view=graph-rest-beta&preserve-view=true), or [section](/graph/api/resources/section?view=graph-rest-beta&preserve-view=true). These APIs enable scalable onboarding and management of the Places directory.

### Device and app management | Cloud PC

- Deprecated the `/deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo` endpoint in favor of delegated permission requests using either `/me/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo` or `/users/{userId}/cloudPCs/{id}/getCloudPcLaunchInfo` in the [getCloudPcLaunchInfo](/graph/api/cloudpc-getcloudpclaunchinfo) method.
- Use the **provisioningSourceType** property on [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to indicate the provisioning source of the Cloud PC prepared for an end user.

### Files

Learn how to [add an application permission to a driveItem in OneDrive or SharePoint Online](/graph/api/driveitem-post-permissions?view=graph-rest-beta&preserve-view=true#example-1-add-an-application-permission-to-a-driveitem-in-onedrive-or-sharepoint-online) and how to [add a SharePoint group permission to a driveItem in a SharePoint Embedded container](/graph/api/driveitem-post-permissions?view=graph-rest-beta&preserve-view=true#example-2-add-a-sharepoint-group-permission-to-a-driveitem-in-a-sharepoint-embedded-container).

### Identity and access | Identity and sign-in

The [federatedTokenValidationPolicy](/graph/api/resources/federatedtokenvalidationpolicy?view=graph-rest-beta&preserve-view=true) APIs now support management by lesser-privileged Microsoft Entra roles including Security Administrator, Hybrid Identity Administrator, and External Identity Provider Administrator roles, removing dependency on the Global Administrator role.

### Mail

Deprecated the [markAsJunk](/graph/api/message-markasjunk?view=graph-rest-beta&preserve-view=true) and [markAsNotJunk](/graph/api/message-markasnotjunk?view=graph-rest-beta&preserve-view=true) actions in favor of the [reportMessage](/graph/api/message-reportmessage?view=graph-rest-beta&preserve-view=true) API.

### Security | Identities

Added the [identityAccounts](/graph/api/resources/security-identityaccounts?view=graph-rest-beta&preserve-view=true) and its related methods that lets you retrieve details of user accounts observed by Microsoft Defender for Identity and apply response actions such as disabling accounts and forcing password reset. 

### Sites and lists

Removed support for delegated permissions in the [List sites](/graph/api/site-list?view=graph-rest-beta&preserve-view=true) and [site: delta](/graph/api/site-delta?view=graph-rest-beta&preserve-view=true) APIs.

### Teamwork and communications | Calls and online meetings

Use the [adhocCall](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true) resource to subscribe to transcripts and recordings at the tenant level, for a specific call, or per user. For more information, see [Get change notifications for transcripts and recordings using Microsoft Graph](/graph/teams-changenotifications-callrecording-and-calltranscript).

### Terraform Templates for Microsoft Graph resources

[Terraform templates for Microsoft Graph resources](/graph/templates/terraform/overview-terraform-for-graph) is now in preview. Using Terraform templates, you can deploy the following Microsoft Graph resources for your infrastructure as code (IaC) projects:

- Applications
- App role assignments
- Federated identity credentials
- Groups
- OAuth2 permissions grants (delegated permissions grants)
- Service principals
- Users

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
