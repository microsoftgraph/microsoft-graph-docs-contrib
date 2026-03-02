---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 02/20/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## March 2026: New and generally available

### People and workplace intelligence | People admin settings

Use the new [profileSource](/graph/api/resources/profilesource) APIs to enable administrators to customize the display information of a profile source seen by users across an organization in Microsoft 365 experiences.

## February 2026: New and generally available

### Files

Updated the admin consent requirement for the following delegated permissions related to SharePoint Embedded file storage container management:
- The `FileStorageContainerType.Manage.All` delegated permission no longer requires admin consent.
- The `FileStorageContainerTypeReg.Manage.All` delegated permission no longer requires admin consent.

### Groups

- Added the **resourceBehaviorOptions** and **resourceProvisioningOptions** properties to the [group](/graph/api/resources/group) resource. These properties enable you to specify group behaviors and associated resources for a Microsoft 365 group.
- Added a known issue: For soft deleted security groups, the **securityEnabled** property returns `false` instead of `true`. To identify the group type, use the **groupTypes** property where `["Unified"]` indicates a Microsoft 365 group and an empty array (`[]`) indicates a security group. For more information, see [Get deleted item](/graph/api/directory-deleteditems-get) and [List deleted items](/graph/api/directory-deleteditems-list).

### Identity and access | Identity and sign-in

- QR code authentication method in Microsoft Entra ID lets you manage the QR code authentication method for users, and how they can sign in with a QR code and PIN. The following key resources support this capability:
   - The [qrCodePinAuthenticationMethod](/graph/api/resources/qrcodepinauthenticationmethod) resource and related APIs for managing QR code PIN authentication methods for users. This single-factor authentication method is designed for frontline workers and combines a QR code with a PIN. The following related resources were also added: [qrCode](/graph/api/resources/qrcode), [qrPin](/graph/api/resources/qrpin), and [qrCodeImageDetails](/graph/api/resources/qrcodeimagedetails).
   - The [qrCodePinAuthenticationMethodConfiguration](/graph/api/resources/qrcodepinauthenticationmethodconfiguration) resource for managing the QR code authentication method policy for a tenant.
   - Updated the [authenticationMethodModes](/graph/api/resources/authenticationmethodmodes) and [baseAuthenticationMethod](/graph/api/resources/baseauthenticationmethod) enumerations to add the `qrCodePin` member to support this new authentication method.

### Message trace

Use the message trace API to track the flow of email messages through your Exchange Online organization. For more information, see [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace).

### Search

- Added the **principal** and **principalCollection** data types to the [externalConnection](/graph/api/resources/externalconnectors-principal) to specify the data type for people‑related property items in the external connection.
- Added the **description** property to the [externalConnection properties](/graph/api/resources/externalconnectors-property) to allow the addition of a description to the schema properties in the external connection.
- Added more tags or semantic labels that can be added to **labels** in the [externalConnection property](/graph/api/resources/externalconnectors-property) in the external connection schema. Labels help Microsoft 365 Copilot understand the semantics of the data in the connection and provide more relevant results. 
- Added the **contentCategory** property to the [externalConnection](/graph/api/resources/externalconnectors-externalconnection) to specify the domain category of the content associated with the external connection for improved relevance and ranking.

### Security | Data security and compliance

Added the `restrictWebGrounding` member to the [dlpAction](/graph/api/resources/enums-security#dlpaction-values) enumeration to support restricting web grounding actions in data loss prevention policies in Microsoft Purview.

### Security | Threat protection

Updated the admin consent requirement for the following delegated permissions related to threat submissions:
- The `ThreatSubmission.Read` delegated permission now requires admin consent.
- The `ThreatSubmission.ReadWrite` delegated permission now requires admin consent.

### Teamwork and communications | Administration

- [Get the policy ID](/graph/api/teamsadministration-teamspolicyassignment-getpolicyid) for a given policy name and policy type within Teams administration.
- [Assign a Teams policy](/graph/api/teamsadministration-teamspolicyuserassignment-assign) to a user using the user ID, policy type, and policy ID.
- [Unassign a Teams policy](/graph/api/teamsadministration-teamspolicyuserassignment-unassign) from a user using the user ID and policy type.
- [Assign a Teams telephone number](/graph/api/teamsadministration-numberassignment-assignnumber) to a user account. 
- [Unassigns a Teams telephone number](/graph/api/teamsadministration-numberassignment-unassignnumber) from a user account.
- [Get the assignment details](/graph/api/teamsadministration-numberassignment-get) for a single telehone number.
- [Update an existing Teams telephone number](/graph/api/teamsadministration-numberassignment-updatenumber) with optional attributes.
- [Check the status of telephone number assign or unassign operation](/graph/api/teamsadministration-telephonenumberlongrunningoperation-get) for a user account.
- [Get a list of Teams telephone numbers](/graph/api/teamsadministration-telephonenumbermanagementroot-list-numberassignments) assigned to a user account.

## February 2026: New in preview only

### Applications

Use the **requiredResourceAccess** property on [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint?view=graph-rest-beta&preserve-view=true) to specify the Microsoft Graph permissions (delegated scopes and app roles) required by the agent.

### Backup storage

Users can now browse a `fastRestore` endpoint and selectively restore files and folders by creating a browse session.

The granular restore process is designed to be simple and efficient and consists of three main steps:

- **Create a browse session**  
  Initiate a browse session for a specific restore point (backup snapshot).  
  - You can create a [SharePoint browse session](/graph/api/backuprestoreroot-post-sharepointbrowsesessions?view=graph-rest-beta&preserve-view=true) or a [OneDrive for Business browse session](/graph/api/backuprestoreroot-post-onedriveforbusinessrestoresessions?view=graph-rest-beta&preserve-view=true).

- **Browse items**  
  Once the session is created, the user can query it to list all backed-up items available within the browse session.  
  - Results are returned as a collection of [browseQueryResponseItem](/graph/api/resources/browsequeryresponseitem?view=graph-rest-beta&preserve-view=true) objects, each representing a file, folder, or other resource.  
  - You can browse items within a [SharePoint browse session](/graph/api/sharepointbrowsesession-browse?view=graph-rest-beta&preserve-view=true) or a [OneDrive for Business browse session](/graph/api/onedriveforbusinessbrowsesession-browse?view=graph-rest-beta&preserve-view=true).

- **Create a restore session**  
  Select one or more items from the browse session and initiates a restore session.  
  - Only the selected items are restored to their previous state, leaving the rest of the site or drive unchanged.  
  - You can create a [SharePoint granular restore session](/graph/api/backuprestoreroot-post-sharepointrestoresessions?view=graph-rest-beta&preserve-view=true#example-2-create-a-granular-restore-session) or a [OneDrive for Business granular restore session](/graph/api/backuprestoreroot-post-onedriveforbusinessrestoresessions?view=graph-rest-beta&preserve-view=true#example-2-create-a-granular-restore-session).

### Device and app management | Cloud licensing

Use the new cloud licensing APIs to manage tenant, user, and group licensing data for Microsoft 365 services. These APIs provide programmatic access to allotments, assignments, assignment errors, subscription lifecycles, and waiting members. For more information, see [Use the cloud licensing API in Microsoft Graph (preview)](/graph/api/resources/cloud-licensing-api-overview?view=graph-rest-beta&preserve-view=true).

### Files

Added [driveItem: archive](/graph/api/driveitem-archive?view=graph-rest-beta&preserve-view=true) and [driveItem: unarchive](/graph/api/driveitem-unarchive?view=graph-rest-beta&preserve-view=true) to enable organizations to archive and unarchive [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) objects.

### Identity and access | Identity and sign-in

- Added the [agentIdentityType](/graph/api/resources/agentidentitytype?view=graph-rest-beta&preserve-view=true) enumeration to represent the type of Microsoft Entra agent identity for risk detection and management. Use the **identityType** property on the [riskyAgent](/graph/api/resources/riskyagent?view=graph-rest-beta&preserve-view=true) and [agentRiskDetection](/graph/api/resources/agentriskdetection?view=graph-rest-beta&preserve-view=true) resources to classify different types of agent identities.
- Added new authentication event resources to support Just-In-Time (JIT) user migration scenarios from legacy authentication systems:
  - Use the [onPasswordSubmitListener](/graph/api/resources/onpasswordsubmitlistener?view=graph-rest-beta&preserve-view=true) resource to configure authentication event listeners that trigger during password submission.
  - Use the [onPasswordSubmitCustomExtension](/graph/api/resources/onpasswordsubmitcustomextension?view=graph-rest-beta&preserve-view=true) resource to configure custom extensions that validate passwords against external legacy authentication systems.
  - Use the [onPasswordSubmitHandler](/graph/api/resources/onpasswordsubmithandler?view=graph-rest-beta&preserve-view=true) resource as the base type for handlers invoked during password submission events.
  - Use the [onPasswordMigrationCustomExtensionHandler](/graph/api/resources/onpasswordmigrationcustomextensionhandler?view=graph-rest-beta&preserve-view=true) resource to configure handlers that invoke custom extensions during JIT migration.

### Search

Added the **principal** and **principalCollection** data types to the [externalConnection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) resource to specify the data type for people‑related property items in the external connection.

### Security | Data security and compliance

- Deprecated the **accessedResources** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) in favor of the **accessedResources_v2** property.
- Use the **accessedResources_v2** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get detailed information about resources accessed during the conversation, including identifiers, access type, and status.
- Use the **agents** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get information about AI agents that participated in the preparation of the message.

### Security | Email and collaboration protection

Enhancements to the [detonationDetails](/graph/api/resources/security-detonationdetails?view=graph-rest-beta&preserve-view=true) resource that represents details from analysis of suspicious files and URLs in emails in Microsoft Defender for Office 365:

- Added the following properties to provide more detailed threat analysis:
  - **detonationBehaviourDetailsV2** - Shows events that took place during detonation in JSON format
  - **entityMetadata** - Additional metadata about the entity in JSON format
  - **mitreTechniques** - Attack techniques aligned with the MITRE ATT&CK framework
  - **staticAnalysis** - Results of static analysis performed on the file or URL
  - **submissionSource** - The source of the submission
- The **detonationBehaviourDetails** property is deprecated and will stop returning data in March 2026. Use the **detonationBehaviourDetailsV2** property instead.
- Added the `moveToQuarantine` member to the **remediationAction** enumeration. Use the `Prefer: include-unknown-enum-members` request header to access this evolvable enum member.

## January 2026: New and generally available

### Identity and access | Governance

Use the **administrationScopeTargets** relationship on the [workflowBase](/graph/api/resources/identitygovernance-workflowbase), [workflow](/graph/api/resources/identitygovernance-workflow), and [workflowVersion](/graph/api/resources/identitygovernance-workflowversion) resources to specify the [administrative units](/graph/api/resources/administrativeunit) in the scope of a lifecycle workflow.

### Identity and access | Identity and sign-in

- Starting January 26, 2026, users who manage their own [authentication methods](/graph/api/resources/authenticationmethods-overview) through self-service operations, such as adding, updating, or deleting phone numbers and email addresses, must complete multifactor authentication (MFA) if they last authenticated more than 10 minutes ago in the current session. For more guidance on handling this change in your application, see [Microsoft Entra authentication methods API overview](/graph/api/resources/authenticationmethods-overview).
- Added `qrCode` as a new supported value for the **usageAuthMethod** enumeration which is the type for the **authMethod** property on [credentialUsageSummary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta&preserve-view=true), [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta&preserve-view=true), [userEventsSummary](/graph/api/resources/usereventssummary?view=graph-rest-beta&preserve-view=true), and [userRegistrationActivitySummary](/graph/api/resources/userregistrationactivitysummary?view=graph-rest-beta&preserve-view=true) resources. This value represents the use of the [QR code](/graph/api/resources/qrcodepinauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method.
- You can now manage external authentication methods (EAM) in Microsoft Entra ID to let users choose an external provider to meet multifactor authentication (MFA) requirements when they sign in to Microsoft Entra ID. For more information, see:
   - [externalAuthenticationMethod resource type](/graph/api/resources/externalauthenticationmethod) for managing external MFA registered to a user for authentication using an external identity provider.
   - [externalAuthenticationMethodConfiguration resource type](/graph/api/resources/externalauthenticationmethodconfiguration) for managing the tenant-wide policy.
- Added the **createdDateTime** property to the [authenticationMethod](/graph/api/resources/authenticationMethod) resource, which is the base type for the following derived authentication method resources: [fido2AuthenticationMethod](/graph/api/resources/fido2AuthenticationMethod), [microsoftAuthenticatorAuthenticationMethod](/graph/api/resources/microsoftAuthenticatorAuthenticationMethod), [passwordAuthenticationMethod](/graph/api/resources/passwordAuthenticationMethod), [platformCredentialAuthenticationMethod](/graph/api/resources/platformCredentialAuthenticationMethod), [temporaryAccessPassAuthenticationMethod](/graph/api/resources/temporaryAccessPassAuthenticationMethod), and [windowsHelloForBusinessAuthenticationMethod](/graph/api/resources/windowsHelloForBusinessAuthenticationMethod).

### Reports | Microsoft 365 usage reports

Going forward, use the Microsoft 365 Copilot usage APIs under the `/copilot` URL path segment. For more information, see:
- [Copilot report root](/microsoft-365-copilot/extensibility/api/admin-settings/reports/resources/copilotreportroot)
- [Get Copilot user count summary](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusercountsummary)
- [Get Copilot user count trend](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusercounttrend)
- [Get Copilot usage user detail](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusageuserdetail)

### Security | Advanced hunting

Added migration guidance for Microsoft Defender for Endpoint (MDE) advanced hunting APIs to help organizations transition from the retired APIs that were available through the `https://api.securitycenter.microsoft.com` endpoint to the advanced hunting APIs available in Microsoft Graph. For more information, see [Migrate from the older APIs](/graph/api/resources/security-api-overview#migrate-from-older-apis).

### Security | Alerts and incidents

- Added the **priorityScore** property to the [incident](/graph/api/resources/security-incident) resource to provide a priority score for the incident from 0 to 100, with > 85 being the top priority, 15 - 85 medium priority, and < 15 low priority. This score is generated using machine learning and is based on multiple factors, including severity, disruption impact, threat intelligence, alert types, asset criticality, threat analytics, incident rarity, and additional priority signals.
- Made the following updates to APIs for managing Microsoft Defender for Identity (MDI) sensors:
  - Added the **domainName** property to the [sensorCandidate](/graph/api/resources/security-sensorcandidate) resource to specify the domain name of the sensor.
  - Added the **serviceStatus** property to the [sensor](/graph/api/resources/security-sensor) resource to indicate the service status. The possible values are: `stopped`, `starting`, `running`, `disabled`, `onboarding`, `unknown`, `unknownFutureValue`.

### Security | eDiscovery

Use the **reportFileMetadata** property on [ediscoveryPurgeDataOperation](/graph/api/resources/security-ediscoverypurgedataoperation) to get the purge job report file metadata.

### Teamwork and communications | Apps

The `TeamsAppInstallation.ManageSelectedForTeam.All` is the least privileged application permission required to install or upgrade a Teams app that requires consent to [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions when using the [teamsAppInstallation in a team: upgrade](/graph/api/team-teamsappinstallation-upgrade) API.

## January 2026: New in preview only

### Applications

The **allowedTenantIds** property on [allowedTenantsAudience](/graph/api/resources/allowedtenantsaudience?view=graph-rest-beta&preserve-view=true) must contain at least one value and can't include more than 20 values.

### Device and app management | Cloud PC

- Use the following resources to represent the data sent to Azure Logic Apps as part of a custom extension callout request when a custom extension in a catalog is used:
  - [accessPackageAssignmentCalloutData](/graph/api/resources/accesspackageassignmentcalloutdata) - for access package assignments
  - [accessPackageAssignmentRequestCalloutData](/graph/api/resources/accesspackageassignmentrequestcalloutdata) - for access package assignment requests
- Added the [controlConfiguration](/graph/api/resources/controlconfiguration) resource and the **controlConfigurations** relationship to the [entitlementManagement](/graph/api/resources/entitlementmanagement?view=graph-rest-beta&preserve-view=true) resource to represent the policies that control lifecycle and access to access packages across the organization.
- Added the [entraIdProtectionRiskyUserApproval](/graph/api/resources/entraidprotectionriskyuserapproval) resource to represent the approval configuration for risky users detected by Microsoft Entra ID Protection.
- Added the [insiderRiskyUserApproval](/graph/api/resources/insiderriskyuserapproval) resource to represent the approval configuration for risky users detected by Microsoft Purview Insider Risk Management.

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

- Added the `microsoftRevokedSessions` value to the [riskDetail](/graph/api/resources/riskdetail) enumeration to indicate that Microsoft revoked sessions. This enumeration member applies to the following Microsoft Entra Identity Protection resources: [riskDetection](/graph/api/resources/riskdetection?view=graph-rest-beta&preserve-view=true), [riskUserActivity](/graph/api/resources/riskuseractivity), [riskyUser](/graph/api/resources/riskyuser?view=graph-rest-beta&preserve-view=true), and [signIn](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true).
- Added `mexico` as a new supported value for the **cloudPcGeographicLocationType** enumeration type. This enum is the return type for the **geographicLocationType** property on [cloudPcDomainJoinConfiguration](/graph/api/resources/cloudpcdomainjoinconfiguration?view=graph-rest-beta&preserve-view=true) and [cloudPcSupportedRegion](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true).
- Added the `cloudPCInventoryReport` member to the **cloudPcReportName** enumeration type. This enum is the return type for the **reportName** property on [cloudPcExportJob](/graph/api/resources/cloudPcExportJob?view=graph-rest-beta&preserve-view=true),  [getFrontlineReport action](/graph/api/cloudpcreports-getfrontlinereport?view=graph-rest-beta&preserve-view=true), and [getCloudPcRecommendationReports action](/graph/api/cloudpcreports-getcloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true).
- Use the **category** property on [cloudPcSourceDeviceImage](/graph/api/resources/cloudpcsourcedeviceimage?view=graph-rest-beta&preserve-view=true) to get the category of the source image that is requested. For more information, see [Get cloudPcSourceDeviceImage objects with a specific category](/graph/api/cloudpcdeviceimage-getsourceimages?view=graph-rest-beta&preserve-view=true#example-2-get-cloudpcsourcedeviceimage-objects-with-a-specific-category).
- Added `refreshPolicyConfiguration` as a supported value for the **status** property on the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) and [cloudPcStatusSummary](/graph/api/resources/cloudpcstatussummary?view=graph-rest-beta&preserve-view=true) to indicate that the Cloud PC is in the process of refreshing the new policy configurations.
- Added `riskRemediation` as a new member to the [conditionalAccessGrantControl](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta&preserve-view=true#builtincontrols-property) enumeration. This value allows users to self-remediate their user risk through conditional access policies.
- Use the **groupSyncInbound** property on [crossTenantIdentitySyncPolicyPartner](/graph/api/resources/crosstenantidentitysyncpolicypartner?view=graph-rest-beta&preserve-view=true) to define whether groups can be synchronized from a partner tenant in cross-tenant access policy settings.

### Message trace

Use the [userConfiguration](/graph/api/resources/userconfiguration) resource and its associated methods to manage user-specific settings, metadata, or application data tied to mailbox folders, using XML, binary, or dictionary formats.

### Reports | Identity and access reports

- Removed the **conditionalAccessAudience** resource type. The return type of the **conditionalAccessAudiences** property of the [signIn resource type](/graph/api/resources/signin) is a collection of String objects and not the **conditionalAccessAudience** complex type.
Use the message trace API to track the flow of email messages through your Exchange Online organization. For more information, see [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace?view=graph-rest-beta&preserve-view=true).
- Added `qrCode` as a new supported value for the **usageAuthMethod** enumeration which is the type for the **authMethod** property on [credentialUsageSummary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta&preserve-view=true), [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta&preserve-view=true), [userEventsSummary](/graph/api/resources/usereventssummary?view=graph-rest-beta&preserve-view=true), and [userRegistrationActivitySummary](/graph/api/resources/userregistrationactivitysummary?view=graph-rest-beta&preserve-view=true) resources. This value represents the use of the [QR code](/graph/api/resources/qrcodepinauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method.

### Security | Alerts and incidents

Added the **priorityScore** property to the [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true) resource to provide a priority score for the incident from 0 to 100, with > 85 being the top priority, 15 - 85 medium priority, and < 15 low priority. This score is generated using machine learning and is based on multiple factors, including severity, disruption impact, threat intelligence, alert types, asset criticality, threat analytics, incident rarity, and additional priority signals.

### Security | Cloud zones

Added support for managing *zones* in Microsoft Defender for Cloud, enabling organizations to segment multi-cloud environments (Azure, AWS, GCP, and DevOps or registry sources) into logical groupings for access and security management at scale. The [zone](/graph/api/resources/security-zone?view=graph-rest-beta&preserve-view=true) resource type and its associated [environment](/graph/api/resources/security-environment?view=graph-rest-beta&preserve-view=true) resource let you consistently apply least-privilege access controls and manage collections of attached environments within Microsoft Graph.

### Security | Data security and compliance

- Deprecated the **accessedResources** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) in favor of the **accessedResources_v2** property.
- Use the **accessedResources_v2** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get detailed information about resources accessed during the conversation, including identifiers, access type, and status.
- Use the **agents** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get information about AI agents that participated in the preparation of the message.
- Added the **contentCategory** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) and [processFileMetadata](/graph/api/resources/processfilemetadata?view=graph-rest-beta&preserve-view=true) to indicate whether content is AI generated or not.

### Teamwork and communications | Apps

- Use the **layoutType** property on the [channel](/graph/api/resources/channel) resource to create channels with different conversation experiences and switch between them at any time. The property supports two values: `post` for traditional post-reply format and `chat` for a chat-like threading experience. You can set the layout type when [creating a channel](/graph/api/channel-post) and [update it](/graph/api/channel-patch) later to switch between layouts.
- The `TeamsAppInstallation.ManageSelectedForTeam.All` is the least privileged application permission required to install or upgrade a Teams app that requires consent to [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions when using the [teamsAppInstallation in a team: upgrade](/graph/api/team-teamsappinstallation-upgrade?view=graph-rest-beta&preserve-view=true) API.

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
