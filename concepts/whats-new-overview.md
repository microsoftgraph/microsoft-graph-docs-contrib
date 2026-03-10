---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 03/04/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## March 2026: New and generally available

### Applications

Using the **signInAudience** property to limit where an [application](/graph/api/resources/application) can be used **isn't** a replacement for proper tenant validation and authorization enforcement in your application code. If your application expects access only in specific tenants, you *must* enforce that validation in your application code. To learn more, see [Secure applications and APIs by validating claims](/entra/identity-platform/claims-validation).

### Files

Use the following new container columns APIs added to further support structured file storage in SharePoint Embedded applications:
  - [Get column](/graph/api/filestoragecontainer-get-column)
  - [Update column](/graph/api/filestoragecontainer-update-column)
  - [Delete column](/graph/api/filestoragecontainer-delete-column)

### Identity and access | Governance

- Added the `allDirectoryAgentIdentities` member to the [allowedTargetScope](/graph/api/resources/enums#allowedtargetscope-values) enumeration to allow access packages to target all directory agent identities.
- Added the [targetAgentIdentitySponsorsOrOwners](/graph/api/resources/targetagentidentitysponsorsorowners) resource type that defines the sponsors or owners of a specific agent identity.

## March 2026: New in preview only

### Applications

Using the **signInAudience** and **signInAudienceRestrictions** properties to limit where an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) can be used **isn't** a replacement for proper tenant validation and authorization enforcement in your application code. If your application expects access only in specific tenants, you *must* enforce that validation in your application code. To learn more, see [Secure applications and APIs by validating claims](/entra/identity-platform/claims-validation).

### Backup storage

Added the `includeNewerItems` member as supported value for the **tags** property on [restorePoint](/graph/api/resources/restorepoint?view=graph-rest-beta&preserve-view=true) to get a restore point within a specified time period that includes any newer items created during that period.

### Identity and access | Governance

Added the [targetAgentIdentitySponsorsOrOwners](/graph/api/resources/targetagentidentitysponsorsorowners?view=graph-rest-beta&preserve-view=true) resource type that defines the sponsors or owners of a specific agent identity.

### Identity and access | Network access

- Added the **homeTenantId**, **crossTenantAccessType**, and **deviceJoinType** properties to the [connection](/graph/api/resources/networkaccess-connection?view=graph-rest-beta&preserve-view=true) resource to support Bring Your Own Device (BYOD) and Business-to-Business (B2B) collaboration scenarios in Global Secure Access traffic connection logs.
- Added the [crossTenantAccessType](/graph/api/resources/networkaccess-crosstenantaccesstype?view=graph-rest-beta&preserve-view=true) enumeration type.
- Added the [deviceJoinType](/graph/api/resources/networkaccess-devicejointype?view=graph-rest-beta&preserve-view=true) enumeration type.

## February 2026: New and generally available

### External data connections

Added 19 people domain semantic labels to the [label](/graph/api/resources/externalconnectors-enums#label-values) enumeration for Microsoft 365 Copilot connectors. These labels enable developers to map people profile data from external systems to standardized Microsoft Graph properties. Use these labels in [schema](/graph/api/resources/externalconnectors-schema) definitions to improve discoverability and integration of people data in Microsoft 365 Copilot experiences. The new labels include: `personEmails`, `personAddresses`, `personAnniversaries`, `personName`, `personNote`, `personPhones`, `personCurrentPosition`, `personWebAccounts`, `personWebSite`, `personSkills`, `personProjects`, `personAccount`, `personAwards`, `personCertifications`, `personAssistants`, `personColleagues`, `personManager`, `personAlternateContacts`, and `personEmergencyContacts`.
### Files

Updated the admin consent requirement for the following delegated permissions related to SharePoint Embedded file storage container management:
- The `FileStorageContainerType.Manage.All` delegated permission no longer requires admin consent.
- The `FileStorageContainerTypeReg.Manage.All` delegated permission no longer requires admin consent.

### Groups

- Added the **resourceBehaviorOptions** and **resourceProvisioningOptions** properties to the [group](/graph/api/resources/group) resource. These properties enable you to specify group behaviors and associated resources for a Microsoft 365 group.
- Added a known issue: For soft deleted security groups, the **securityEnabled** property returns `false` instead of `true`. To identify the group type, use the **groupTypes** property where `["Unified"]` indicates a Microsoft 365 group and an empty array (`[]`) indicates a security group. For more information, see [Get deleted item](/graph/api/directory-deleteditems-get) and [List deleted items](/graph/api/directory-deleteditems-list).

### Device and app management | Cloud PC

- Added [configureAgent](/graph/api/cloudpcexternalpartner-configureagent?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [deployAgent](/graph/api/cloudpcexternalpartner-deployagent?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).

- Added [retrieveDeployAgentActionResults](/graph/api/cloudpcexternalpartner-retrievedeployagentactionresults?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).

- Added [retrieveActionReports](/graph/api/cloudpcexternalpartner-retrieveactionreports?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).

- Added [cloudPcExternalPartnerAgentSetting](/graph/api/resources/cloudpcexternalpartneragentsetting?view=graph-rest-beta&preserve-view=true) as a new complex type for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).

- Added [cloudPcExternalPartnerActionResult](/graph/api/resources/cloudpcexternalpartneractionresult?view=graph-rest-beta&preserve-view=true) as a new complex type for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).

- Added [cloudPcExternalPartnerActionReport](/graph/api/resources/cloudpcexternalpartneractionreport?view=graph-rest-beta&preserve-view=true) as a new complex type for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

- QR code authentication method in Microsoft Entra ID lets you manage the QR code authentication method for users, and how they can sign in with a QR code and PIN. The following key resources support this capability:
   - The [qrCodePinAuthenticationMethod](/graph/api/resources/qrcodepinauthenticationmethod) resource and related APIs for managing QR code PIN authentication methods for users. This single-factor authentication method is designed for frontline workers and combines a QR code with a PIN. The following related resources were also added: [qrCode](/graph/api/resources/qrcode), [qrPin](/graph/api/resources/qrpin), and [qrCodeImageDetails](/graph/api/resources/qrcodeimagedetails).
   - The [qrCodePinAuthenticationMethodConfiguration](/graph/api/resources/qrcodepinauthenticationmethodconfiguration) resource for managing the QR code authentication method policy for a tenant.
   - Updated the [authenticationMethodModes](/graph/api/resources/authenticationmethodmodes) and [baseAuthenticationMethod](/graph/api/resources/baseauthenticationmethod) enumerations to add the `qrCodePin` member to support this new authentication method.

### Mail | Message trace

Use the message trace API to track the flow of email messages through your Exchange Online organization. For more information, see [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace).

### Search

- Added the **principal** and **principalCollection** data types to the [externalConnection](/graph/api/resources/externalconnectors-principal) to specify the data type for people‑related property items in the external connection.
- Added the **description** property to the [externalConnection properties](/graph/api/resources/externalconnectors-property) to allow the addition of a description to the schema properties in the external connection.
- Added more tags or semantic labels that can be added to **labels** in the [externalConnection property](/graph/api/resources/externalconnectors-property) in the external connection schema. Labels help Microsoft 365 Copilot understand the semantics of the data in the connection and provide more relevant results. 
- Added the **contentCategory** property to the [externalConnection](/graph/api/resources/externalconnectors-externalconnection) to specify the domain category of the content associated with the external connection for improved relevance and ranking.

### Security | Data security and compliance

- Added the `labelNotFoundException` member to the [usageRights](/graph/api/resources/usagerights) enumeration type. This member represents a label with no protection settings, so there are no usage rights to evaluate in Microsoft Purview.
- Added the `restrictWebGrounding` member to the [dlpAction](/graph/api/resources/enums-security#dlpaction-values) enumeration to support restricting web grounding actions in data loss prevention policies in Microsoft Purview.

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

Added support for protection policy offboarding status and timestamp tracking in backup storage:

- Added the **offboardRequestedDateTime** property to the [protectionPolicyBase](/graph/api/resources/protectionpolicybase?view=graph-rest-beta&preserve-view=true) resource.
- Added the `offboardRequested` and `offboarded` values to the [protectionPolicyStatus](/graph/api/resources/protectionpolicybase?view=graph-rest-beta&preserve-view=true#protectionpolicystatus-values) enumeration.

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

### Tasks and plans

Use the extended properties API to store or get custom data in the [todoTaskList](/graph/api/resources/todotasklist?view=graph-rest-beta&preserve-view=true#methods) resource.

### Security | Data security and compliance

- Added the `labelNotFoundException` member to the [usageRights](/graph/api/resources/usagerights?view=graph-rest-beta&preserve-view=true) enumeration type. This member represents a label with no protection settings, so there are no usage rights to evaluate in Microsoft Purview.
- Deprecated the **accessedResources** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) in favor of the **accessedResources_v2** property.
- Use the **accessedResources_v2** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get detailed information about resources accessed during the conversation, including identifiers, access type, and status.
- Use the **agents** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get information about AI agents that participated in the preparation of the message.

### Security | Email and collaboration protection

Enhancements to the [detonationDetails](/graph/api/resources/security-detonationdetails?view=graph-rest-beta&preserve-view=true) resource that represents details from analysis of suspicious files and URLs in emails in Microsoft Defender for Office 365:

- Added the following properties to provide more detailed threat analysis:
  - **detonationBehaviourDetailsV2** - Shows events that took place during detonation in JSON format
  - **entityMetadata** - More metadata about the entity in JSON format
  - **mitreTechniques** - Attack techniques aligned with the MITRE ATT&CK framework
  - **staticAnalysis** - Results of static analysis performed on the file or URL
  - **submissionSource** - The source of the submission
- The **detonationBehaviourDetails** property is deprecated and will stop returning data in March 2026. Use the **detonationBehaviourDetailsV2** property instead.
- Added the `moveToQuarantine` member to the **remediationAction** enumeration. Use the `Prefer: include-unknown-enum-members` request header to access this evolvable enum member.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
