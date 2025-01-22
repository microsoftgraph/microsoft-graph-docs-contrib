---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 01/01/2025
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## January 2025: New and generally available 

### Files

Updated the endpoint of the [fileStorageContainer: restore](/graph/api/filestoragecontainer-restore) method.

### Identity and access | Identity and sign-in

Added riskEventType entry for the Suspicious API Traffic detection for [service principals](/graph/api/resources/serviceprincipalriskdetection?view=graph-rest-1.0&preserve-view=true).

### Teamwork and communications | Calls and online meetings

Microsoft Teams custom meeting templates allow you to specify values for many of the meeting options available to meeting organizers. Use the **meetingTemplateId** property on [onlineMeeting](/graph/api/resources/onlinemeeting) to create an online meeting with a meeting template.

### Teamwork and communications | Messaging

- [Get](/graph/api/chatmessage-get#example-5-get-a-chat-message-with-an--for-everyone) a chat message with an @mention for everyone.
- [Get](/graph/api/chatmessage-get#example-6-get-a-chat-message-with-a-forwarded-message) a chat message that has a forwarded message as an attachment.

## January 2025: New in preview only 

### Device and app management | Cloud PC

- [Retry](/graph/api/cloudpcbulkaction-retry?view=graph-rest-beta&preserve-view=true) a bulk action with selected Cloud PCs.
- Use the **productType** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the product type of a Cloud PC or to filter Cloud PCs by product type.

### Files

Updated the endpoint of the [fileStorageContainer: restore](/graph/api/filestoragecontainer-restore?view=graph-rest-beta&preserve-view=true) method.

### Identity and access | Directory management

- Use the **alternativeNames** property on [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) to get or set alternative names for a device.
- Use the [deviceTemplate](/graph/api/resources/devicetemplate?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage device templates for devices in Microsoft Entra ID.
- Use the [mutualTlsOauthConfiguration](/graph/api/resources/mutualtlsoauthconfiguration?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage certificate authorities that are permitted to issue certificates for a specific set of objects used for mTLS.

### Identity and access | Identity and sign-in

Added support for configuring a custom email provider for one-time passcodes (OTP) in Microsoft Entra External ID by using the following objects:
- The [onOtpSendCustomExtension resource type](/graph/api/resources/onotpsendcustomextension?view=graph-rest-beta&preserve-view=true) to configure the custom authentication extension that contains configuration details of the external service that might be an Azure Function.
- The [onEmailOtpSendListener resource type](/graph/api/resources/onemailotpsendlistener?view=graph-rest-beta&preserve-view=true) to configure the event listener that is triggered to send the OTP prompt to the user, based on the configuration details in the **onOtpSendCustomExtension** object.

The functionality also allows you to configure the default fallback option when the custom authentication extension isn't successfully called.

### Industry data ETL

Use the [start](/graph/api/industrydata-industrydatarun-start?view=graph-rest-beta&preserve-view=true) operation on the [industryDataRun](/graph/api/resources/industrydata-industrydatarun?view=graph-rest-beta&preserve-view=true) resource to perform an on-demand run, with throttling limits of up to five successful runs every 12 hours.

### Tasks and plans

Use the [teamsChannel](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true#container-type-teams-channel) container type to create plans in shared channels in Microsoft Teams.

## December 2024: New and generally available

### Reports

[Microsoft Graph activity logs](/graph/microsoft-graph-activity-logs-overview), which provide an audit trail of all HTTP requests that Microsoft Graph received and processed for your tenant, are now available in China operated by 21Vianet.

### Security | Alerts and incidents

Enabled the **description**, **displayName**, **resolvingComment**, and **severity** properties as supported properties in an [Update incident](/graph/api/resources/security-incident) request.

### Teamwork and communications | Calls and online meetings

- Use the following new methods for virtual events that are of the [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-1.0&preserve-view=true) type:
  - [List](/graph/api/virtualeventsroot-list-townhalls?view=graph-rest-1.0&preserve-view=true) all virtual event town halls created in a tenant.
  - [Get](/graph/api/virtualeventtownhall-getbyuseridandrole?view=graph-rest-1.0&preserve-view=true) the virtual event town halls where a specified user is an organizer or coorganizer.
  - [Get](/graph/api/virtualeventtownhall-getbyuserrole?view=graph-rest-1.0&preserve-view=true) the virtual event town halls where the signed-in user is an organizer or coorganizer.
- [Link](/graph/api/virtualevent-setexternaleventinformation?view=graph-rest-1.0&preserve-view=true) external event information to a [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-1.0&preserve-view=true) or [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-1.0&preserve-view=true) by setting an **externalEventId**.
- Use the **externalEventInformation** on [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-1.0&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-1.0&preserve-view=true) to identify the external event information of a virtual event.
- Use the **externalRegistrationInformation** property on [virtualEventRegistration](/graph/api/resources/virtualeventregistration?view=graph-rest-1.0&preserve-view=true) to get or set the external information for a virtual event registration.

### Teamwork and communications | Shift management

- [Stage the deletion](/graph/api/changetrackedentity-stagefordeletion) of an [openShift](/graph/api/resources/openshift), [shift](/graph/api/resources/shift), or [timeOff](/graph/api/resources/timeoff) instance in a [schedule](/graph/api/resources/schedule) in draft mode.
- Use the **eligibilityFilteringEnabledEntities** property on [workforceIntegration](/graph/api/resources/workforceintegration) to get or set support for viewing eligibility-filtered results.

### Users

Published the following lesser privileged permissions for managing specific scenarios on the [user](/graph/api/resources/user) object:

| Permission | Comments |
|--|--|
| User-Mail.ReadWrite.All | Least privileged permission to update the **otherMails** property. |
| User-PasswordProfile.ReadWrite.All | Least privileged permission to read and write password reset-related properties. |
| User-Phone.ReadWrite.All | Least privileged permission to update the **businessPhones** and **mobilePhone** properties. Previously, only the *Directory.AccessAsUser.All* permission was supported to update the properties for admin user. We recommend you move the lesser privileged permission instead.|
| User.EnableDisableAccount.All | Least privileged permission to update the **accountEnabled** property. **Requires** *User.Read.All* permission as well. Previously, only the *Directory.AccessAsUser.All* permission was supported to update the account status for admin users. We recommend you move the lesser privileged permission instead.|
| User.DeleteRestore.All | Least privileged permission to [delete a user](/graph/api/user-delete), [restore a deleted user from the recycle bin](/graph/api/directory-deleteditems-restore), or [permanently delete a deleted user from the recycle bin](/graph/api/directory-deleteditems-delete). Also allows retrieving deleted users via the `/directory/deleteditems/microsoft.graph.user` endpoint. |

## December 2024: New in preview only

### Backup Storage

Use the new restore bulk addition request API for more convenient, efficient, and scalable restore solutions. This API is designed to streamline the restore process by allowing direct submission of restoration resources in a bulk request. The following resources are supported:

- [driveRestoreArtifactsBulkAdditionRequest](/graph/api/resources/driverestoreartifactsbulkadditionrequest?view=graph-rest-beta&preserve-view=true)
- [mailboxRestoreArtifactsBulkAdditionRequest](/graph/api/resources/mailboxrestoreartifactsbulkadditionrequest?view=graph-rest-beta&preserve-view=true)
- [siteRestoreArtifactsBulkAdditionRequest](/graph/api/resources/siterestoreartifactsbulkadditionrequest?view=graph-rest-beta&preserve-view=true)

### Device and app management | Cloud PC

- Use the **disasterRecoveryType** property on [cloudPcCrossRegionDisasterRecoverySetting](/graph/api/resources/cloudpccrossregiondisasterrecoverysetting?view=graph-rest-beta&preserve-view=true) to get or set the type of disaster recovery to perform when a disaster occurs on a user's Cloud PC.
- Use the **userInitiatedDisasterRecoveryAllowed** property on [cloudPcCrossRegionDisasterRecoverySetting](/graph/api/resources/cloudpccrossregiondisasterrecoverysetting?view=graph-rest-beta&preserve-view=true) to get or set whether the client allows the end user to initiate a disaster recovery activation.
- Deprecated the **crossRegionDisasterRecoveryEnabled** property of the [cloudPcCrossRegionDisasterRecoverySetting](/graph/api/resources/cloudpccrossregiondisasterrecoverysetting?view=graph-rest-beta&preserve-view=true) resource. Going forward use the **disasterRecoveryType** property.
- Enabled `endpointConnectivityCheckVMAgentEndPointCommunicationError` as a supported error type in the **errorType** property of the [cloudPcOnPremisesConnectionHealthCheck](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Directory management

While [restoring soft-deleted users](/graph/api/directory-deleteditems-restore?view=graph-rest-beta&preserve-view=true), you can now specify whether Microsoft Entra ID should replace the user's **userPrincipalName** with a new value.

### Identity and access | Identity and sign-in

- Use Microsoft Graph APIs to stay informed about the latest [product updates](/graph/api/resources/changeitembase?view=graph-rest-beta&preserve-view=true), including the [product roadmap](/graph/api/resources/roadmap?view=graph-rest-beta&preserve-view=true) and [change announcements](/graph/api/resources/announcement?view=graph-rest-beta&preserve-view=true), the programmatic alternative to the *What's new* tab on the Microsoft Entra admin center.
- You can now manage hardware OATH tokens for your organization and users programmatically via the following Microsoft Graph APIs:
  - [hardwareOathTokenAuthenticationMethodDevice resource type and its associated methods](/graph/api/resources/hardwareoathtokenauthenticationmethoddevice?view=graph-rest-beta&preserve-view=true) to manage the hardware tokens in your tenant, including assigning to users
  - [hardwareOathAuthenticationMethod resource type and its associated methods](/graph/api/resources/hardwareoathauthenticationmethod?view=graph-rest-beta&preserve-view=true) to manage tokens that are already assigned to users by activating or deactivating them

### Reports | Microsoft 365 monitoring reports

The Microsoft 365 monitoring APIs provide telemetry data to monitor the health of various Microsoft services within a Microsoft 365 subscription for your organization. Use the new operations in the [serviceActivity](/graph/api/resources/serviceactivity?view=graph-rest-beta&preserve-view=true) resource to get telemetry data for Exchange Online, Microsoft 365 Apps, and Microsoft Teams.

### Security | Alerts and incidents

Enabled the **description**, **displayName**, and **severity** properties as supported properties in an [Update incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true) request.

### Sites and lists

- Create and manage a [news link page](/graph/api/resources/newslinkpage?view=graph-rest-beta&preserve-view=true) in SharePoint.
- [Archive](/graph/api/site-archive?view=graph-rest-beta&preserve-view=true) or [unarchive](/graph/api/site-unarchive?view=graph-rest-beta&preserve-view=true) a SharePoint site.

### Teamwork and communications | Calls and online meetings

The get and list operations of the [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) and [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) resources support the retrieval of call recordings or call transcripts from private chat meetings and channel meetings.

### Teamwork and communications | Messaging

Use the **firstChannelName** property on [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) to set the name of the first channel created in a team.

## November 2024: New and generally available

### Files

Use a range of new methods and resources for enhanced file storage management, including methods for managing columns and recycle bin items. You can also run operations like restore, lock, unlock, and more across the [fileStorageContainer](/graph/api/resources/filestoragecontainer), [fileStorage](/graph/api/resources/filestorage), and [recycleBin](/graph/api/resources/recyclebin) resources.

### Applications | Policies

Use the **state** property on [keyCredentialConfiguration](/graph/api/resources/keycredentialconfiguration) and [passwordCredentialConfiguration](/graph/api/resources/passwordcredentialconfiguration) to indicate whether a restriction is evaluated.

### Security | Alerts and incidents

Enabled the `active`, `pendingApproval`, `declined`, `unremediated`, `running`, and `partiallyRemediated` statuses in the **evidenceRemediationStatus** enumeration. Use these new statuses via the **remediationStatus** property of the [alertEvidence](/graph/api/resources/security-alertevidence) and its inherited types.

### Security | Identities

The Defender for Identity sensors management API enables you to create detailed reports on the sensors in your workspace, providing information such as server name, sensor version, type, state, and health status. It also allows you to manage sensor settings, including adding descriptions, enabling or disabling delayed updates, and specifying the domain controller the sensor connects to for querying Entra ID. For more information, see [sensor](/graph/api/resources/security-sensor).

### Teamwork and communications | Calls and online meetings

Use the **administrativeUnitInfos** property on [participant](/graph/api/resources/callrecords-participant) and [organizer](/graph/api/resources/callrecords-organizer) to get the IDs of one or more administrative units for a call participant.

## November 2024: New in preview only

### Device and app management | Cloud PC

- Added new endpoints that support application permissions in the following methods of the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource:
  - [cloudPC: getCloudPcLaunchInfo](/graph/api/cloudpc-getcloudpclaunchinfo?view=graph-rest-beta&preserve-view=true)
  - [cloudPC: start](/graph/api/cloudpc-start?view=graph-rest-beta&preserve-view=true)
  - [cloudPC: stop](/graph/api/cloudpc-stop?view=graph-rest-beta&preserve-view=true)
- Use the **reservePercentage** property in the [cloudPcProvisioningPolicy: apply] method to specify the percentage of Cloud PCs to keep available for frontline shared scenarios.
- Use the [getCloudPCPerformanceReport](/graph/api/cloudpcreports-getcloudpcperformancereport?view=graph-rest-beta&preserve-view=true) method to get reports related to the performance of Cloud PCs.
- Use the **reportName** parameter with the [getInaccessibleCloudPcReports](/graph/api/cloudpcreports-getinaccessiblecloudpcreports?view=graph-rest-beta&preserve-view=true) method to specify the Cloud PC report type.
- Enabled the `performanceTrendReport` and `inaccessibleCloudPcTrendReport` options for the **reportName** parameter in the [Create cloudPcExportJob](/graph/api/cloudpcreports-post-exportjobs?view=graph-rest-beta&preserve-view=true) method.

### Device and app management | Device updates

- [Deploy a hotpatch quality update](/graph/windowsupdates-hotpatch-update) using Windows Autopatch.
- Use the **isHotpatchUpdate** property on [productRevision](/graph/api/resources/windowsupdates-productrevision?view=graph-rest-beta&preserve-view=true) to identify whether the content is hotpatchable.
- Use the **isHotpatchEnabled** property on [userExperienceSettings](/graph/api/resources/windowsupdates-userexperiencesettings?view=graph-rest-beta&preserve-view=true) to identify whether the update is offered as a hotpatch.

### Files

[Lock](/graph/api/filestoragecontainer-lock?view=graph-rest-beta&preserve-view=true) or [unlock](/graph/api/filestoragecontainer-unlock?view=graph-rest-beta&preserve-view=true) a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

- Use the [oidcIdentityProvider](/graph/api/resources/oidcidentityprovider?view=graph-rest-beta&preserve-view=true) resource and its methods to interact with OpenID Connect identity providers in a Microsoft Entra external tenant.
- Added the [certificateBasedAuthPki](/graph/api/resources/certificatebasedauthpki?view=graph-rest-beta&preserve-view=true) resource to manage the collection of public key infrastructure (PKI) instances for the [certificate-based authentication method](/graph/api/resources/x509certificateauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true), and the [certificateAuthorityDetail](/graph/api/resources/certificateauthoritydetail?view=graph-rest-beta&preserve-view=true) resource to access the properties of each certificate authority object within a **certificateBasedAuthPki**.

### Identity and access | Network access

List, create, get, update, and delete [fqdnFilteringRule](/graph/api/resources/networkaccess-fqdnfilteringrule?view=graph-rest-beta&preserve-view=true) and [webCategoryFilteringRule](/graph/api/resources/networkaccess-webcategoryfilteringrule?view=graph-rest-beta&preserve-view=true) resources that are derived types of [filteringRule](/graph/api/resources/networkaccess-filteringrule?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports 

Use the **sessionId** property on [signIn](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) to get the identifier of the session that was generated during a sign-in.

### Security | Discovered cloud apps

The new Microsoft Defender for Cloud apps API in Microsoft Graph is designed to provide an efficient and reliable way to query discovered apps information, making it easier for you to analyze the risks associated with the discovered apps. Use the following resources and their methods to get data and insights across the discovered SaaS apps ecosystem:

- [cloudAppDiscoveryReport](/graph/api/resources/security-cloudappdiscoveryreport?view=graph-rest-beta&preserve-view=true)
- [discoveredCloudAppDetail](/graph/api/resources/security-discoveredcloudappdetail?view=graph-rest-beta&preserve-view=true)
- [discoveredCloudAppInfo](/graph/api/resources/security-discoveredcloudappinfo?view=graph-rest-beta&preserve-view=true)
- [discoveredCloudAppUser](/graph/api/resources/security-discoveredcloudappuser?view=graph-rest-beta&preserve-view=true)
- [discoveredCloudAppIPAddress](/graph/api/resources/security-discoveredcloudappipaddress?view=graph-rest-beta&preserve-view=true)
- [discoveredCloudAppDevice](/graph/api/resources/security-discoveredcloudappdevice?view=graph-rest-beta&preserve-view=true)
- [endpointDiscoveredCloudAppDetail](/graph/api/resources/security-endpointdiscoveredcloudappdetail?view=graph-rest-beta&preserve-view=true)

### Security | eDiscovery

Added application authentication for Microsoft Purview eDiscovery Graph APIs. For more information about setting up app-only access, see [Set up application authentication](/graph/security-ediscovery-appauthsetup).

### Teamwork and communications | AI interactions

Use the [getAllEnterpriseInteractions](/graph/api/aiinteractionhistory-getallenterpriseinteractions) method to get Microsoft 365 Copilot interaction data, including user prompts to Copilot and Copilot responses. 

### Teamwork and communications | Calls and online meetings

- [Link](/graph/api/virtualevent-setexternaleventinformation?view=graph-rest-beta&preserve-view=true) external event information to a [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) or [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) by setting an **externalEventId**.
- Use the **externalEventInformation** on [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) to identify the external event information of a virtual event.
- Use the **allowedLobbyAdmitters** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) to get or set the users who can admit from the lobby.
- Use the **allowedLobbyAdmitters** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) to get or set the users who can admit from the lobby.
- [Get](/graph/api/copilotadminlimitedmode-get?view=graph-rest-beta&preserve-view=true) or [set](/graph/api/copilotadminlimitedmode-update?view=graph-rest-beta&preserve-view=true) whether users of Microsoft 365 Copilot in Teams Meetings can receive responses to sentiment-related prompts.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
