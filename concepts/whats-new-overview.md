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

## April 2024: New and generally available

### Applications

- Updated the default value for **signInAudience** for new [applications](/graph/api/resources/application) from `AzureADandPersonalMicrosoftAccount` to `AzureADMyOrg`. Going forward, if you don't explicitly assign a value to the property during [app creation](/graph/api/application-post-applications), the app is automatically assigned the value `AzureADMyOrg`.
- Added the support for adding password secrets to applications during [app creation](/graph/api/application-post-applications). Previously, you could only add secrets to existing apps through the [Update application](/graph/api/application-update) or the [addPassword](/graph/api/application-addpassword) operations.
- Use the upsert capability to create an [application](/graph/api/resources/application), [federatedIdentityCredential](/graph/api/resources/federatedidentitycredential), or [servicePrincipal](/graph/api/resources/serviceprincipal) if it doesn't exist, or update an existing object, by using a client-provided key. For more information, see the following API operations:

    - [Upsert application](/graph/api/application-upsert)
    - [Upsert federatedIdentityCredential](/graph/api/federatedidentitycredential-upsert)
    - [Upsert servicePrincipal](/graph/api/serviceprincipal-upsert)

### Groups

Added the [upsert](/graph/api/group-upsert) capability to the [group resource type](/graph/api/resources/group). Use this capability to create a group if it doesn't exist, or update an existing group, by using the **uniqueName** client-provided key.

### Sites and lists

You can now:
- [Track changes for SharePoint site](/graph/api/site-delta) resources.
- [Track changes for SharePoint list item](/graph/api/listitem-delta) resources.

Work with [site pages](/graph/api/resources/sitepage) and [horizonal](/graph/api/resources/horizontalsection) and [vertical](/graph/api/resources/verticalsection) sections of pages.  

### Identity and access | Identity and sign-in

Configure the [default identity provider](/graph/api/resources/defaultinvitationredemptionidentityproviderconfiguration) to use in redemption flow settings for Microsoft Entra ID B2B collaboration.

### Users
Associate users or groups as sponsors for a guest user's privileges in the tenant and keep the guest user's information and access updated. You can [assign a sponsor](/graph/api/user-post-sponsors), [list sponsors](/graph/api/user-list-sponsors), and [remove a sponsor](/graph/api/user-delete-sponsors).

## April 2024: New in preview only

### Device and app management | Cloud PC

Deprecated the **type** property on [cloudPcAuditResource](/graph/api/resources/cloudpcauditresource?view=graph-rest-beta&preserve-view=true) in favor of the **resourceType** property.

### Identity and access | Network access

Updated the definition of physical locations for customer premises equipment in the Global Secure Access services from the [branchSite resource type](/graph/api/resources/networkaccess-branchsite?view=graph-rest-beta&preserve-view=true) to the [remoteNetwork resource type](/graph/api/resources/networkaccess-remotenetwork?view=graph-rest-beta&preserve-view=true). The **branchSite** resource type and its associated properties, relationships, and endpoints are deprecated will be retired soon. Use the **remoteNetwork** resource type and its associated properties, relationships, and endpoints.

### Industry data ETL

The [outbound provisioning flow set](/graph/api/resources/industrydata-outboundprovisioningflowset?view=graph-rest-beta&preserve-view=true), which represents a collection of [outbound provisioning flows](/graph/api/resources/industrydata-provisioningflow?view=graph-rest-beta&preserve-view=true) used to configure how school data sync populates data in Microsoft 365 and Microsoft Entra ID, is now generally available.

An outbound provisioning flow set can contain no more than one of each provisioning flow configuration: [userProvisioningFlow](/graph/api/resources/industrydata-userprovisioningflow?view=graph-rest-beta&preserve-view=true), [classGroupProvisioingFlow](/graph/api/resources/industrydata-classgroupprovisioningflow?view=graph-rest-beta&preserve-view=true), [securityGroupProvisioingFlow](/graph/api/resources/industrydata-securitygroupprovisioningflow?view=graph-rest-beta&preserve-view=true), [administrativeUnitProvisioingFlow](/graph/api/resources/industrydata-administrativeunitprovisioningflow?view=graph-rest-beta&preserve-view=true).

When calling the [industry data ETL API](/graph/api/resources/industrydata-overview?view=graph-rest-beta&preserve-view=true), take advantage of more granular permissions added for reading or writing outbound provisioning flow set data by using the new permissions `IndustryData-OutboundFlow.Read.All` and `IndustryData-OutboundFlow.ReadWrite.All`.

### People and workplace intelligence | People 

Deprecated the `/organization/{organizationId}/settings/itemInsights` endpoint in favor of the new [peopleAdminSettings](/graph/api/resources/peopleadminsettings?view=graph-rest-beta&preserve-view=true) resource and introduced the [List](/graph/api/peopleadminsettings-list-iteminsights?view=graph-rest-beta&preserve-view=true) method on the **peopleAdminSettings** resource.

### Teamwork and communications | Messaging

[Send chatMessage in a channel or a chat](/graph/api/chatmessage-post?view=graph-rest-beta&preserve-view=true) with a file attachment in it using file share link. 

## March 2024: New and generally available

### Applications

[Perform a bulk upload as a synchronization job](/graph/api/synchronization-synchronizationjob-post-bulkupload) to ingest data into the Microsoft Entra ID synchronization service.

### Cross-device experiences

Added the ability to list and get [Windows settings](/graph/api/resources/windowssetting) and [Windows settings instances](/graph/api/resources/windowssettinginstance).

### Device and app management | Cloud PC

- List, get, end grace period, reboot, rename, restore, and troubleshoot operations are now available on [cloudPC](/graph/api/resources/cloudpc).
- List and get operations are now available on [cloudPcAuditEvent](/graph/api/resources/cloudpcauditevent).
- List, get, create, update, delete, and assign provisioning policies operations are now available on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy).
- List, get, create, update, delete, and assign user settings operations are now available on [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting).
- List, get, create, delete, and get source images operations are now available on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage).
- List and get operations are now available on [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage).

### Education | Assignment

Enabled the `$expand` query parameter for the [Get educationAssignment](/graph/api/educationassignment-get) method.

### Identity and access | Directory management

- The organization entity now returns the `CIAM` **tenantType** to identify tenants that are set up as Microsoft Entra ID for customers tenants, a customer identity & access management (CIAM) solution.
- New properties set by Intune on the [device](/graph/api/resources/device) resource: **enrollmentType**, **isRooted**, and **managementType**. 

### Reports | Partner billing reports

Use the [billedReconciliation: export](/graph/api/partners-billing-billedreconciliation-export) API to access billed invoice reconciliation data.

## March 2024: New in preview only

### Security | Attack simulation and training

Use the [training campaign](/graph/api/resources/trainingcampaign?view=graph-rest-beta&preserve-view=true) API to directly assign security trainings to users.

### Applications

Use the upsert capability to create an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true), [federatedIdentityCredential](/graph/api/resources/federatedidentitycredential?view=graph-rest-beta&preserve-view=true), or [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) if it doesn't exist, or update an existing object, by using a client-provided key. For more information, see the following API operations:

- [Upsert application](/graph/api/application-upsert?view=graph-rest-beta&preserve-view=true)
- [Upsert federatedIdentityCredential](/graph/api/federatedidentitycredential-upsert?view=graph-rest-beta&preserve-view=true)
- [Upsert servicePrincipal](/graph/api/serviceprincipal-upsert?view=graph-rest-beta&preserve-view=true)

### Device and app management | Cloud PC

- [Apply](/graph/api/cloudpcprovisioningpolicy-apply?view=graph-rest-beta&preserve-view=true) the current [provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) configuration across all Cloud PC devices under a specified policy.
- [Update](/graph/api/cloudpcprovisioningpolicy-applyconfig?view=graph-rest-beta&preserve-view=true) the [provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) configuration for a specific set of Cloud PC devices using their IDs. 
- Added the ability to mark specified **alertRecord** objects as sent via the **isPortalNotificationSent** property.
- Run bulk [power-off](/graph/api/resources/cloudpcbulkpoweroff?view=graph-rest-beta&preserve-view=true), [power-on](/graph/api/resources/cloudpcbulkpoweron?view=graph-rest-beta&preserve-view=true), [reprovision](/graph/api/resources/cloudpcbulkreprovision?view=graph-rest-beta&preserve-view=true), [resize](/graph/api/resources/cloudpcbulkresize?view=graph-rest-beta&preserve-view=true), [restart](/graph/api/resources/cloudpcbulkrestart?view=graph-rest-beta&preserve-view=true), [restore](/graph/api/resources/cloudpcbulkrestore?view=graph-rest-beta&preserve-view=true), and [troubleshoot](/graph/api/resources/cloudpcbulktroubleshoot?view=graph-rest-beta&preserve-view=true) actions on Cloud PC devices using their IDs.

Deprecated the following properties:

- **type** property on [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true); use the **connectionType** property instead.
- **healthCheckStatusDetails** property on [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true); use the **healthCheckStatusDetail** property instead.
- **additionalDetails** property on [cloudPcOnPremisesConnectionHealthCheck](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true); use the **additionalDetail** property instead.
- **domainJoinConfiguration** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) in favor of the **domainJoinConfigurations** property.
- **onPremisesConnectionId** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) in favor of the **domainJoinConfigurations** property.

### Device and app management | Device updates

Added methods to the Windows Updates API for Windows products, including [retrieval of known issues by time range](/graph/api/windowsupdates-product-getknownissuesbytimerange?view=graph-rest-beta&preserve-view=true), [finding product revisions by catalog ID](/graph/api/windowsupdates-product-findbycatalogid?view=graph-rest-beta&preserve-view=true), and [by knowledge base number](/graph/api/windowsupdates-product-findbykbnumber?view=graph-rest-beta&preserve-view=true).

### Files

Use the [Get file by contentStream](/graph/api/driveitem-get-contentstream?view=graph-rest-beta&preserve-view=true) method to download file content directly instead of getting a `302` redirect URL.

### Groups

Added the [upsert](/graph/api/group-upsert) capability to the [group resource type](/graph/api/resources/group). Use this capability to create a group if it doesn't exist, or update an existing group, by using the **uniqueName** client-provided key.

### Identity and access | Identity and sign-in

Use the [federatedTokenValidationPolicy resource type](/graph/api/resources/federatedtokenvalidationpolicy?view=graph-rest-beta&preserve-view=true) and its associated methods to manage whether Microsoft Entra ID validates federation authentication tokens.

### Security | Email and collaboration protection

Added the ability to list emails analyzed by Microsoft Defender for Office 365, get email related metadata, and perform response actions (soft delete, hard delete, move to junk, move to Inbox).

### Security | Identities

Added the ability to get, get list, update Microsoft Defender for Identity [health issues](/graph/api/resources/security-healthissue?view=graph-rest-beta&preserve-view=true).

### Users

Added the ability to convert an external user to an internal member user using the [user: convertExternalToInternalMemberUser](/graph/api/user-convertexternaltointernalmemberuser?view=graph-rest-beta&preserve-view=true) API. This conversion allows the converted users to maintain their existing user object and access, while gaining the full privileges of an internal member user in the tenant.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. Visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls) to discover the full calendar of developer calls.

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/)
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
