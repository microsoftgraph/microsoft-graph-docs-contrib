---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 05/08/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## May 2026: New and generally available

### Agents

- Added the [agentUser](/graph/api/resources/agentuser) resource type and related methods for managing the lifecycle of agent user identities.
- Added [verifiedIdProfile](/graph/api/resources/verifiedidprofile) resources and related profile configuration for configuring Microsoft Entra Verified ID.

### Identity and access | Directory management

Use the [deviceRegistrationPolicy](/graph/api/resources/deviceregistrationpolicy) resource type and its related methods to manage the policy that controls device registration quota restrictions, additional authentication, and authorization policies for your Microsoft Entra tenant.

### Identity and access | Identity and sign-in

- Added the [onVerifiedIdClaimValidationCustomExtension](/graph/api/resources/onverifiedidclaimvalidationcustomextension) and [onVerifiedIdClaimValidationListener](/graph/api/resources/onverifiedidclaimvalidationlistener) resource types and associated methods to support custom logic for claim validation from Verified ID credential presentations during authentication flows through Microsoft Entra custom authentication extensions in External ID.
- Added claim validation and match-confidence capabilities to [Verified ID profiles](/graph/api/resources/verifiedidprofile), enabling stronger claim verification and more flexible matching.
- Enhanced the [x509CertificateAuthenticationMethodConfiguration](/graph/api/resources/x509certificateauthenticationmethodconfiguration) resource type with the following capabilities for certificate-based authentication (CBA):
    - Scoping CBA to specific certificate authorities and restrict which groups of users can authenticate using certificates from those CAs.
    - Controlling whether issuer hints are sent to the client to filter the certificates shown in the certificate picker.

### Mailbox import and export

Use the mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios. For more information, see [Overview of the mailbox import and export APIs in Microsoft Graph](/graph/mailbox-import-export-concept-overview).

### Teamwork and communications | Shifts

- Supports additional theme colors in the [scheduleEntityTheme](/graph/api/resources/enums) enumeration for the **theme** property on [openShiftItem](/graph/api/resources/openshiftitem), [shiftItem](/graph/api/resources/shiftitem), [shiftActivity](/graph/api/resources/shiftactivity), and [timeOffItem](/graph/api/resources/timeoffitem).

## May 2026: New in preview only

### Identity and access | Identity and sign-in

- Added the [onVerifiedIdClaimValidationCustomExtension](/graph/api/resources/onverifiedidclaimvalidationcustomextension?view=graph-rest-beta&preserve-view=true) and [onVerifiedIdClaimValidationListener](/graph/api/resources/onverifiedidclaimvalidationlistener?view=graph-rest-beta&preserve-view=true) resource types and associated methods to support custom logic for claim validation from Verified ID credential presentations during authentication flows through Microsoft Entra custom authentication extensions in External ID.
- Added support for Microsoft 365 cross-tenant access policy capabilities that allow administrators to control access to Microsoft 365 resources and data when collaborating with external organizations. Use the [crossTenantAccessPolicyConfigurationDefault](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault?view=graph-rest-beta&preserve-view=true) and [crossTenantAccessPolicyConfigurationPartner](/graph/api/resources/crosstenantaccesspolicyconfigurationpartner?view=graph-rest-beta&preserve-view=true) resources with the new **m365Capabilities** relationship to manage capabilities including profile sharing, calendar sharing, migration, mail tips, and Places booking across organizational boundaries.

### People and workplace intelligence | People admin settings

Use the **isVisible** property on [profileCardProperty](/graph/api/resources/profilecardproperty?view=graph-rest-beta&preserve-view=true) to indicate whether the given directory property should be shown on a user's profile card.

### Teamwork and communications | Apps

Use the **scopeInfo** property on [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-beta&preserve-view=true) to get the details of the scope in which the app is installed.

## April 2026: New and generally available

### Applications

- Added the [approvedClientApp](/graph/api/resources/approvedclientapp) resource type for managing approved client applications for [remote desktop access](/graph/api/resources/remotedesktopsecurityconfiguration).
- Added the **managerApplications** property to the [application](/graph/api/resources/application) and [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint) resources to enable Microsoft first-party applications to be designated as managers of agent blueprints.

### Backup storage

- When a [protection policy is deactivated](/graph/api/protectionpolicybase-deactivate), backup activity stops immediately, no new backups are taken, and the protected resources are no longer covered by the policy. Any backups taken before deactivation are retained according to the retention policy, after which they're offboarded. You can restore data using previous restore points even after deactivation.
- A [protection policy can be deleted](/graph/api/protectionpolicybase-delete) only after it was [deactivated](/graph/api/protectionpolicybase-deactivate). When you delete a policy, all associated protection units are removed, and backup protection stops for the resources previously covered by the policy. Existing backup data is retained according to the retention policy before it's offboarded. You can restore data using previous restore points even after deletion.
- Use browse sessions to browse backed up OneDriveForBusiness and SharePoint data at a specific point in time. Create a [oneDriveForBusinessBrowseSession](/graph/api/resources/onedriveforbusinessbrowsesession) or [sharePointBrowseSession](/graph/api/resources/sharepointbrowsesession), and then call the [browse](/graph/api/onedriveforbusinessbrowsesession-browse) method to explore the backed up content.
- Use granular restore artifacts for fine-grained restores of individual items. List [granularDriveRestoreArtifact](/graph/api/resources/granulardriverestoreartifact) objects from a [oneDriveForBusinessRestoreSession](/graph/api/onedriveforbusinessrestoresession-list-granulardriverestoreartifacts), or list [granularSiteRestoreArtifact](/graph/api/resources/granularsiterestoreartifact) objects from a [sharePointRestoreSession](/graph/api/sharepointrestoresession-list-granularsiterestoreartifacts).

### Files

- Use the **height** and **width** parameters to [download a file in another format](/graph/api/driveitem-get-content-format) when `format=jpg`.
- Use the [List activities](/graph/api/itemactivity-list) API to retrieve recent activities that took place on a [drive](/graph/api/resources/drive), [list](/graph/api/resources/list), item, or within an item hierarchy.
- Added support for [sharePointGroup](/graph/api/resources/sharepointgroup) and its [members](/graph/api/resources/sharepointgroupmember) in a SharePoint Embedded container, enabling apps to work with SharePoint permission groups and manage their members.


### Identity and access | Governance

Use `approverRemove` as a new supported value for the **requestType** property of the [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest) resource. For more information, see [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest).

### Identity and access | Identity and sign-in

- Use `riskRemediation` as part of [conditional access grant controls](/graph/api/resources/conditionalaccessgrantcontrols) to enforce a User Risk [conditional access policy](/graph/api/resources/conditionalaccesspolicy). When you select "Require risk remediation" in your policy's grant controls, Microsoft Entra ID Protection manages the appropriate remediation flow based on the threat observed and the user's authentication method. In passwordless Risky User sessions, it updates risk details with `microsoftRevokedSessions`.

### Security | Alerts and incidents

- Added the **categories** property to the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource.
- Deprecated the **category** property on the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource. Use the **categories** property instead.

### Teamwork and communications | Apps

Manage Teams apps at the channel level within a team using the following APIs:
- [List apps](/graph/api/channel-list-enabledapps) in a channel.
- [Get an app](/graph/api/teamsapp-get) in a channel.
- [Enable a new Teams app](/graph/api/channel-post-enabledapps) in a channel.
- [Disable an app](/graph/api/channel-delete-enabledapps) in a channel.

### Teamwork and communications | Messaging

- Removed the `model` parameters and payment-model guidance from Microsoft Teams export APIs and related change-notification documentation. The `model` query parameter is no longer required and is ignored if supplied. For more information, see [Payment models and licensing requirements for Microsoft Teams APIs](/graph/teams-licenses).
- The following Microsoft Teams APIs support **@odata.nextLink** pagination to handle increased channel limits. When the result set spans multiple pages, the response includes the **@odata.nextLink** property with a URL for retrieving the next page of results:
  - [List channels](/graph/api/channel-list)
  - [List incomingChannels](/graph/api/team-list-incomingchannels)
  - [List allChannels](/graph/api/team-list-allchannels)


## April 2026: New in preview only

### Agents

Added deprecation notices to the [agentRegistry](/graph/api/resources/agentregistry?view=graph-rest-beta&preserve-view=true), [agentCardManifest](/graph/api/resources/agentcardmanifest?view=graph-rest-beta&preserve-view=true), [agentCollection](/graph/api/resources/agentcollection?view=graph-rest-beta&preserve-view=true), and [agentInstance](/graph/api/resources/agentinstance?view=graph-rest-beta&preserve-view=true) resources and their related operations. These Agent Registry APIs will be replaced by Agent 365-based APIs starting May 1, 2026.

### Applications

Added the **deprecationDate** property to the [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true) resource to indicate when an application will be removed from the Microsoft Entra application gallery.

### Backup storage

- When a [protection policy is deactivated](/graph/api/protectionpolicybase-deactivate?view=graph-rest-beta&preserve-view=true), backup activity stops immediately, no new backups are taken, and the protected resources are no longer covered by the policy. Any backups taken before deactivation are retained according to the retention policy, after which they're offboarded. You can restore data using previous restore points even after deactivation.
- A [protection policy can be deleted](/graph/api/protectionpolicybase-delete?view=graph-rest-beta&preserve-view=true) only after it was [deactivated](/graph/api/protectionpolicybase-deactivate?view=graph-rest-beta&preserve-view=true). When you delete a policy, all associated protection units are removed, and backup protection stops for the resources previously covered by the policy. Existing backup data is retained according to the retention policy before it's offboarded. You can restore data using previous restore points even after deletion.
- Use the **billingPolicyId** property on [protectionUnitBase](/graph/api/resources/protectionunitbase?view=graph-rest-beta&preserve-view=true), [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) to get or set the unique identifier of the billing policy assigned to the protection unit for cost allocation.
- [Update](/graph/api/driveprotectionunit-update?view=graph-rest-beta&preserve-view=true) the **billingPolicyId** property on a [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true) object.
- [Update](/graph/api/mailboxprotectionunit-update?view=graph-rest-beta&preserve-view=true) the **billingPolicyId** property on a [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true) object.
- [Update](/graph/api/siteprotectionunit-update?view=graph-rest-beta&preserve-view=true) the **billingPolicyId** property on a [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) object.

### Device and app management | Cloud PC

- The `/me/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo` and `/users/{userId}/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo` endpoints are deprecated and will stop returning data on October 30, 2026. Going forward, use the [retrieveCloudPcLaunchDetail](/graph/api/cloudpc-retrievecloudpclaunchdetail?view=graph-rest-beta&preserve-view=true) API.
- Added the [cloudPcOnPremisesConnectionSubnetIpDetail](/graph/api/resources/cloudpconpremisesconnectionsubnetipdetail?view=graph-rest-beta&preserve-view=true) resource type to represent the subnet IP details of a Cloud PC on-premises connection.
- Use the **subnetPrivateIpDetail** property on [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true) to get detailed information about the subnet's private IP addresses associated with the subnet.

### Files

- Use the **height** and **width** query parameters on the [driveItem content conversion API](/graph/api/driveitem-get-content-format?view=graph-rest-beta&preserve-view=true) to download a file in another format when `format=jpg`.
- Use the **itemCount** property on the [list](/graph/api/resources/list?view=graph-rest-beta&preserve-view=true) resource to quickly access the total number of items in a SharePoint list without retrieving all items or making additional queries.

### Identity and access | Directory management

Added the **inheritedAppRoleAssignments** and **inheritedOauth2PermissionGrants** relationships to the [agentIdentity](/graph/api/resources/agentidentity?view=graph-rest-beta&preserve-view=true) resource to retrieve inherited permissions from the parent Agent Identity Blueprint Service Principal.

### Identity and access | Governance

- Use `default`, `notVisible`, and `visible` as supported values for the **approverInformationVisibility** property of the [accessPackageApprovalStage](/graph/api/resources/accesspackageapprovalstage?view=graph-rest-beta&preserve-view=true) and [approvalStage](/graph/api/resources/approvalstage?view=graph-rest-beta&preserve-view=true) resources to indicate whether approver information is visible to the requestor.
- Added the [cancelProcessing](/graph/api/identitygovernance-workflow-cancelprocessing?view=graph-rest-beta&preserve-view=true) method to the [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true) resource to cancel workflow runs that are currently in progress or queued.
- Added the **referenceId** property and the **files** relationship to [customDataProvidedResourceUploadSession](/graph/api/resources/customdataprovidedresourceuploadsession?view=graph-rest-beta&preserve-view=true) resource to identify the context for which data is being uploaded, such as an access review instance ID, and identify files uploaded during an upload session, respectively. Also added enhanced support for query capabilities for the [List customDataProvidedResourceUploadSession objects](/graph/api/accesspackageresource-list-uploadsessions?view=graph-rest-beta&preserve-view=true) API operation.

### Identity and access | Identity and sign-in

Added the **blueprintId** and **source** agent-descriptive properties to [agentRiskDetection](/graph/api/resources/agentriskdetection?view=graph-rest-beta&preserve-view=true) and [riskyAgent](/graph/api/resources/riskyagent?view=graph-rest-beta&preserve-view=true) resources.

### Mail

Introduced the new notes API that enables users to create and manage simple notes in their *Notes* folder. Notes support text content with optional inline image attachments, and are suitable for quick capture scenarios. Use the [note](/graph/api/resources/note?view=graph-rest-beta&preserve-view=true) resource and the following APIs:
- [List notes](/graph/api/user-list-notes?view=graph-rest-beta&preserve-view=true) in the user's *Notes* folder.
- [Create a note](/graph/api/user-post-notes?view=graph-rest-beta&preserve-view=true) in the user's *Notes* folder.
- [Get a note](/graph/api/note-get?view=graph-rest-beta&preserve-view=true).
- [Update a note](/graph/api/note-update?view=graph-rest-beta&preserve-view=true).
- [Delete a note](/graph/api/note-delete?view=graph-rest-beta&preserve-view=true).
- [Get delta](/graph/api/note-delta?view=graph-rest-beta&preserve-view=true) to track changes to notes.
- [List attachments](/graph/api/note-list-attachments?view=graph-rest-beta&preserve-view=true) for a note.
- [Create an attachment](/graph/api/note-post-attachments?view=graph-rest-beta&preserve-view=true) on a note.
- [Delete an attachment](/graph/api/attachment-delete?view=graph-rest-beta&preserve-view=true) from a note.

### Mailbox import and export

Learn how to handle HTTP redirects when accessing folders and items in archive mailboxes with autoexpanded folders using the mailbox import and export APIs. For more information, see [Handle archive mailbox redirects](/graph/handle-archive-mailbox-redirects).

### People and workplace intelligence | Profile

Use the **activities**, **awards**, and **fieldsOfStudy** properties on [educationalActivityDetail](/graph/api/resources/educationalactivitydetail?view=graph-rest-beta&preserve-view=true) to get or set collections of activities, awards, or fields of study.

### Reports | Identity and access reports

Added the [azureADPremiumLicenseInsight](/graph/api/resources/azureadpremiumlicenseinsight?view=graph-rest-beta&preserve-view=true) resource and its associated APIs for getting insights into the Microsoft Entra ID P1 and P2 premium license utilization for the tenant, including feature utilization breakdowns for P1, P2, Internet Access, and Private Access features.

### Security | Alerts and incidents

- Added the **categories** property to the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource.
- Deprecated the **category** property on the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource. Use the **categories** property instead.

### Security | Compliance

Updated the capabilities of the [auditLogQuery](/graph/api/resources/security-auditlogquery?view=graph-rest-beta&preserve-view=true) resource type and its associated methods as follows:
- Updated the [auditLogRecordType](/graph/api/resources/security-auditlogrecordtype?view=graph-rest-beta&preserve-view=true) enumeration to represent over 400 types of audit log operations across Microsoft cloud services.
- Added 135 new derived types of the [auditData](/graph/api/resources/security-auditdata?view=graph-rest-beta&preserve-view=true) resource to represent audit log data for specific services and features, including AI and Copilot interactions, agent management, compliance and data lifecycle management (Microsoft Purview, eDiscovery, DLP), cloud services (Azure Firewall, Microsoft Defender, Sentinel), and collaboration services (Teams, Planner, SharePoint, Viva). For a complete list of audit data types, see [auditData derived types](/graph/api/resources/security-auditdata-derived-types?view=graph-rest-beta&preserve-view=true).

### Security | Microsoft Defender for Identity

Use the **sensorTypes** property on [sensorCandidate](/graph/api/resources/security-sensorcandidate?view=graph-rest-beta&preserve-view=true) to get the list of device types for the sensor.

### Teamwork and communications | Messaging

- Use the targeted messages APIs to manage messages in Microsoft Teams that are visible only to specified recipients within group chats or channels:
  - Use the [targetedChatMessage](/graph/api/resources/targetedchatmessage?view=graph-rest-beta&preserve-view=true) resource type to represent a targeted message in a chat or channel.
  - [Get all targeted messages](/graph/api/userteamwork-getalltargetedmessages?view=graph-rest-beta&preserve-view=true) sent to a user in group chats and channels for compliance and archiving purposes.
  - [Get all retained targeted messages](/graph/api/userteamwork-getallretainedtargetedmessages?view=graph-rest-beta&preserve-view=true) for a user, including messages deleted by the sender but preserved due to organizational retention policies.
  - [Delete a targeted message from a channel](/graph/api/userteamwork-deletetargetedmessage?view=graph-rest-beta&preserve-view=true) by providing the team ID, channel ID, and message ID.
  - [Delete a targeted message from a chat](/graph/api/chat-delete-targetedmessages?view=graph-rest-beta&preserve-view=true) by providing the chat ID and message ID.
- Organize chats, channels, and meetings into custom sections in a user's Microsoft Teams chat list using the new [teamworkSection](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) and [teamworkSectionItem](/graph/api/resources/teamworksectionitem?view=graph-rest-beta&preserve-view=true) resources. Use the section management APIs to [list](/graph/api/userteamwork-list-sections?view=graph-rest-beta&preserve-view=true), [create](/graph/api/userteamwork-post-sections?view=graph-rest-beta&preserve-view=true), [get](/graph/api/teamworksection-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/teamworksection-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/teamworksection-delete?view=graph-rest-beta&preserve-view=true) sections, and [add](/graph/api/teamworksection-post-items?view=graph-rest-beta&preserve-view=true), [remove](/graph/api/teamworksectionitem-delete?view=graph-rest-beta&preserve-view=true), and [move](/graph/api/teamworksectionitem-move?view=graph-rest-beta&preserve-view=true) items within sections.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
