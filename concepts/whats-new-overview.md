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

## December 2025: New and generally available

### Device and app management | Cloud printing

Added new supported [media sizes](/graph/api/resources/printercapabilities#mediasizes-values) to the **mediaSizes** property of the [printerCapabilities](/graph/api/resources/printercapabilities) resource.

## December 2025: New in preview only

### Device and app management | Cloud printing

Added new supported [media sizes](/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true#mediasizes-values) to the **mediaSizes** property of the [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true) resource.

## November 2025: New and generally available

### Backup storage

The [driveItem: restore](/graph/api/driveitem-restore) method was expanded to enable restoring a **driveItem** deleted from a **fileStorageContainer** without mapping it to a **recycleBinItem**. This complements existing functionality in [recycleBinItem: restore](/graph/api/filestoragecontainer-restore-recyclebinitem) which continues to work as expected.

## October 2025: New and generally available

### Backup storage

- Use the **protectionSources** property on [driveProtectionUnit](/graph/api/resources/driveprotectionunit), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit) to get the sources by which a protection unit is currently protected.
- [Update](/graph/api/protectionrulebase-update) a [driveProtectionRule](/graph/api/resources/driveprotectionrule) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule).
- [Delete and unprotect](/graph/api/protectionrulebase-deleteandunprotect) all the artifacts protected by a dynamic rule in a [driveProtectionRule](/graph/api/resources/driveprotectionrule) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule).

### Device and app management | Cloud PC

[List](/graph/api/user-list-cloudpcs) the Cloud PC devices that are attributed to the signed-in user.

### Education

- [Add](/graph/api/educationassignment-put-gradingscheme) an existing [educationGradingScheme](/graph/api/resources/educationgradingscheme) to an existing [educationAssignment](/graph/api/resources/educationassignment).
- [Add](/graph/api/educationassignmentsettings-put-defaultgradingscheme) the default [educationGradingScheme](/graph/api/resources/educationgradingscheme) to an [educationAssignmentSettings](/graph/api/resources/educationassignmentsettings) object.
- Use the **languageTag** property on [educationAssignment](/graph/api/resources/educationassignment) to specify the language in which UI notifications for an assignment are displayed.
- Create and manage a [custom scheme for grading](/graph/api/resources/educationgradingscheme).
- [List the dependent education assignment resources](/graph/api/educationassignmentresource-list-dependentresources) for a given education assignment resource.
- [List the dependent education submission resources](/graph/api/educationsubmissionresource-list-dependentresources) for a given education submission resource.

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

### Security | Alerts and incidents

Use the **investigationState** property on [alert](/graph/api/resources/security-alert) to get the current status of an investigation.

### Teamwork and communications | Calls and online meetings

Use the [callEvent](/graph/api/resources/callevent) and [emergencyCallEvent](/graph/api/resources/emergencycallevent) resources to provide detailed information about both standard and emergency call events. For more information, see [Change notification for active meeting call events](/graph/changenotifications-for-onlinemeeting) and [change notification for emergency call events](/graph/changenotifications-for-emergencycalls).

### Teamwork and communications | Messaging

Use the **originalSourceMembershipUrl** annotation with the [List allMembers](/graph/api/channel-list-allmembers) API to identify the source of a member's membership and distinguish between direct and indirect members.

## October 2025: New in preview only

### Calendars | Places

- Apply the following [prerequisites for the Places list and descendant APIs](/graph/api/resources/places-api-overview?view=graph-rest-beta&preserve-view=true#prerequisites-for-places-list-and-descendant-apis) before you can use these APIs; otherwise, they don't return any places.
- Added `wifi` as a new supported value for the **sensorType** property of the [workplaceSensor](/graph/api/resources/workplacesensor?view=graph-rest-beta&preserve-view=true) and [workplaceSensorDeviceTelemetry](/graph/api/resources/workplacesensordevicetelemetry?view=graph-rest-beta&preserve-view=true) resources.

### Device and app management | Cloud PC

- Use the **sessionStartDateTime** property on [cloudPcFrontlineSharedDeviceDetail](/graph/api/resources/cloudpcfrontlineshareddevicedetail?view=graph-rest-beta&preserve-view=true) to get the date and time when the current user session starts, or `null` if no current user session exists.
- Deprecated the [getCloudPcLaunchInfo](/graph/api/cloudpc-getcloudpclaunchinfo?view=graph-rest-beta&preserve-view=true) method in favor of the [retrieveCloudPcLaunchDetail](/graph/api/cloudpc-retrievecloudpclaunchdetail?view=graph-rest-beta&preserve-view=true) API.
- Deprecated the [cloudPcExternalPartnerSetting](/graph/api/resources/cloudpcexternalpartnersetting) resource and replaced with the [cloudPcExternalPartner](/graph/api/resources/cloudpcexternalpartner) resource.
- Deprecated the **frontlineCloudPcAvailability** property of [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) in favor of the [retrieveFrontlineCloudPcDetail](/graph/api/cloudpc-retrievefrontlinecloudpcdetail?view=graph-rest-beta&preserve-view=true) method.
- [Create](/graph/api/virtualendpoint-post-externalpartners?view=graph-rest-beta&preserve-view=true), [get](/graph/api/cloudpcexternalpartner-get?view=graph-rest-beta&preserve-view=true), or [update](/graph/api/cloudpcexternalpartner-update?view=graph-rest-beta&preserve-view=true) [an external partner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true) of Cloud PC, such as the partner status, and enable or disable the connection.
- [Import](/graph/api/cloudpcsnapshot-importsnapshot?view=graph-rest-beta&preserve-view=true), [purge](/graph/api/cloudpcsnapshot-purgeimportedsnapshot?view=graph-rest-beta&preserve-view=true), or [retrieve](/graph/api/cloudpcsnapshot-retrievesnapshotimportresults?view=graph-rest-beta&preserve-view=true) [an external snapshot](/graph/api/resources/cloudpcsnapshotimportactionresult?view=graph-rest-beta&preserve-view=true) of a Cloud PC.
- Get information about licenses that the Cloud PC service directly manages using the [cloudPcManagedLicense](/graph/api/resources/cloudpcmanagedlicense?view=graph-rest-beta&preserve-view=true) resource and the [list managedLicenses](/graph/api/virtualendpoint-list-managedlicenses?view=graph-rest-beta&preserve-view=true) operation. These cloudpc-managed licenses help administrators track license allocation, status, and usage across their Cloud PC deployments.
- Use the **userSettingsPersistenceConfiguration** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) to enable the persistence of user application settings between Cloud PC sessions.

### Education

- [List the dependent education assignment resources](/graph/api/educationassignmentresource-list-dependentresources?view=graph-rest-beta&preserve-view=true) for a given education assignment resource.
- [List the dependent education submission resources](/graph/api/educationsubmissionresource-list-dependentresources?view=graph-rest-beta&preserve-view=true) for a given education submission resource.

### Files

Use the **itemDefaultSensitivityLabelId** property on [fileStorageContainerSettings](/graph/api/resources/filestoragecontainersettings?view=graph-rest-beta&preserve-view=true) to get or set the ID of the default sensitivity label for items in the container.
Added the following new endpoints as supported request URLs for the [driveItem: createUploadSession](/graph/api/driveitem-createuploadsession?view=graph-rest-beta&preserve-view=true) API:
- `POST /drives/{driveId}/items/{parentItemId}:/{fileName}:/createUploadSession`
- `POST /groups/{groupId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession` 
- `POST /sites/{siteId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession`
- `POST /users/{userId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession`

### Security | Alerts and incidents

Use the **investigationState** property on [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) to get the current status of an investigation.

### Sites and lists

[Create](/graph/api/site-post-sites?view=graph-rest-beta&preserve-view=true) a SharePoint site and [monitor](/graph/api/site-getoperationstatus?view=graph-rest-beta&preserve-view=true) its creation status.

### Tasks and plans

Use the extended properties API to store or get custom data in the [todoTask](/graph/api/resources/todotask?view=graph-rest-beta&preserve-view=true#methods) resource.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
