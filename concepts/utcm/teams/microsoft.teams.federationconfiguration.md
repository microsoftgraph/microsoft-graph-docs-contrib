---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource is used to configure the Teams Federation Configuration (CsTenantFederationConfiguration).
In the Teams admin center this is available in 'External access' in the Users section.

More information: https://docs.microsoft.com/en-us/microsoftteams/manage-external-access


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The only valid input is Global - the tenant wide configuration | `Global` |
| **AllowFederatedUsers** | Write | Boolean | When set to True users will be potentially allowed to communicate with users from other domains. | |
| **AllowedDomains** | Write | StringArray[] | List of federated domains to allow. | |
| **BlockedDomains** | Write | StringArray[] | List of federated domains to block. | |
| **AllowPublicUsers** | Write | Boolean | When set to True users will be potentially allowed to communicate with users who have accounts on public IM and presence providers. | |
| **AllowTeamsConsumer** | Write | Boolean | Allows federation with people using Teams with an account that's not managed by an organization. | |
| **AllowTeamsConsumerInbound** | Write | Boolean | Allows people using Teams with an account that's not managed by an organization, to discover and start communication with users in your organization. | |
| **ExternalAccessWithTrialTenants** | Write | String | When set to Blocked, all external access with users from Teams subscriptions that contain only trial licenses will be blocked. This means users from these trial-only tenants will not be able to reach to your users via chats, Teams calls, and meetings (using the users authenticated identity) and your users will not be able to reach users in these trial-only tenants. If this setting is set to Blocked, users from the trial-only tenant will also be removed from existing chats. | `Allowed`, `Blocked` |
| **TreatDiscoveredPartnersAsUnverified** | Write | Boolean | When set to True, messages sent from discovered partners are considered unverified. That means that those messages will be delivered only if they were sent from a person who is on the recipient's Contacts list. | |
| **SharedSipAddressSpace** | Write | Boolean | When set to True, indicates that the users homed on Skype for Business Online use the same SIP domain as users homed on the on-premises version of Skype for Business Server. | |
| **RestrictTeamsConsumerToExternalUserProfiles** | Write | Boolean | When set to True, Teamsconsumer have access only to external user profiles | |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



