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

## May 2024: New and generally available

### Identity and access | Identity and sign-in

Customize the authentication experience for your customers by using [user flows in Microsoft Entra External ID in external tenants](/graph/api/resources/authenticationEventsFlow). In the self-service sign-up user flow, you can collect user attributes, disable sign up and only allow sign in, and also integrate with sytems that are external to Microsoft Entra ID.

## May 2024: New in preview only
### Sites and lists | Content models and document processing jobs
- [Content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) support is added to sites. 
    - Use [get model](/graph/api/resources/contentmodel-get?view=graph-rest-beta&preserve-view=true) or [get model by name](/graph/api/contentmodel-getbyname?view=graph-rest-beta&preserve-view=true) methods to get a [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) resource. 
    - Add a [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) to a library by using [add to drive](/graph/api/contentmodel-addtodrive?view=graph-rest-beta&preserve-view=true) method to make it ready to process files.
    - Remove a [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) from library by using [remove from drive](/graph/api/contentmodel-removefromdrive?view=graph-rest-beta&preserve-view=true) method.
    - Use [get applied drives](/graph/api/contentmodel-getapplieddrives?view=graph-rest-beta&preserve-view=true) to list all libraries associated with the content model.
- New files in the added libraries are automatically processed by [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true)s. Create [document processing jobs](/graph/api/resources/documentprocessingjob?view=graph-rest-beta&preserve-view=true) to process existing files.

### Change notifications

- Enabled change notifications support to the methods to [list](/graph/api/subscription-list?view=graph-rest-beta&preserve-view=true), [get](/graph/api/subscription-get?view=graph-rest-beta&preserve-view=true), [create](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&preserve-view=true), [reauthorize](/graph/api/subscription-reauthorize?view=graph-rest-beta&preserve-view=true), [update](/graph/api/subscription-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/subscription-delete?view=graph-rest-beta&preserve-view=true) a subscription for [user-scoped chat notifications](/graph/teams-changenotifications-chat#subscribe-to-changes-at-the-user-level-preview).
- Enabled the `$notifyOnUserSpecificProperties` query parameter as a value of the **resource** property in the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource. You can use the [notifyOnUserSpecificProperties](/graph/teams-changenotifications-chat#notification-payloads-for-user-specific-properties) parameter when you subscribe either to [user-scoped chat notifications](/graph/teams-changenotifications-chat#subscribe-to-changes-at-the-user-level-preview) or [notifications in a particular chat](/graph/teams-changenotifications-chat#subscribe-to-changes-in-a-particular-chat).

### Identity and access | Identity and sign-in

- Use the [externalAuthenticationMethodConfiguration resource type](/graph/api/resources/externalAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) and its associated methods to manage the configuration of external authentication methods and define users who can use the external authentication methods to satisfy the second factor of Microsoft Entra ID multifactor authentication requirements.
- Added API operations to retrieve or update keys in an Azure AD B2C Identity Experience Framework (IEF) policy through the new [trustFrameworkKey_v2 resource type](/graph/api/resources/trustframeworkkey_v2?view=graph-rest-beta&preserve-view=true) and its associated methods.

The [custom claims policy](/graph/api/resources/customclaimspolicy) API allows application admins to customize the additional claims emitted in tokens affected by this policy. This API enables admins to manage the claims for their application from the Microsoft Entra portal and by using the Microsoft Graph API interchangeably, allowing more flexibility in their application claims management experience.

### Microsoft Graph Bicep templates

Use the new [Bicep templates for Microsoft Graph resources](https://aka.ms/graphbicep) to deploy Microsoft Graph resources for your infrastructure as code (IaC) projects. The following Microsoft Graph resources are currently supported as Bicep resource types:

- application
- appRoleAssignedTo
- group
- federatedIdentityCredential
- oauth2PermissionGrant
- servicePrincipal

Microsoft Graph Bicep is currently in preview, but can be used to deploy Microsoft Graph resources that are in `v1.0` and `beta`.

### Search

Use the **includeHiddenContent** property on the [sharePointOneDriveOptions](/graph/api/resources/sharepointonedriveoptions?view=graph-rest-beta&preserve-view=true) resource to include hidden content, such as archived content and SharePoint Embedded (RaaS), in search results.

### Security | eDiscovery

Export [results](/graph/api/security-ediscoverysearch-exportresult?view=graph-rest-beta&preserve-view=true) and a [report](/graph/api/security-ediscoverysearch-exportreport?view=graph-rest-beta&preserve-view=true) from an [ediscoverySearch](/graph/api/resources/security-ediscoverysearch?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

- [Get](/graph/api/virtualeventwebinarregistrationconfiguration-get?view=graph-rest-beta&preserve-view=true) information about a [webinar registration configuration](/graph/api/resources/virtualeventwebinarregistrationconfiguration?view=graph-rest-beta&preserve-view=true).
- [List](/graph/api/virtualevent-list-presenters?view=graph-rest-beta), [create](/graph/api/virtualevent-post-presenters?view=graph-rest-beta&preserve-view=true), [get](/graph/api/virtualeventpresenter-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/virtualeventpresenter-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/virtualeventpresenter-delete?view=graph-rest-beta&preserve-view=true) presenters on a [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

- Use the **reactionContentUrl** property on [chatMessageReaction](/graph/api/resources/chatmessagereaction?view=graph-rest-beta&preserve-view=true) to represent the hosted content URL for a custom reaction in a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true).
- Use the `<customemoji></customemoji>` tag on the **content** property of the [itemBody](/graph/api/resources/itembody?view=graph-rest-beta&preserve-view=true) resource to represent custom emojis in the message body in a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true).
- Use the **isHiddenForAllMembers** property to indicate whether a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) is hidden from all its members. 


## April 2024: New and generally available

### Applications

- Updated the default value for **signInAudience** for new [applications](/graph/api/resources/application) from `AzureADandPersonalMicrosoftAccount` to `AzureADMyOrg`. Going forward, if you don't explicitly assign a value to the property during [app creation](/graph/api/application-post-applications), the app is automatically assigned the value `AzureADMyOrg`.
- Added the support for adding password secrets to applications during [app creation](/graph/api/application-post-applications). Previously, you could only add secrets to existing apps through the [Update application](/graph/api/application-update) or the [addPassword](/graph/api/application-addpassword) operations.
- Use the upsert capability to create an [application](/graph/api/resources/application), [federatedIdentityCredential](/graph/api/resources/federatedidentitycredential), or [servicePrincipal](/graph/api/resources/serviceprincipal) if it doesn't exist, or update an existing object, by using a client-provided key. For more information, see the following API operations:

    - [Upsert application](/graph/api/application-upsert)
    - [Upsert federatedIdentityCredential](/graph/api/federatedidentitycredential-upsert)
    - [Upsert servicePrincipal](/graph/api/serviceprincipal-upsert)

### Identity and access | Governance

Use the [Create](/graph/api/identitygovernance-lifecycleworkflowscontainer-post-workflows) operation on the [workflow](/graph/api/resources/identitygovernance-workflow) resource to create now up to 100 workflows that is an increase from the previous limit of 50.

### Identity and access | Identity and sign-in

- Configure the [default identity provider](/graph/api/resources/defaultinvitationredemptionidentityproviderconfiguration) to use in redemption flow settings for Microsoft Entra ID B2B collaboration.
- Use a [custom authentication extension](/graph/api/resources/customauthenticationextension) to manage the configuration and get data from a system external to Microsoft Entra ID, such as a database, so to customize the authentication experience for users. This feature is available for both Microsoft Entra for workforce tenants and Microsoft Entra External ID.
- To customize an authentication process, use an [authentication event listener](/graph/api/resources/authenticationEventListener) to manage listeners and handlers that trigger the execution of custom logic during the authentication experience. This feature is available for both Microsoft Entra for workforce tenants and Microsoft Entra External ID.
- Multiple tenants in Microsoft Entra ID can now collaborate seamlessly as a single entity by using [multi-tenant organization APIs](/graph/api/resources/multitenantorganization-overview). Set up and manage a multi-tenant organization, and configure cross-tenant policies for multi-tenant organization tenants through policy templates.

### Groups

Added the [upsert](/graph/api/group-upsert) capability to the [group resource type](/graph/api/resources/group). Use this capability to create a group if it doesn't exist, or update an existing group, by using the **uniqueName** client-provided key.

### Security | Legacy alerts

The `/security/alerts` endpoint is deprecated and will stop returning data on **April 10, 2026**.

### Sites and lists

You can now:
- [Track changes for SharePoint site](/graph/api/site-delta) resources.
- [Track changes for SharePoint list item](/graph/api/listitem-delta) resources.

Work with [site pages](/graph/api/resources/sitepage) and [horizonal](/graph/api/resources/horizontalsection) and [vertical](/graph/api/resources/verticalsection) sections of pages.  

### Users

Associate users or groups as sponsors for a guest user's privileges in the tenant and keep the guest user's information and access updated. You can [assign a sponsor](/graph/api/user-post-sponsors), [list sponsors](/graph/api/user-list-sponsors), and [remove a sponsor](/graph/api/user-delete-sponsors).

## April 2024: New in preview only

### Device and app management | Cloud PC

- Use the **allotmentDisplayName** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to divide tenant licenses into smaller batches or groups that help restrict the number of licenses available for use in a specific assignment.
- Deprecated the **type** property on [cloudPcAuditResource](/graph/api/resources/cloudpcauditresource?view=graph-rest-beta&preserve-view=true) in favor of the **resourceType** property.
- Deprecated the `shared` member on [cloudPcProvisioningType](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true#cloudpcprovisioningtype-values) in favor of the `sharedByUser` member.
- Added the `sharedbyEntraGroup` member as a new provisioning type under [cloudPcProvisioningType](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true#cloudpcprovisioningtype-values).

### Identity and access | Governance

Use the [Create](/graph/api/identitygovernance-lifecycleworkflowscontainer-post-workflows?view=graph-rest-beta&preserve-view=true) operation on the [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true) resource to create now up to 100 workflows that is an increase from the previous limit of 50.

### Identity and access | Network access

Updated the definition of physical locations for customer premises equipment in the Global Secure Access services from the [branchSite resource type](/graph/api/resources/networkaccess-branchsite?view=graph-rest-beta&preserve-view=true) to the [remoteNetwork resource type](/graph/api/resources/networkaccess-remotenetwork?view=graph-rest-beta&preserve-view=true). The **branchSite** resource type and its associated properties, relationships, and endpoints are deprecated will be retired soon. Use the **remoteNetwork** resource type and its associated properties, relationships, and endpoints.

### Identity and access | Partner customer administration

As a partner in the Cloud Solution Provider (CSP) program, you're responsible for your customer's Azure consumption; therefore, it's important that you're aware of any anomalous usage in your customer's Azure subscriptions. Use the [partner security alert](/graph/api/resources/partner-security-partnersecurityalert?view=graph-rest-beta&preserve-view=true) API in Microsoft Graph to detect fraudulent activities and misuse in your customer's Azure resources. Mitigating and responding to the alerts within 24 hours can help to significantly reduce the financial loss that your customers might incur during the compromise.

### Industry data ETL

The [outbound provisioning flow set](/graph/api/resources/industrydata-outboundprovisioningflowset?view=graph-rest-beta&preserve-view=true), which represents a collection of [outbound provisioning flows](/graph/api/resources/industrydata-provisioningflow?view=graph-rest-beta&preserve-view=true) used to configure how school data sync populates data in Microsoft 365 and Microsoft Entra ID, is now generally available.

An outbound provisioning flow set can contain no more than one of each provisioning flow configuration: [userProvisioningFlow](/graph/api/resources/industrydata-userprovisioningflow?view=graph-rest-beta&preserve-view=true), [classGroupProvisioingFlow](/graph/api/resources/industrydata-classgroupprovisioningflow?view=graph-rest-beta&preserve-view=true), [securityGroupProvisioingFlow](/graph/api/resources/industrydata-securitygroupprovisioningflow?view=graph-rest-beta&preserve-view=true), [administrativeUnitProvisioingFlow](/graph/api/resources/industrydata-administrativeunitprovisioningflow?view=graph-rest-beta&preserve-view=true).

When calling the [industry data ETL API](/graph/api/resources/industrydata-overview?view=graph-rest-beta&preserve-view=true), take advantage of more granular permissions added for reading or writing outbound provisioning flow set data by using the new permissions `IndustryData-OutboundFlow.Read.All` and `IndustryData-OutboundFlow.ReadWrite.All`.

### People and workplace intelligence | People 

Deprecated the `/organization/{organizationId}/settings/itemInsights` endpoint in favor of the new [peopleAdminSettings](/graph/api/resources/peopleadminsettings?view=graph-rest-beta&preserve-view=true) resource and introduced the [List](/graph/api/peopleadminsettings-list-iteminsights?view=graph-rest-beta&preserve-view=true) method on the **peopleAdminSettings** resource.

### Reports | Identity and access reports

- Added the `nativeAuth` member as a supported protocol type to the **authenticationProtocol** in the [signIn](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) resource.
- The previously deprecated **activeUsersBreakdownMetric** resource and its associated APIs are now retired. To get insights into daily and monthly user activity on apps registered in your tenant that's configured for Microsoft Entra External ID for customers, use the [activeUsersMetric resource type](/graph/api/resources/activeusersmetric?view=graph-rest-beta&preserve-view=true) and its associated APIs.

### Security | Legacy alerts

The `/security/alerts` endpoint is deprecated and will stop returning data on **April 10, 2026**.

### Security | Threat intelligence indicator

The `/security/tiindicators` endpoint is deprecated and will stop returning data on **April 10, 2026**.

### Teamwork and communications | Calls and online meetings

A town hall is a type of meeting available in Microsoft Teams. Whether you're marking milestone achievements within your organization or covering an election, town hall features enable you to provide high-quality production experiences to large audiences. You can create, publish, and cancel town hall meetings by using the following APIs:

- [Create virtualEventTownhall](/graph/api/virtualeventsroot-post-townhalls?view=graph-rest-beta&preserve-view=true)
- [virtualEvent: publish](/graph/api/virtualevent-publish?view=graph-rest-beta&preserve-view=true)
- [virtualEvent: cancel](/graph/api/virtualevent-cancel?view=graph-rest-beta&preserve-view=true)

For more information about town hall APIs, see [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

[Send chatMessage in a channel or a chat](/graph/api/chatmessage-post?view=graph-rest-beta&preserve-view=true) with a file attachment in it using file share link. 

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
