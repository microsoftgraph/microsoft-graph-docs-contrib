---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## October 2024: New and generally available

### Backup storage

Updated the endpoints of the following methods:
- [List driveProtectionUnits](/graph/api/backuprestoreroot-list-driveprotectionunits)
- [List mailboxProtectionUnits](/graph/api/backuprestoreroot-list-mailboxprotectionunits)
- [List siteProtectionUnits](/graph/api/backuprestoreroot-list-siteprotectionunits)

### Change notifications

Enabled the `$notifyOnUserSpecificProperties` query parameter as a value of the **resource** property in the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource. You can use the [notifyOnUserSpecificProperties](/graph/teams-changenotifications-chat#notification-payloads-for-user-specific-properties) parameter when you subscribe to [notifications in a particular chat](/graph/teams-changenotifications-chat#subscribe-to-changes-in-a-particular-chat).

### Identity and access | Directory management

- [Get](/graph/api/domain-get-rootdomain) the root domain of a subdomain.
- Added recommendations to use unified RBAC APIs in [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition) instead of [directoryRole](/graph/api/resources/directoryrole) and [directoryRoleTemplate](/graph/api/resources/directoryroletemplate).
- Use the **membershipRule** property on [administrativeUnit](/graph/api/resources/administrativeunit) to get or set the dynamic membership rule for an administrative unit.
- Use the **membershipRuleProcessingState** property on [administrativeUnit](/graph/api/resources/administrativeunit) to indicate whether the dynamic membership rule is actively processed.
- Use the **membershipType** property on [administrativeUnit](/graph/api/resources/administrativeunit) to get or set the membership type for an administrative unit.

### Security | eDiscovery

- Enabled the deletion of Exchange mailbox items in the [ediscoverySearch: purgeData](/graph/api/security-ediscoverysearch-purgedata) method.
- Deleted the `permanentlyDeleted` member from the **purgeType** enumeration in favor of the `permanentlyDelete` member.

### Teamwork and communications | Apps

Use the **clientAppId** property on [teamsAppAuthorization](/graph/api/resources/teamsappauthorization) to get the registration ID of the Microsoft Entra app ID associated with an [app](/graph/api/resources/teamsapp) in the Microsoft Teams app catalog.

### Teamwork and communications | Calls and online meetings

Use the **isDeltaRosterEnabled** property on [incomingCallOptions](/graph/api/resources/incomingcalloptions) and [outgoingCallOptions](/graph/api/resources/outgoingcalloptions) to indicate whether delta roster is enabled for a call.

### Teamwork and communications | Messaging

- Updated the [chatMessage: delta](/graph/api/chatmessage-delta) method to use a new endpoint that gets the list of delta messages from all chats in which a user is a participant, including one-on-one chats, group chats, and meeting chats.
- Use the **reactionContentUrl** property on [chatMessageReaction](/graph/api/resources/chatmessagereaction) to represent the hosted content URL for a custom reaction in a [chatMessage](/graph/api/resources/chatmessage).
- Use the `<customemoji></customemoji>` tag on the **content** property of the [itemBody](/graph/api/resources/itembody) resource to represent custom emojis in the message body in a [chatMessage](/graph/api/resources/chatmessage).
- Use the **displayName** property on [chatMessageReaction](/graph/api/resources/chatmessagereaction) to represent the reaction name in a [chatMessage](/graph/api/resources/chatmessage).

## October 2024: New in preview only

### Backup storage

Added new endpoints for bulk addition of protection units into a protection policy:
- [Create siteProtectionUnitsBulkAdditionJob](/graph/api/siteprotectionunitsbulkadditionjobs-post?view=graph-rest-beta&preserve-view=true)
- [List siteProtectionUnitsBulkAdditionJobs](/graph/api/sharepointprotectionpolicy-list-siteprotectionunitsbulkadditionjobs?view=graph-rest-beta&preserve-view=true)
- [Get siteProtectionUnitsBulkAdditionJob](/graph/api/siteprotectionunitsbulkadditionjobs-get?view=graph-rest-beta&preserve-view=true)

- [Create mailboxProtectionUnitsBulkAdditionJob](/graph/api/mailboxprotectionunitsbulkadditionjobs-post?view=graph-rest-beta&preserve-view=true)
- [List mailboxProtectionUnitsBulkAdditionJobs](/graph/api/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs?view=graph-rest-beta&preserve-view=true)
- [Get mailboxProtectionUnitsBulkAdditionJob](/graph/api/mailboxprotectionunitsbulkadditionjobs-get?view=graph-rest-beta&preserve-view=true) 

- [Create driveProtectionUnitsBulkAdditionJob](/graph/api/driveprotectionunitsbulkadditionjobs-post?view=graph-rest-beta&preserve-view=true)
- [List driveProtectionUnitsBulkAdditionJobs](/graph/api/exchangeprotectionpolicy-list-mailboxprotectionunitsbulkadditionjobs?view=graph-rest-beta&preserve-view=true)
- [Get driveProtectionUnitsBulkAdditionJob](/graph/api/driveprotectionunitsbulkadditionjobs-get?view=graph-rest-beta&preserve-view=true)

Updated the endpoints of the following methods:
- [List driveProtectionUnits](/graph/api/backuprestoreroot-list-driveprotectionunits?view=graph-rest-beta&preserve-view=true)
- [List mailboxProtectionUnits](/graph/api/backuprestoreroot-list-mailboxprotectionunits?view=graph-rest-beta&preserve-view=true)
- [List siteProtectionUnits](/graph/api/backuprestoreroot-list-siteprotectionunits?view=graph-rest-beta&preserve-view=true)

### Device and app management | Cloud licensing

- Use the new cloud licensing [usageRight](/graph/api/resources/cloudlicensing-usageright?view=graph-rest-beta&preserve-view=true) entity that is designed for client and workload license checks, with relationships structured to flow from the user or group to the **usageRight**. This new entity supports the following operations:
  -  [List usage rights for a group](/graph/api/cloudlicensing-groupcloudlicensing-list-usagerights?view=graph-rest-beta&preserve-view=true)
  -  [List usage rights for a user](/graph/api/cloudlicensing-usercloudlicensing-list-usagerights?view=graph-rest-beta&preserve-view=true)
  -  [Get usage rights for a group or user](/graph/api/cloudlicensing-usageright-get?view=graph-rest-beta&preserve-view=true)
- Use the **cloudLicensing** property on a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) or [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) to get their relationships with cloud licensing resources.

### Device and app management | Cloud PC

- Enabled the `$select` query parameter for the [cloudPC: getProvisionedCloudPCs](/graph/api/cloudpc-getprovisionedcloudpcs?view=graph-rest-beta&preserve-view=true) method.
- Use the **notificationSetting** property on [cloudPcUserSetting](/graph/api/resources/cloudpcnotificationsetting?view=graph-rest-beta&preserve-view=true) to define the Cloud PC notification prompts for a Cloud PC user.

### Identity and access | Directory management

Get or update the [uxSetting](/graph/api/resources/uxsetting?view=graph-rest-beta&preserve-view=true) that restricts access to Microsoft Entra admin center to only administrators.

### Identity and access | Identity and sign-in

Enabled `suspiciousAPITraffic` as a supported value for the **riskEventType** property in the [servicePrincipalRiskDetection](/graph/api/resources/serviceprincipalriskdetection?view=graph-rest-beta&preserve-view=true) resource. You can retrieve this value when you use either the [List servicePrincipalRiskDetections](/graph/api/identityprotectionroot-list-serviceprincipalriskdetections?view=graph-rest-beta&preserve-view=true) or [Get servicePrincipalRiskDetection](/graph/api/serviceprincipalriskdetection-get?view=graph-rest-beta&preserve-view=true) APIs.

### Reports | Identity and access reports

The Microsoft Entra Health monitoring alerts APIs enable you to detect anomalous usage patterns in business-critical identity scenarios for your tenant and receive alert notifications. Use the operations of the [alert](/graph/api/resources/healthmonitoring-alert?view=graph-rest-beta&preserve-view=true) and [alertConfiguration](/graph/api/resources/healthmonitoring-alertconfiguration?view=graph-rest-beta&preserve-view=true) resources to retrieve and update alerts and alert configurations. For details, see the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=277da918-3e81-499f-8803-2986a2c73123).

### Security | eDiscovery

- Enabled the deletion of Exchange mailbox items in the [ediscoverySearch: purgeData](/graph/api/security-ediscoverysearch-purgedata?view=graph-rest-beta&preserve-view=true) method.
- Deleted the `permanentlyDeleted` member from the **purgeType** enumeration in favor of the `permanentlyDelete` member.

### Sites and lists

Updated the endpoints of the following methods:
- [Get](/graph/api/pagetemplate-get?view=graph-rest-beta&preserve-view=true)
- [Update](/graph/api/pagetemplate-update?view=graph-rest-beta&preserve-view=true)
- [Delete](/graph/api/pagetemplate-delete?view=graph-rest-beta&preserve-view=true)

### Teamwork and communications | Calls and online meetings

- Use the **externalRegistrationInformation** property on [virtualEventRegistration](/graph/api/resources/virtualeventregistration?view=graph-rest-betaa&preserve-view=true) to get or set the external information for a virtual event registration.
- Use the following new methods for virtual events that are of the [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) type:
  - [List](/graph/api/virtualeventsroot-list-townhalls?view=graph-rest-beta&preserve-view=true) all virtual event town halls created in a tenant.
  - [Get](/graph/api/virtualeventtownhall-getbyuseridandrole?view=graph-rest-beta&preserve-view=true) the virtual event town halls where a specified user is an organizer or coorganizer.
  - [Get](/graph/api/virtualeventtownhall-getbyuserrole?view=graph-rest-beta&preserve-view=true) the virtual event town halls where the signed-in user is an organizer or coorganizer.

### Teamwork and communications | Messaging

- Updated the [chatMessage: delta](/graph/api/chatmessage-delta?view=graph-rest-beta&preserve-view=true) method to use a new endpoint that gets the list of delta messages from all chats in which a user is a participant, including one-on-one chats, group chats, and meeting chats.
- [Get](/graph/api/chatmessage-get?view=graph-rest-beta&preserve-view=true#example-6-get-a-chat-message-with-a-forwarded-message) a chat message that has a forwarded message as an attachment.
- [Remove multiple members](/graph/api/conversationmember-remove?view=graph-rest-beta&preserve-view=true) from a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) in a single request.

### Users

Changed the following on-premises synced properties of the [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) resource type that were read-only in Microsoft Graph to be updatable via Microsoft Graph: 
- onPremisesDistinguishedName
- onPremisesDomainName
- onPremisesSamAccountName
- onPremisesSecurityIdentifier
- onPremisesUserPrincipalName

## September 2024: New and generally available

### Change notifications

Announced the deprecation of shared access signatures (SAS) for authenticating Event Hubs for [Microsoft Graph change notifications](/graph/change-notifications-delivery-event-hubs). We recommend using Microsoft Entra ID role-based access control (RBAC) instead. Follow the [guidance to migrate to RBAC](/graph/change-notifications-delivery-event-hubs#migrate-an-event-hub-authentication-to-microsoft-entra-id-rbac).

### Identity and access | Directory management

Removed the previously deprecated `Directory.Write.Restricted` permission from the [device](/graph/api/resources/device), [group](/graph/api/resources/group), and [user](/graph/api/resources/user) resources.

### Security | Alerts and incidents

- Use the **dnsDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence) to get the DNS domain that a computer belongs to.
- Use the **hostName** property on [deviceEvidence](/graph/api/resources/security-deviceevidence) to get the hostname without the domain suffix.
- Use the **ntDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence) to get a logical grouping of computers within a Microsoft Windows network.

### Security | Identities

Added the ability to [get](/graph/api/security-healthissue-get), [list](/graph/api/security-identitycontainer-list-healthissues), and [update](/graph/api/security-healthissue-update) Microsoft Defender for Identity [health issues](/graph/api/resources/security-healthissue) that represent potential issues identified within a customer's Defender for Identity configuration.

### Teamwork and communications | Messaging

- [Get all retained messages](/graph/api/channel-getallretainedmessages) across all [channels](/graph/api/resources/channel) in a [team](/graph/api/resources/team).
- [Get all retained messages](/graph/api/chat-getallretainedmessages) from all [chats](/graph/api/resources/chat) that a user is a participant in, including one-on-one chats, group chats, and meeting chats.

## September 2024: New in preview only

### Applications | Service principal

Use the **serviceManagementReference** optional property in the [applicationTemplate: instantiate](/graph/api/applicationtemplate-instantiate?view=graph-rest-beta&preserve-view=true) method to set the service tree ID for a service.

### Device and app management | Cloud PC

- Enabled the `middleEast` and `mexico` members as supported regions in the [cloudPcRegionGroup](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true#cloudpcregiongroup-values) enumeration.
- Removed the **getShiftWorkCloudPcAccessState** method from the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource. Going forward, use the [getFrontlineCloudPcAccessState](/graph/api/cloudpc-getfrontlinecloudpcaccessstate?view=graph-rest-beta&preserve-view=true) API.
- Use the **autopilotConfiguration** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) to get or set the settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC.
- Use the **osVersionNumber** property on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) and [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true) resources to get the operating system version of an image.
- Introduced the [retrieveSnapshots](/graph/api/cloudpc-retrievesnapshots?view=graph-rest-beta&preserve-view=true) method on the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource to enable you to return a list of all snapshots of a Cloud PC.

Deprecated the following methods:
- [bulkSetReviewStatus](/graph/api/manageddevice-bulksetcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true); use the [cloudPcBulkSetReviewStatus](/graph/api/resources/cloudpcbulksetreviewstatus?view=graph-rest-beta&preserve-view=true) resource and its supported APIs instead.
- [List snapshots](/graph/api/virtualendpoint-list-snapshots?view=graph-rest-beta&preserve-view=true); use the [retrieveSnapshots](/graph/api/cloudpc-retrievesnapshots?view=graph-rest-beta&preserve-view=true) resource and its supported APIs instead.

### Files

- [Update the recycle bin settings](/graph/api/filestoragecontainer-update-recyclebinsettings?view=graph-rest-beta&preserve-view=true) for a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true).
- Use the `$skip`, `$top`, `$orderBy`, `$filter`, and `includeAllContainerUsers` query parameters to customize the [List permissions](/graph/api/filestoragecontainer-list-permissions?view=graph-rest-beta&preserve-view=true) operation response.
- Include all version history when you [copy a drive item](/graph/api/driveitem-copy?view=graph-rest-beta&preserve-view=true). The version history is included up to the target version setting limit.

### Identity and access | Directory management

Use the **passwordResetUri** property on [internalDomainFederation](/graph/api/resources/internaldomainfederation?view=graph-rest-beta&preserve-view=true) to get or set the URI that clients are redirected to for resetting their password.

### Identity and access | Identity and sign in

- Use the **identifierUris** property in the get and update operations of the [tenantAppManagementPolicy](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource to get or set restrictions on vulnerable or easily compromised identifier URI formats for an application.
- Updated the return type for the **applicationRestrictions** property of the [tenantAppManagementPolicy](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource from [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to [appManagementApplicationConfiguration](/graph/api/resources/appmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true).
- Updated the return type for the **servicePrincipalRestrictions** property of the [tenantAppManagementPolicy](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource from [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to [appManagementServicePrincipalConfiguration](/graph/api/resources/appmanagementserviceprincipalconfiguration?view=graph-rest-beta&preserve-view=true).
- Updated the return type for the **restrictions** property of the [appManagementPolicy](/graph/api/resources/appmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource from [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to [customAppManagementConfiguration](/graph/api/resources/customappmanagementconfiguration?view=graph-rest-beta&preserve-view=true).

### Reports | Microsoft 365 usage reports

- [Get](/graph/api/reportroot-getmicrosoft365copilotusageuserdetail?view=graph-rest-beta&preserve-view=true) the most recent activity data for enabled users of Microsoft 365 Copilot apps.
- [Get](/graph/api/reportroot-getmicrosoft365copilotusercountsummary?view=graph-rest-beta&preserve-view=true) the aggregated number of active and enabled users of Microsoft 365 Copilot for a specified time period.
- [Get](/graph/api/reportroot-getmicrosoft365copilotusercounttrend?view=graph-rest-beta&preserve-view=true) the trend in the daily number of active and enabled users of Microsoft 365 Copilot for a specified time period.

### Security | Alerts and incidents

- Use the **dnsDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence?view=graph-rest-beta&preserve-view=true) to get the DNS domain that a computer belongs to.
- Use the **hostName** property on [deviceEvidence](/graph/api/resources/security-deviceevidence?view=graph-rest-beta&preserve-view=true) to get the hostname without the domain suffix.
- Use the **ntDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence?view=graph-rest-beta&preserve-view=true) to get a logical grouping of computers within a Microsoft Windows network.

### Security | Identities

- [Generate](/graph/api/security-sensor-regeneratedeploymentaccesskey?view=graph-rest-beta&preserve-view=true) a new deployment access key.
- [Get the deployment access key](/graph/api/security-sensor-getdeploymentaccesskey?view=graph-rest-beta&preserve-view=true) associated with a Microsoft Defender for Identity.
- [Get the sensor deployment package](/graph/api/security-sensor-getdeploymentpackageuri?view=graph-rest-beta&preserve-view=true) URL and version.

### Teamwork and communications | Calls and online meetings

Use the **isDeltaRosterEnabled** property on [incomingCallOptions](/graph/api/resources/incomingcalloptions?view=graph-rest-beta&preserve-view=true) and [outgoingCallOptions](/graph/api/resources/outgoingcalloptions?view=graph-rest-beta&preserve-view=true) to indicate whether delta roster is enabled for a call.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
