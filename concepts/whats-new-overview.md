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

### Identity and access | Directory management

Deleted security groups can now be restored from [deleted items](/graph/api/resources/directory) within 30 days of deletion, similar to Microsoft 365 groups. Use the [Restore deleted item](/graph/api/directory-deleteditems-restore) API to restore a deleted security group.

### Identity and access | Governance

Added the [userInactivityTrigger](/graph/api/resources/userinactivitytrigger) resource to support automatic triggering of access reviews based on user inactivity.

### Teamwork and communications | Calls and online meetings

Use resource-specific consent (RSC) permissions for virtual events. For more information, see [Virtual events town hall API use cases](/graph/cloud-communications-virtual-events-townhall-usecases#resource-specific-consent-rsc-for-virtual-events) and [Virtual events webinar API use cases](/graph/cloud-communications-virtual-events-webinar-usecases#resource-specific-consent-rsc-for-virtual-events).

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

- Added the [customDataProvidedResource](/graph/api/resources/customdataprovidedresource?view=graph-rest-beta&preserve-view=true) resource to support user-centric access reviews.
- Added the **administrationScopeTargets** relationship to the [workflowBase](/graph/api/resources/workflowbase?view=graph-rest-beta&preserve-view=true) resource and its derived types to support scoping lifecycle workflows to specific administrative units.

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

- Use the [deployment](/graph/api/resources/networkaccess-deployment?view=graph-rest-beta&preserve-view=true) resource and its associated methods to retrieve logs that track the status of deployments performed through the Global Secure Access services.

### Microsoft MCP Server for Enterprise

Introducing the Microsoft MCP Server for Enterprise - the official MCP server for querying Microsoft Entra data using natural language. The server calls the Microsoft Entra APIs on Microsoft Graph to retrieve data and generate responses based on user queries. It supports a wide range of Microsoft Entra data, including users, groups, devices, applications, and more. See [Overview of Microsoft MCP server for Enterprise](/graph/mcp-server/overview) for more information.

### Reports | Identity and access reports

- Added support for sign in logs for Microsoft Entra agent identities to Microsoft Entra sign-in reports with the introduction of the following changes:
  - Added **agentSubjectParentId** and **agentSubjectType** properties to the [agentSignIn](/graph/api/resources/agentsignin?view=graph-rest-beta&preserve-view=true) resource.
  - Added **agentIdentityBlueprintPrincipal** and **agentIDuser** enumeration members to the **agentType** property of the [agentSignIn](/graph/api/resources/agentsignin?view=graph-rest-beta&preserve-view=true) resource.

### Security

- Use the [Security Copilot APIs](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#security-copilot-preview) to integrate advanced AI assistance related to Microsoft Entra into your custom portals and applications. The APIs provide capabilities to create sessions, prompts, and evaluations using the available plugins, enabling tailored AI-driven security workflows for your line-of-business applications.
- Added the [identityAccounts](/graph/api/resources/security-identityaccounts?view=graph-rest-beta&preserve-view=true) resource type to represent user and service accounts associated with an identity in the context of security investigations and alerts in Microsoft Defender for Identity.
- Added the **hasProtection** property to the [sensitivityLabel](/graph/api/resources/security-sensitivitylabel?view=graph-rest-beta&preserve-view=true) resource to indicate whether the label has protection actions such as encryption and forwarding restrictions.

### Security | Data security and compliance

Use the **hasProtection** property on [sensitivityLabel](/graph/api/resources/security-sensitivitylabel?view=graph-rest-beta&preserve-view=true) to indicate whether the label has protection actions.

### Tasks and plans

- [Get](/graph/api/plannerplan-getusagerights?view=graph-rest-beta&preserve-view=true) the usage rights for a specific [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) based on its sensitivity label assignment and the requesting user's permissions.
- Use the **contentSensitivityLabelAssignment** property on [plannerPlan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) to get or set the sensitivity label assignment for a plan.

### Teamwork and communications | Calls and online meetings

- Added the **sensitivityLabelAssignment** property to the [onlineMeeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true), which represents the meeting's sensitivity level. This ID corresponds to the identifier configured in the Microsoft Purview portal.
- Use the `Accept-Language` header with the [Create virtualEventWebinar](/graph/api/virtualeventsroot-post-webinars?view=graph-rest-beta&preserve-view=true) and [Create virtualEventTownhall](/graph/api/virtualeventsroot-post-townhalls?view=graph-rest-beta&preserve-view=true) methods to specify an acceptable human language for the response.
- Use the **expiryDateTime** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to indicate the date and time when the meeting resource expires.
- Use the **meetingSpokenLanguageTag** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to specify the spoken language used during the meeting for recording and transcription purposes.

### Teamwork and communications | Presence

Use the following new endpoints to enable the management of work location for a user:
- [Clear](/graph/api/presence-clearautomaticlocation?view=graph-rest-beta&preserve-view=true) the automatic work location value for a user.
- [Clear](/graph/api/presence-clearlocation?view=graph-rest-beta&preserve-view=true) the work location signals for a user, including both the manual and automatic layers for the current date.
- [Update](/graph/api/presence-setautomaticlocation?view=graph-rest-beta&preserve-view=true) the automatic work location for a user.
- [Set](/graph/api/presence-setmanuallocation?view=graph-rest-beta&preserve-view=true) the user's manual work location signal.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
