---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 10/14/2025
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## November 2025: New in preview only

### Device and app management | Cloud PC

- Use the [cloudPCUserSettingsPersistenceDetail](/graph/api/resources/cloudpcusersettingspersistencedetail?view=graph-rest-beta&preserve-view=true) resource and its associated methods to determine whether Cloud PC user settings persistence is enabled. When enabled, Windows 365 saves user-specific application data in a central location and reconnects users to their storage during each session:
  - [Batch delete user settings persistence profile](/graph/api/cloudpcprovisioningpolicy-batchcleanupusersettingspersistenceprofile?view=graph-rest-beta&preserve-view=true).
  - [Retrieve user settings persistence profiles](/graph/api/cloudpcprovisioningpolicy-retrieveusersettingspersistenceprofiles?view=graph-rest-beta&preserve-view=true).
  - [Retrieve user settings persistence usage](/graph/api/cloudpcprovisioningpolicy-retrieveusersettingspersistenceprofileusage?view=graph-rest-beta&preserve-view=true).

## October 2025: New and generally available

### Backup storage

- Use the **protectionSources** property on [driveProtectionUnit](/graph/api/resources/driveprotectionunit), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit) to get the sources by which a protection unit is currently protected.
- [Update](/graph/api/protectionrulebase-update) a [driveProtectionRule](/graph/api/resources/driveprotectionrule) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule).
- [Delete and unprotect](/graph/api/protectionrulebase-deleteandunprotect) all the artifacts protected by a dynamic rule in a [driveProtectionRule](/graph/api/resources/driveprotectionrule) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule).

### Device and app management | Cloud PC

[List](/graph/api/user-list-cloudpcs) the Cloud PC devices that are attributed to the signed-in user.

### Education

- [List the dependent education assignment resources](/graph/api/educationassignmentresource-list-dependentresources) for a given education assignment resource.
- [List the dependent education submission resources](/graph/api/educationsubmissionresource-list-dependentresources) for a given education submission resource.

### Employee experience | Employee engagement

Viva Engage now supports new APIs for managing roles, allowing you to list, assign, and remove roles for users. For more information, see [Use the Microsoft Graph API to work with Viva Engage](/graph/api/resources/engagement-api-overview#role-management).

### Files

Added the following new endpoints as supported request URLs for the [driveItem: createUploadSession](/graph/api/driveitem-createuploadsession) API:
- `POST /drives/{driveId}/items/{parentItemId}:/{fileName}:/createUploadSession`
- `POST /groups/{groupId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession` 
- `POST /sites/{siteId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession`
- `POST /users/{userId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession`

### Identity and access | Directory management

- Addressed a permissions issue for [internalDomainFederation](/graph/api/resources/internaldomainfederation) write operations. Previously, delegated scenarios required the high-privilege _Directory.AccessAsUser.All_ permission. Two new, lesser-privileged permissions are now available for managing the **internalDomainFederation** resource:
   - _Domain-InternalFederation.Read.All_ – Read **internalDomainFederation** resources.
   - _Domain-InternalFederation.ReadWrite.All_ – Read and write **internalDomainFederation** resources.

- Added the _Domain-InternalFederation.ReadWrite.All_ delegated and application permissions as lower-privilege alternatives for updating a [domain](/graph/api/resources/domain). This also enables updating the **authenticationType** property of a domain in both delegated and application contexts, whereas previously only delegated scenarios with _Directory.AccessAsUser.All_ permission were supported.

These new permissions enable more granular access control for managing **internalDomainFederation** and **domain** resources.

### Identity and access | Identity and sign-in

Microsoft Graph now supports new delegated and application permissions scoped to individual authentication methods supported by Microsoft Entra. These permissions provide lesser-privileged alternatives to the more widely scoped _UserAuthenticationMethod.Read_, _UserAuthenticationMethod.ReadWrite.All_, _UserAuthenticationMethod.ReadWrite_ and _UserAuthenticationMethod.Read.All_ permissions, helping you improve your organization's security posture by adopting least privilege practices.

| Permission | Supported authentication methods | Delegated | Application |
|---|---|---|---|
| UserAuthMethod-Email.Read | Email | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Email.Read.All | Email | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Email.ReadWrite.All | Email | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-External.Read | External | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-External.Read.All | External | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-External.ReadWrite.All | External | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-HardwareOATH.Read | Hardware OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-HardwareOATH.Read.All | Hardware OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-HardwareOATH.ReadWrite | Hardware OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-HardwareOATH.ReadWrite.All | Hardware OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-MicrosoftAuthApp.Read | Microsoft Authenticator | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-MicrosoftAuthApp.Read.All | Microsoft Authenticator | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-MicrosoftAuthApp.ReadWrite | Microsoft Authenticator | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-MicrosoftAuthApp.ReadWrite.All | Microsoft Authenticator | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Passkey.Read | FIDO2 | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Passkey.Read.All | FIDO2 | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Passkey.ReadWrite | FIDO2 | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Passkey.ReadWrite.All | FIDO2 | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Password.Read | Password | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Password.Read.All | Password | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Password.ReadWrite | Password | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Password.ReadWrite.All | Password | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Phone.Read | Phone | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Phone.Read.All | Phone | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-Phone.ReadWrite | Phone | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-Phone.ReadWrite.All | Phone | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-PlatformCred.Read | Platform Credential | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-PlatformCred.Read.All | Platform Credential | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-PlatformCred.ReadWrite | Platform Credential | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-PlatformCred.ReadWrite.All | Platform Credential | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-QR.Read | QR Code | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-QR.Read.All | QR Code | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-QR.ReadWrite | QR Code | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-QR.ReadWrite.All | QR Code | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-SoftwareOATH.Read | Software OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-SoftwareOATH.Read.All | Software OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-SoftwareOATH.ReadWrite | Software OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-SoftwareOATH.ReadWrite.All | Software OATH | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-TAP.Read | Temporary Access Pass | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-TAP.Read.All | Temporary Access Pass | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-TAP.ReadWrite | Temporary Access Pass | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-TAP.ReadWrite.All | Temporary Access Pass | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-WindowsHello.Read | Windows Hello for Business | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-WindowsHello.Read.All | Windows Hello for Business | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |
| UserAuthMethod-WindowsHello.ReadWrite | Windows Hello for Business | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Not available](./images/yesandnosymbols/no.svg) |
| UserAuthMethod-WindowsHello.ReadWrite.All | Windows Hello for Business | ![Available](./images/yesandnosymbols/greencheck.svg) | ![Available](./images/yesandnosymbols/greencheck.svg) |

### Teamwork and communications | Calls and online meetings

Use the [callEvent](/graph/api/resources/callevent) and [emergencyCallEvent](/graph/api/resources/emergencycallevent) resources to provide detailed information about both standard and emergency call events. For more information, see [Change notification for active meeting call events](/graph/changenotifications-for-onlinemeeting) and [change notification for emergency call events](/graph/changenotifications-for-emergencycalls).

## October 2025: New in preview only

### Calendars | Places

Apply the following [prerequisites for the Places list and descendant APIs](/graph/api/resources/places-api-overview?view=graph-rest-beta&preserve-view=true#prerequisites-for-places-list-and-descendant-apis) before you can use these APIs; otherwise, they don't return any places.

### Device and app management | Cloud PC

- Use the **sessionStartDateTime** property on [cloudPcFrontlineSharedDeviceDetail](/graph/api/resources/cloudpcfrontlineshareddevicedetail?view=graph-rest-beta&preserve-view=true) to get the date and time when the current user session starts, or `null` if no current user session exists.
- Deprecated the [getCloudPcLaunchInfo](/graph/api/cloudpc-getcloudpclaunchinfo?view=graph-rest-beta&preserve-view=true) method in favor of the [retrieveCloudPcLaunchDetail](/graph/api/cloudpc-retrievecloudpclaunchdetail?view=graph-rest-beta&preserve-view=true) API.
- Deprecated the [cloudPcExternalPartnerSetting](/graph/api/resources/cloudpcexternalpartnersetting) resource and replaced with the [cloudPcExternalPartner](/graph/api/resources/cloudpcexternalpartner) resource.
- [Create](/graph/api/virtualendpoint-post-externalpartners?view=graph-rest-beta&preserve-view=true), [get](/graph/api/cloudpcexternalpartner-get?view=graph-rest-beta&preserve-view=true), or [update](/graph/api/cloudpcexternalpartner-update?view=graph-rest-beta&preserve-view=true) [an external partner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true) of Cloud PC, such as the partner status, and enable or disable the connection.
- [Import](/graph/api/cloudpcsnapshot-importsnapshot?view=graph-rest-beta&preserve-view=true), [purge](/graph/api/cloudpcsnapshot-purgeimportedsnapshot?view=graph-rest-beta&preserve-view=true), or [retrieve](/graph/api/cloudpcsnapshot-retrievesnapshotimportresults?view=graph-rest-beta&preserve-view=true) [an external snapshot](/graph/api/resources/cloudpcsnapshotimportactionresult?view=graph-rest-beta&preserve-view=true) of a Cloud PC.
- Get information about licenses that the Cloud PC service directly manages using the [cloudPcManagedLicense](/graph/api/resources/cloudpcmanagedlicense?view=graph-rest-beta&preserve-view=true) resource and the [list managedLicenses](/graph/api/virtualendpoint-list-managedlicenses?view=graph-rest-beta&preserve-view=true) operation. These cloudpc-managed licenses help administrators track license allocation, status, and usage across their Cloud PC deployments.

### Education

- [List the dependent education assignment resources](/graph/api/educationassignmentresource-list-dependentresources?view=graph-rest-beta&preserve-view=true) for a given education assignment resource.
- [List the dependent education submission resources](/graph/api/educationsubmissionresource-list-dependentresources?view=graph-rest-beta&preserve-view=true) for a given education submission resource.

### Files

Added the following new endpoints as supported request URLs for the [driveItem: createUploadSession](/graph/api/driveitem-createuploadsession?view=graph-rest-beta&preserve-view=true) API:
- `POST /drives/{driveId}/items/{parentItemId}:/{fileName}:/createUploadSession`
- `POST /groups/{groupId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession` 
- `POST /sites/{siteId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession`
- `POST /users/{userId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession`

### Sites and lists

[Create](/graph/api/site-post-sites?view=graph-rest-beta&preserve-view=true) a SharePoint site and [monitor](/graph/api/site-getoperationstatus?view=graph-rest-beta&preserve-view=true) its creation status.

## September 2025: New and generally available

### Applications

From the end of September 2025, the maximum page size for the [List servicePrincipals API](/graph/api/serviceprincipal-list) will be 100 objects from 999 objects.

### Backup storage

Added a note to the **artifactCount** property of the [granularMailboxRestoreArtifact](/graph/api/resources/granularmailboxrestoreartifact) about its upcoming deprecation.

### Education

- The assignment service in the education APIs in Microsoft Graph has updated its throttling limits: per app per tenant requests are now limited to 350 per 10 seconds and 10,000 per hour. Per tenant for all apps, the limits are now 700 per 10 seconds and 20,000 per hour. A new limit of 25 requests per 10 seconds is also introduced for POST `/publish` operations.
- [Get](/graph/api/reportsroot-list-readingcoachpassages) a list of Reading Coach passages that were practiced by a student.
- [Get](/graph/api/reportsroot-list-speakerassignmentsubmissions) a list of speaker assignments that were submitted by a student.
- Use the [educationSpeakerProgressResource](/graph/api/resources/educationspeakerprogressresource) to help students gain confidence and reduce anxiety with AI-powered real-time feedback on public speaking skills, such as pace, pitch, and filler words. Speaker Progress also saves educators time and creates more opportunities for independent practice during in-class presentations.

### Employee experience | Employee engagement

Use the [onlineMeetingEngagementConversation](/graph/api/resources/onlinemeetingengagementconversation) APIs to [get all Teams question and answer (Q&A) conversation messages in a tenant](/graph/api/cloudcommunications-getallonlinemeetingmessages) and [list reactions](/graph/api/engagementconversationdiscussionmessage-list-reactions) in an online meeting.

### Files

Defined the following endpoints as supported for the [driveItem: discardCheckout](/graph/api/driveitem-discardcheckout) API:
- `/drives/{driveId}/items/{itemId}/discardCheckout`
- `/groups/{groupId}/drive/items/{itemId}/discardCheckout`
- `/me/drive/items/{item-id}/discardCheckout`
- `/sites/{siteId}/drive/items/{itemId}/discardCheckout`
- `/users/{userId}/drive/items/{itemId}/discardCheckout`

### Security | Alerts and incidents

- Added the following new properties to the [securityGroupEvidence](/graph/api/resources/security-securitygroupevidence) resource:
  - Use the **activeDirectoryObjectGuid** property to get the unique group identifier assigned by the on-premises Active Directory.
  - Use the **distinguishedName** property to identify the distinguished name of the security group.
  - Use the **friendlyName** property to identify the friendly name of the security group.
  - Use the **sid** property to get the security identifier of the group.
- Use the **activeDirectoryObjectGuid** property on [userAccount](/graph/api/resources/security-useraccount) to get the unique user identifier assigned by the on-premises Active Directory.

### Security | eDiscovery

- Added `holdPolicySync` as a supported value for the **action** property of the [caseOperation](/graph/resources/security-caseoperation) and its inherited types.
- Use the **caseType** property on [ediscoveryCaseSettings](/graph/api/resources/security-ediscoverycasesettings) to get or set the type of an eDiscovery case.
- Use the **reviewSetSettings** property on [ediscoveryCaseSettings](/graph/api/resources/security-ediscoverycasesettings) to get or set the review set settings for a case.

### Teamwork and communications | Calls and online meetings

- Removed `inACall`, `inAConferenceCall`, `inactive`, `inAMeeting`, `presenting`, `urgentInterruptionsOnly`, and `offWork` as supported values for the **activity** property of [presence](/graph/api/resources/presence).
- Removed `availableIdle` and `busyIdle` as supported values for the **availability** property of [presence](/graph/api/resources/presence).
- Added `focusing`, `inACall`, `inAMeeting`, and `presenting` as supported values to the **availability** property of [presence](/graph/api/resources/presence).
- The throttling limit for the [presence](/graph/api/resources/presence) resource increased from 1,500 to 10,000 requests per 30 seconds, per application per tenant.
- Use the **allowCopyingAndSharingMeetingContent** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to indicate whether the ability to copy and share meeting content is enabled for a meeting or virtual event session.

### Teamwork and communications | Messaging

- [Create a one-on-one or group chat with installed apps](/graph/api/chat-post#example-3-create-a-one-on-one-chat-with-installed-apps).
- [Create a one-on-one or group chat with RSC-granted apps](/graph/api/chat-post#example-4-create-a-one-on-one-chat-with-rsc-granted-apps).

## September 2025: New in preview only

### Backup storage

Added a note to the **artifactCount** property of the [granularMailboxRestoreArtifact](/graph/api/resources/granularmailboxrestoreartifact?view=graph-rest-beta&preserve-view=true) about its upcoming deprecation.

### Calendars | Places

- The new map APIs in Places enable applications with appropriate read or write permissions to interact with map feature objects. For more information, see [Working with the Places API in Microsoft Graph](/graph/api/resources/places-api-overview?view=graph-rest-beta&preserve-view=true#map-feature-types).
- Use the [checkInClaim](/graph/api/resources/checkinclaim?view=graph-rest-beta&preserve-view=true) resource to represent the check-in status of an Outlook calendar [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true) booked at a place. For more information see, [Create checkInClaim](/graph/api/place-post-checkins?view=graph-rest-beta&preserve-view=true) and [Get checkInClaim](/graph/api/checkinclaim-get?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC

- Added `reserve` as a supported value for the **provisioningType** property of the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) and [cloudPcServicePlan](/graph/api/resources/cloudpcserviceplan?view=graph-rest-beta&preserve-view=true).
- Use the **createdBy**, **createdDateTime**, **lastModifiedBy**, and **lastModifiedDateTime** properties to determine when and by whom a [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) was created or modified.
- Added the `cloudPcUserSettingsPersistenceUsageThreshold`, `cloudPcDeprovisionedThreshold`, and `cloudPcReserveDeprovisionFailedThreshold` as supported values for the **conditionCategory** property of [ruleCondition](/graph/api/resources/devicemanagement-rulecondition?view=graph-rest-beta&preserve-view=true).
- Added the `cloudPcUserSettingsPersistenceScenario` and `cloudPcDeprovisionFailedScenario` as supported values for the **alertRuleTemplate** properties of [alertRecord](/graph/api/resources/devicemanagement-alertrecord?view=graph-rest-beta&preserve-view=true) and [alertRule](/graph/api/resources/devicemanagement-alertrule?view=graph-rest-beta&preserve-view=true).
- Use the **provisioningSourceType** property on [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to indicate the provisioning source of the Cloud PC prepared for an end user.
- Use the **groupDetail** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the Microsoft Entra group details associated with a Reserve Cloud PC assignment.
- Use the **userDetail** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the Microsoft Entra user details associated with a Reserve Cloud PC assignment.

### Education

- [Create](/graph/api/educationassignmentsettings-post-gradingschemes?view=graph-rest-beta&preserve-view=true) a new [educationGradingScheme](/graph/api/resources/educationgradingscheme?view=graph-rest-beta&preserve-view=true) on an [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta&preserve-view=true).
- [Add](/graph/api/educationassignment-put-gradingscheme?view=graph-rest-beta&preserve-view=true) an existing [educationGradingScheme](/graph/api/resources/educationgradingscheme?view=graph-rest-beta&preserve-view=true) to an existing [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true).
- [Add](/graph/api/educationassignmentsettings-put-defaultgradingscheme?view=graph-rest-beta&preserve-view=true) the default [educationGradingScheme](/graph/api/resources/educationgradingscheme?view=graph-rest-beta&preserve-view=true) to an [educationAssignmentSettings](/graph/api/resources/educationassignmentsettings?view=graph-rest-beta&preserve-view=true) object.

### Files

- The new SharePoint Embedded migration API enables you to programmatically schedule [SharePoint migration jobs](/graph/api/resources/sharepointmigrationjob?view=graph-rest-beta&preserve-view=true) for bulk-migrating content from intermediary Azure blob storage containers to the target [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true).
- Defined the following endpoints as supported for the [driveItem: discardCheckout](/graph/api/driveitem-discardcheckout?view=graph-rest-beta&preserve-view=true) API:
  - `/drives/{driveId}/items/{itemId}/discardCheckout`
  - `/groups/{groupId}/drive/items/{itemId}/discardCheckout`
  - `/me/drive/items/{item-id}/discardCheckout`
  - `/sites/{siteId}/drive/items/{itemId}/discardCheckout`
  - `/users/{userId}/drive/items/{itemId}/discardCheckout`

### Teamwork and communications | Administration

- [Get the policy ID](/graph/api/teamsadministration-teamspolicyassignment-getpolicyid?view=graph-rest-beta&preserve-view=true) for a given policy name and policy type within Teams administration.
- [Assign a Teams policy](/graph/api/teamsadministration-teamspolicyuserassignment-assign?view=graph-rest-beta&preserve-view=true) to a user using the user ID, policy type, and policy ID.
- [Unassign a Teams policy](/graph/api/teamsadministration-teamspolicyuserassignment-unassign?view=graph-rest-beta&preserve-view=true) from a user using the user ID and policy type.
- Added the [telephoneNumberManagementRoot](/graph/api/resources/teamsadministration-telephonenumbermanagementroot?view=graph-rest-beta&preserve-view=true) resource that represents a collection of available telephone number management operations.

### Teamwork and communications | Calls and online meetings

- Removed `inACall`, `inAConferenceCall`, `inactive`, `inAMeeting`, `presenting`, `urgentInterruptionsOnly`, and `offWork` as supported values for the **activity** property of [presence](/graph/api/resources/presence).
- Removed `availableIdle` and `busyIdle` as supported values for the **availability** property of [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true).
- Added `focusing`, `inACall`, `inAMeeting`, and `presenting` as supported values to the **availability** property of [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true).
- The throttling limit for the [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) resource increased from 1,500 to 10,000 requests per 30 seconds, per application per tenant.

### Security | eDiscovery

Added `holdPolicySync` as a supported value for the **action** property of the [caseOperation](/graph/resources/security-caseoperation?view=graph-rest-beta&preserve-view=true) and its inherited types.

### Teamwork and communications | Messaging

- [Create a one-on-one or group chat with installed apps](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true#example-3-create-a-one-on-one-chat-with-installed-apps).
- [Create a one-on-one or group chat with RSC-granted apps](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true#example-4-create-a-one-on-one-chat-with-rsc-granted-apps).

### Workbooks and charts

- Create a new [workbookComment](/graph/api/workbookcomment-post-comments?view=graph-rest-beta&preserve-view=true).
- Use the **cellAddress** property on [workbookComment](/graph/api/resources/workbookcomment?view=graph-rest-beta&preserve-view=true) to get the cell where the comment is located.
- Use the **mentions** property on [workbookComment](/graph/api/resources/workbookcomment?view=graph-rest-beta&preserve-view=true) or [workbookCommentReply](/graph/api/resources/workbookcommentreply?view=graph-rest-beta&preserve-view=true) to get all the people mentioned within the comment or reply.
- Use the **richContent** property on [workbookComment](/graph/api/resources/workbookcomment?view=graph-rest-beta&preserve-view=true) or [workbookCommentReply](/graph/api/resources/workbookcommentreply?view=graph-rest-beta&preserve-view=true) to get the rich content of the comment or reply.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
