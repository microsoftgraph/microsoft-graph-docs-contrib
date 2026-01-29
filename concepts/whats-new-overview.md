---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 01/28/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## January 2026: New and generally available

### Identity and access | Identity and sign-in

- Added `qrCode` as a new supported value for the **usageAuthMethod** enumeration which is the type for the **authMethod** property on [credentialUsageSummary](/graph/api/resources/credentialusagesummary), [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails), [userEventsSummary](/graph/api/resources/usereventssummary), and [userRegistrationActivitySummary](/graph/api/resources/userregistrationactivitysummary) resources. This value represents the use of the [QR code](/graph/api/resources/qrcodepinauthenticationmethod) as an authentication method.
- Added the [externalAuthenticationMethod](/graph/api/resources/externalauthenticationmethod) resource to represent external authentication methods registered to a user for authentication using an external identity provider.
- Added the **externalAuthenticationMethods** relationship to the [authentication](/graph/api/resources/authentication) resource.
- Added the **createdDateTime** property to the [authenticationMethod](/graph/api/resources/authenticationmethod) resource.
- Changed the **createdDateTime** property to be inherited from [authenticationMethod](/graph/api/resources/authenticationmethod) in the following derived authentication method resources: [fido2AuthenticationMethod](/graph/api/resources/fido2authenticationmethod), [microsoftAuthenticatorAuthenticationMethod](/graph/api/resources/microsoftauthenticatorauthenticationmethod), [passwordAuthenticationMethod](/graph/api/resources/passwordauthenticationmethod), [platformCredentialAuthenticationMethod](/graph/api/resources/platformcredentialauthenticationmethod), [temporaryAccessPassAuthenticationMethod](/graph/api/resources/temporaryaccesspassauthenticationmethod), and [windowsHelloForBusinessAuthenticationMethod](/graph/api/resources/windowshelloforbusinessauthenticationmethod).
- Starting January 26, 2026, users who manage their own [authentication methods](/graph/api/resources/authenticationmethods-overview) through self-service operations, such as adding, updating, or deleting phone numbers and email addresses, must complete multifactor authentication (MFA) if they last authenticated more than 10 minutes ago in the current session. For more guidance on handling this change in your application, see [Microsoft Entra authentication methods API overview](/graph/api/resources/authenticationmethods-overview).

### Reports | Microsoft 365 usage reports

Going forward, use the Microsoft 365 Copilot usage APIs under the `/copilot` URL path segment. For more information, see:
- [Copilot report root](/microsoft-365-copilot/extensibility/api/admin-settings/reports/resources/copilotreportroot)
- [Get Copilot user count summary](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusercountsummary)
- [Get Copilot user count trend](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusercounttrend)
- [Get Copilot usage user detail](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusageuserdetail)

### Security

- Added the **priorityScore** property to the [incident](/graph/api/resources/security-incident) resource to provide a priority score for the incident from 0 to 100, with > 85 being the top priority, 15 - 85 medium priority, and < 15 low priority. This score is generated using machine learning and is based on multiple factors, including severity, disruption impact, threat intelligence, alert types, asset criticality, threat analytics, incident rarity, and additional priority signals.
- Made the following updates to APIs for managing Microsoft Defender for Identity (MDI) sensors:
  - Added the **domainName** property to the [sensorCandidate](/graph/api/resources/security-sensorcandidate) resource to specify the domain name of the sensor.
  - Added the **serviceStatus** property to the [sensor](/graph/api/resources/security-sensor) resource to indicate the service status. The possible values are: `stopped`, `starting`, `running`, `disabled`, `onboarding`, `unknown`, `unknownFutureValue`.
- Added migration guidance for Microsoft Defender for Endpoint (MDE) advanced hunting APIs to help organizations transition from the retired APIs that were available through the `https://api.securitycenter.microsoft.com` endpoint to the advanced hunting APIs available in Microsoft Graph. For more information, see [Migrate from the older APIs](/graph/api/resources/security-api-overview#migrate-from-older-apis).

### Security | Identities

The Defender for Identity sensor management APIs let you discover eligible servers, control automatic onboarding, activate or deactivate the unified agent, and manage required auditing settings during activation—all through a single management interface.

### Teamwork and communications | Administration

- [Get the policy ID](/graph/api/teamsadministration-teamspolicyassignment-getpolicyid) for a given policy name and policy type within Teams administration.
- [Assign a Teams policy](/graph/api/teamsadministration-teamspolicyuserassignment-assign) to a user using the user ID, policy type, and policy ID.
- [Unassign a Teams policy](/graph/api/teamsadministration-teamspolicyuserassignment-unassign) from a user using the user ID and policy type.

### Teamwork and communications | Apps

The `TeamsAppInstallation.ManageSelectedForTeam.All` is the least privileged application permission required to install or upgrade a Teams app that requires consent to [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions when using the [teamsAppInstallation in a team: upgrade](/graph/api/team-teamsappinstallation-upgrade) API.

## January 2026: New in preview only

### Applications

The **allowedTenantIds** property on [allowedTenantsAudience](/graph/api/resources/allowedtenantsaudience?view=graph-rest-beta&preserve-view=true) must contain at least one value and can't include more than 20 values.

### Device and app management | Cloud PC

- Added `mexico` as a new supported value for the **cloudPcGeographicLocationType** enumeration type. This enum is the return type for the **geographicLocationType** property on [cloudPcDomainJoinConfiguration](/graph/api/resources/cloudpcdomainjoinconfiguration?view=graph-rest-beta&preserve-view=true) and [cloudPcSupportedRegion](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true).
- Added the `cloudPCInventoryReport` member to the **cloudPcReportName** enumeration type. This enum is the return type for the **reportName** property on [cloudPcExportJob](/graph/api/resources/cloudPcExportJob?view=graph-rest-beta&preserve-view=true),  [getFrontlineReport action](/graph/api/cloudpcreports-getfrontlinereport?view=graph-rest-beta&preserve-view=true), and [getCloudPcRecommendationReports action](/graph/api/cloudpcreports-getcloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true).
- Use the **category** property on [cloudPcSourceDeviceImage](/graph/api/resources/cloudpcsourcedeviceimage?view=graph-rest-beta&preserve-view=true) to get the category of the source image that is requested. For more information, see [Get cloudPcSourceDeviceImage objects with a specific category](/graph/api/cloudpcdeviceimage-getsourceimages?view=graph-rest-beta&preserve-view=true#example-2-get-cloudpcsourcedeviceimage-objects-with-a-specific-category).
- Added `refreshPolicyConfiguration` as a supported value for the **status** property on the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) and [cloudPcStatusSummary](/graph/api/resources/cloudpcstatussummary?view=graph-rest-beta&preserve-view=true) to indicate that the Cloud PC is in the process of refreshing the new policy configurations.

### Device and app management | Device updates

Added a new approval and deployment management model for Windows quality updates in Autopatch-managed environments. You can now define quality update policies with customizable approval rules, assign deployment rings to group devices for phased rollout, and manage the approval status of update content before deploying to devices. The following resources provide more information:
  - [policy](/graph/api/resources/windowsupdates-policy?view=graph-rest-beta&preserve-view=true)
  - [qualityUpdatePolicy](/graph/api/resources/windowsupdates-qualityupdatepolicy?view=graph-rest-beta&preserve-view=true)
  - [policyApproval](/graph/api/resources/windowsupdates-policyapproval?view=graph-rest-beta&preserve-view=true)
  - [ring](/graph/api/resources/windowsupdates-ring?view=graph-rest-beta&preserve-view=true)
  - [qualityUpdateRing](/graph/api/resources/windowsupdates-qualityupdatering?view=graph-rest-beta&preserve-view=true)

### Groups

Use the **welcomeMessageEnabled** property on the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource to control whether a welcome message is sent to new members when they're added to a Microsoft 365 group. The default value is `true`.

### Identity and access | Identity and sign-in

- Added `riskRemediation` as a new member to the [conditionalAccessGrantControl](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta&preserve-view=true#builtincontrols-property) enumeration. This value allows users to self-remediate their user risk through conditional access policies.
- Use the **groupSyncInbound** property on [crossTenantIdentitySyncPolicyPartner](/graph/api/resources/crosstenantidentitysyncpolicypartner?view=graph-rest-beta&preserve-view=true) to define whether groups can be synchronized from a partner tenant in cross-tenant access policy settings.

### Message trace

Use the message trace API to track the flow of email messages through your Exchange Online organization. For more information, see [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports

Added `qrCode` as a new supported value for the **usageAuthMethod** enumeration which is the type for the **authMethod** property on [credentialUsageSummary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta&preserve-view=true), [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta&preserve-view=true), [userEventsSummary](/graph/api/resources/usereventssummary?view=graph-rest-beta&preserve-view=true), and [userRegistrationActivitySummary](/graph/api/resources/userregistrationactivitysummary?view=graph-rest-beta&preserve-view=true) resources. This value represents the use of the [QR code](/graph/api/resources/qrcodepinauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method.

### Security | Alerts and incidents

Added the **priorityScore** property to the [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true) resource to provide a priority score for the incident from 0 to 100, with > 85 being the top priority, 15 - 85 medium priority, and < 15 low priority. This score is generated using machine learning and is based on multiple factors, including severity, disruption impact, threat intelligence, alert types, asset criticality, threat analytics, incident rarity, and additional priority signals.

### Security | Cloud zones

Added support for managing *zones* in Microsoft Defender for Cloud, enabling organizations to segment multi-cloud environments (Azure, AWS, GCP, and DevOps or registry sources) into logical groupings for access and security management at scale. The [zone](/graph/api/resources/security-zone?view=graph-rest-beta&preserve-view=true) resource type and its associated [environment](/graph/api/resources/security-environment?view=graph-rest-beta&preserve-view=true) resource let you consistently apply least-privilege access controls and manage collections of attached environments within Microsoft Graph.

### Security | Data security and compliance

- Deprecated the **accessedResources** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) in favor of the **accessedResources_v2** property.
- Use the **accessedResources_v2** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get detailed information about resources accessed during the conversation, including identifiers, access type, and status.
- Use the **agents** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get information about AI agents that participated in the preparation of the message.

### Teamwork and communications | Apps

The `TeamsAppInstallation.ManageSelectedForTeam.All` is the least privileged application permission required to install or upgrade a Teams app that requires consent to [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions when using the [teamsAppInstallation in a team: upgrade](/graph/api/team-teamsappinstallation-upgrade?view=graph-rest-beta&preserve-view=true) API.

### Tenant administration | Configuration management

The new unified tenant configuration management APIs in Microsoft Graph allow administrators to control and manage configuration settings across a single workload or multiple workloads within an organization. To learn more about supported use cases, see [Use the unified tenant configuration management APIs in Microsoft Graph (preview)](/graph/api/resources/unified-tenant-configuration-management-api-overview?view=graph-rest-beta&preserve-view=true).

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
