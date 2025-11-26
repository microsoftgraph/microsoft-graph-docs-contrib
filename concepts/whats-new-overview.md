---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 11/18/2025
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## November 2025: New and generally available

### Identity and access | Directory management

Deleted security groups can now be restored from [deleted items](/graph/api/resources/directory) within 30 days of deletion, similar to Microsoft 365 groups. Use the [Restore deleted item](/graph/api/directory-deleteditems-restore) API to restore a deleted security group.

### Backup storage

The [driveItem: restore](/graph/api/driveitem-restore) method was expanded to enable restoring a **driveItem** deleted from a **fileStorageContainer** without mapping it to a **recycleBinItem**. This complements existing functionality in [recycleBinItem: restore](/graph/api/filestoragecontainer-restore-recyclebinitem) which continues to work as expected.

### Files

- The new SharePoint Embedded migration API enables you to programmatically schedule [SharePoint migration jobs](/graph/api/resources/sharepointmigrationjob) for bulk-migrating content from intermediary Azure blob storage containers to the target [fileStorageContainer](/graph/api/resources/filestoragecontainer).
- Deprecated the [drive: recent](/graph/api/drive-recent) and [drive: sharedWithMe](/graph/api/drive-sharedwithme) methods of the [drive](/graph/api/resources/drive) resource.
- Removed the endpoint `/driveitem/retentionLabel` as a supported request URL from the following API topics:
  - [driveItem: getRetentionLabel](/graph/api/driveitem-getretentionlabel)
  - [driveItem: lockOrUnlockRecorddriveItem: lockOrUnlockRecord](/graph/api/driveitem-lockorunlockrecord)
  - [driveItem: removeRetentionLabel](/graph/api/driveitem-removeretentionlabel)
  - [driveItem: setRetentionLabel](/graph/api/driveitem-setretentionlabel)

### Teamwork and communications | Calls and online meetings

- Use resource-specific consent (RSC) permissions for virtual events. For more information, see [Virtual events town hall API use cases](/graph/cloud-communications-virtual-events-townhall-usecases#resource-specific-consent-rsc-for-virtual-events) and [Virtual events webinar API use cases](/graph/cloud-communications-virtual-events-webinar-usecases#resource-specific-consent-rsc-for-virtual-events).
- Added the **sensitivityLabelAssignment** property to the [onlineMeeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true), which represents the meeting’s sensitivity level. This ID corresponds to the identifier configured in the Microsoft Purview portal.
- Use the **expiryDateTime** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to indicate the date and time when the meeting resource expires.
- Use the **meetingSpokenLanguageTag** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to specify the spoken language used during the meeting for recording and transcription purposes.
- Use the **meetingOptionsWebUrl** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to get the URL to the Teams meeting options page for the specified meeting.


## November 2025: New in preview only

### Agents

Use the [Microsoft Entra Agent ID APIs](/graph/api/resources/agentid-platform-overview?view=graph-rest-beta&preserve-view=true) to manage identities for AI agents using the same identity and access management capabilities that protect human users. The APIs include capabilities to manage the following objects:
- Agent registrations
- Agent users
- The Microsoft Entra agent registry

Additionally, the first-class Microsoft Entra experience allows you to leverage the familiar automation capabilities in Conditional Access, ID Governance, and Identity Protection.

### Applications

Added the **riskFactors** and **riskScore** properties to the [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true) resource type which represents apps on the Microsoft Entra app gallery. These properties provide insights into the security posture of application templates.

### Calendars | Places

- Use the **wifiState** property on [building](/graph/api/resources/building?view=graph-rest-beta&preserve-view=true) to indicate whether a building has Wi-Fi.
- Use the **heightAdjustableState** property on [desk](/graph/api/resources/desk?view=graph-rest-beta&preserve-view=true) to indicate whether a desk is height adjustable.
- Use the **teamsEnabledState** property on [room](/graph/api/resources/room?view=graph-rest-beta&preserve-view=true) to indicate whether a room is enabled for Microsoft Teams.
- Removed the **placeId** property from the [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) resource and its derived types. Going forward only the following derived types of **place** have the **placeId** property: [room](/graph/api/resources/room?view=graph-rest-beta&preserve-view=true) and [workspace](/graph/api/resources/workspace?view=graph-rest-beta&preserve-view=true).
- Removed the [offlinePlaceMode](/graph/api/resources/offlineplacemode?view=graph-rest-beta&preserve-view=true) resource in favor of the [unavailablePlaceMode](/graph/api/resources/unavailableplacemode?view=graph-rest-beta&preserve-view=true) resource.

### Files

- Use the SharePoint cross-tenant migration APIs in Microsoft Graph to enable organizations to manage identity mappings during tenant-to-tenant migrations. For more information, see [sharePointUserIdentityMapping](/graph/api/resources/sharePointUserIdentityMapping?view=graph-rest-beta&preserve-view=true) and [sharePointGroupIdentityMapping](/graph/api/resources/sharePointGroupIdentityMapping?view=graph-rest-beta&preserve-view=true).
- Deprecated the [drive: recent](/graph/api/drive-recent?view=graph-rest-beta&preserve-view=true) and [drive: sharedWithMe](/graph/api/drive-sharedwithme?view=graph-rest-beta&preserve-view=true) methods of the [drive](/graph/api/resources/drive?view=graph-rest-beta&preserve-view=true) resource.
- Removed the endpoint `/driveitem/retentionLabel` as a supported request URL from the following API topics:
  - [driveItem: getRetentionLabel](/graph/api/driveitem-getretentionlabel?view=graph-rest-beta&preserve-view=true)
  - [driveItem: lockOrUnlockRecord](/graph/api/driveitem-lockorunlockrecord?view=graph-rest-beta&preserve-view=true)
  - [driveItem: removeRetentionLabel](/graph/api/driveitem-removeretentionlabel?view=graph-rest-beta&preserve-view=true)
  - [driveItem: setRetentionLabel](/graph/api/driveitem-setretentionlabel?view=graph-rest-beta&preserve-view=true)

### Identity and access | Governance

Added the [customDataProvidedResource](/graph/api/resources/customdataprovidedresource?view=graph-rest-beta&preserve-view=true) resource to support user-centric access reviews.

### Identity and access | Identity and sign-in

- Added support for managing Microsoft Entra agent identities using Conditional Access policies with the introduction of the following changes:
  - Added **agentIdServicePrincipalFilter**, **excludeAgentIdServicePrincipals**, and **includeAgentIdServicePrincipals** properties to the [conditionalAccessApplications](/graph/api/resources/conditionalaccessapplications?view=graph-rest-beta&preserve-view=true) resource.
  - Added the **agentIdRiskLevels** property to the [conditionalAccessConditionSet](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta&preserve-view=true) and [signInConditions](/graph/api/resources/signinconditions?view=graph-rest-beta&preserve-view=true) resources.
  - Added `agentIdRisk`, `agentIdentities` as possible values for analysisReasons property of the whatIfAnalysisResult resource that's part of the [What If evaluation API](/graph/api/conditionalaccessroot-evaluate).
  
- Added the [agentRiskDetection](/graph/api/resources/agentriskdetection?view=graph-rest-beta&preserve-view=true) and [riskyAgent](/graph/api/resources/riskyagent?view=graph-rest-beta&preserve-view=true) resources to support detecting and managing risky agents through Microsoft Entra Identity Protection.

- Added the [organizationalBrandingTheme](/graph/api/resources/organizationalbrandingtheme?view=graph-rest-beta&preserve-view=true) and [organizationalBrandingThemeLocalization](/graph/api/resources/organizationalbrandingtheme?view=graph-rest-beta&preserve-view=true) resource types to apply branding themes to applications as opposed to the global tenant-based branding for sign-in experiences. This also enabled locale-specific branding for applications.

-  In Microsoft Entra External ID for customer tenants, you can now enable your customers to sign-in with their username or alias. This capability includes a sign-in identifiers policy for you to configure whether username can be used as a sign-in identifier and you can specify a custom regex to be applied at run-time. For more information, see the [signInIdentifierBase](/graph/api/resources/signinidentifierbase?view=graph-rest-beta&preserve-view=true) resource type and its associated APIs.

- Added the [verifiedIdProfile](/graph/api/resources/verifiedidprofile?view=graph-rest-beta&preserve-view=true) resource type to represent a verified identity profile as one of the supported authentication methods in Microsoft Entra.

- Added the **defaultPasskeyProfile** property and the **passkeyProfiles** navigation property to the [FIDO2 authentication method policy](/graph/api/resources/fido2authenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resource. In addition, use the **passkeyType** property in the [FIDO2 authentication method](/graph/api/resources/fido2authenticationmethod?view=graph-rest-beta&preserve-view=true) resource to configure allowed passkeys for the user's FIDO2 authentication method.

### Identity and access | Network access

- Added APIs for reporting metrics related to Global Secure Access in the [serviceActivity](/graph/api/resources/serviceactivity?view=graph-rest-beta&preserve-view=true) resource that reports on service activity for various Microsoft services. The following APIs are now available:
  - [Get network access internet app policy blocked users metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyblockedusers?view=graph-rest-beta&preserve-view=true)
  - [Get network access internet app policy blocked apps metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyblockedapps?view=graph-rest-beta&preserve-view=true)
  - [Get network access internet app policy allowed users metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyallowedusers?view=graph-rest-beta&preserve-view=true)
  - [Get network access internet app policy allowed apps metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyallowedapps?view=graph-rest-beta&preserve-view=true)
  - [Get network access private app users blocked by connector metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessprivateappusersblockedbyconnector?view=graph-rest-beta&preserve-view=true)
  - [Get network access private apps blocked by connector metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessprivateappsblockedbyconnector?view=graph-rest-beta&preserve-view=true)
  - [Get network access private app users allowed by connector metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessprivateappusersallowedbyconnector?view=graph-rest-beta&preserve-view=true)
  - [Get network access private apps allowed by connector metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessprivateappsallowedbyconnector?view=graph-rest-beta&preserve-view=true)
  - [Get network access remote network branches alive metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchesalive?view=graph-rest-beta&preserve-view=true)
  - [Get network access remote network branches tunnel disconnected metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchestunneldisconnected?view=graph-rest-beta&preserve-view=true)
  - [Get network access remote network branches tunnel connected metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchestunnelconnected?view=graph-rest-beta&preserve-view=true)
  - [Get network access remote network branches BGP disconnected metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchesbgpdisconnected?view=graph-rest-beta&preserve-view=true)
  - [Get network access remote network branches BGP connected metrics](/graph/api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchesbgpconnected?view=graph-rest-beta&preserve-view=true)

- Added the **categories** property to the [cloudApplicationMetadata](/graph/api/resources/networkaccess-cloudapplicationmetadata?view=graph-rest-beta&preserve-view=true) resource.

### Microsoft MCP Server for Enterprise

Introducing the Microsoft MCP Server for Enterprise - the official MCP server for querying Microsoft Entra data using natural language. The server calls the Microsoft Entra APIs on Microsoft Graph to retrieve data and generate responses based on user queries. It supports a wide range of Microsoft Entra data, including users, groups, devices, applications, and more. See [Overview of Microsoft MCP server for Enterprise](/graph/mcp-server/overview) for more information.

### Reports | Identity and access reports

- Added support for sign in logs for Microsoft Entra agent identities to Microsoft Entra sign-in reports with the introduction of the following changes:
  - Added **agentSubjectParentId** and **agentSubjectType** properties to the [agentSignIn](/graph/api/resources/agentsignin?view=graph-rest-beta&preserve-view=true) resource.
  - Added **agentIdentityBlueprintPrincipal** and **agentIDuser** enumeration members to the **agentType** property of the [agentSignIn](/graph/api/resources/agentsignin?view=graph-rest-beta&preserve-view=true) resource.

### Security

- Use the [Security Copilot APIs](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#security-copilot-preview) to integrate advanced AI assistance related to Microsoft Entra into your custom portals and applications. The APIs provide capabilities to create sessions, prompts, and evaluations using the available plugins, enabling tailored AI-driven security workflows for your line-of-business applications.
- Added the [identityAccounts](/graph/api/resources/security-identityaccounts?view=graph-rest-beta&preserve-view=true) resource type to represent user and service accounts associated with an identity in the context of security investigations and alerts in Microsoft Defender for Identity.

### Security | Data security and compliance

Use the **hasProtection** property on [sensitivityLabel](/graph/api/resources/security-sensitivitylabel?view=graph-rest-beta&preserve-view=true) to indicate whether the label has protection actions.

### Tasks and plans

- [Get](/graph/api/plannerplan-getusagerights?view=graph-rest-beta&preserve-view=true) the usage rights for a specific [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) based on its sensitivity label assignment and the requesting user's permissions.
- Use the **contentSensitivityLabelAssignment** property on [plannerPlan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) to get or set the sensitivity label assignment for a plan.

### Teamwork and communications | Presence

Use the following new endpoints to enable the management of work location for a user:
- [Clear](/graph/api/presence-clearautomaticlocation?view=graph-rest-beta&preserve-view=true) the automatic work location value for a user.
- [Clear](/graph/api/presence-clearlocation?view=graph-rest-beta&preserve-view=true) the work location signals for a user, including both the manual and automatic layers for the current date.
- [Update](/graph/api/presence-setautomaticlocation?view=graph-rest-beta&preserve-view=true) the automatic work location for a user.
- [Set](/graph/api/presence-setmanuallocation?view=graph-rest-beta&preserve-view=true) the user’s manual work location signal.

### Teamwork and communications | Calls and online meetings

- Added the **sensitivityLabelAssignment** property to the [onlineMeeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true), which represents the meeting’s sensitivity level. This ID corresponds to the identifier configured in the Microsoft Purview portal.
- Use the `Accept-Language` header with the [Create virtualEventWebinar](/graph/api/virtualeventsroot-post-webinars?view=graph-rest-beta&preserve-view=true) and [Create virtualEventTownhall](/graph/api/virtualeventsroot-post-townhalls?view=graph-rest-beta&preserve-view=true) methods to specify an acceptable human language for the response.
- Use the **expiryDateTime** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to indicate the date and time when the meeting resource expires.
- Use the **meetingSpokenLanguageTag** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to specify the spoken language used during the meeting for recording and transcription purposes.

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

- Applied the following [prerequisites for the Places list and descendant APIs](/graph/api/resources/places-api-overview?view=graph-rest-beta&preserve-view=true#prerequisites-for-places-list-and-descendant-apis) before you can use these APIs; otherwise, they don't return any places.
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
- Deprecated the [cloudPcReports: retrieveCloudPcRecommendationReports](/graph/api/cloudpcreports-retrievecloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true) method in favor of the [cloudPcReport: retrieveCloudPcRecommendationReports](/graph/api/cloudpcreport-retrievecloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true) API.
- Deprecated the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource in favor of the [cloudPcReport](/graph/api/resources/cloudpcreport?view=graph-rest-beta&preserve-view=true) resource.

### Education

- [List the dependent education assignment resources](/graph/api/educationassignmentresource-list-dependentresources?view=graph-rest-beta&preserve-view=true) for a given education assignment resource.
- [List the dependent education submission resources](/graph/api/educationsubmissionresource-list-dependentresources?view=graph-rest-beta&preserve-view=true) for a given education submission resource.

### Teamwork and communications | Calls and online meetings

Use the **meetingOptionsWebUrl** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to get the URL to the Teams meeting options page for the specified meeting.

### Security | Data security and compliance

- Deprecated the **accessedResources** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) in favor of the **accessedResources_v2** property.
- Use the **accessedResources_v2** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get detailed information about resources accessed during the conversation, including identifiers, access type, and status.
- Use the **agents** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get information about AI agents that participated in the preparation of the message.

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