---
title: "Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)"
description: "Use Microsoft Entra Permissions Management to discover, remediate, and monitor permissions in multiple cloud infrastructures."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)

[Microsoft Entra Permissions Management](https://www.microsoft.com/en/security/business/identity-access/microsoft-entra-permissions-management) provides comprehensive visibility into permissions assigned to all identities across multiple cloud infrastructures such as Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP). The permissions management APIs in Microsoft Graph provide the programmatic way to discover, manage, and monitor these permissions in your multicloud infrastructure.

This article introduces the Permissions Management capabilities that you can manage programmatically through Microsoft Graph.

For more information about Permissions Management, see [What's Microsoft Entra Permissions Management](/entra/permissions-management/overview).

## Key use cases of permissions management APIs

By providing you with comprehensive visibility into permissions assigned to all identities across multiple clouds, permissions management APIs allows you to address three key use cases of Microsoft Entra Permissions Management: *discover*, *remediate*, and *monitor*.

## Authorization systems

An authorization system is a platform that contains identities and resources. It exposes permissions that control what resources an identity has access to and what actions they can perform.

Use the [authorizationSystem resource type](../resources/authorizationsystem.md) and its related methods to discover the authorization systems that are onboarded to Permissions Management and their details. Currently, Permissions Management supports Microsoft Azure, AWS, and GCP.

The following key API scenarios allow you to retrieve details for authorization systems.

| Description | APIs |
|--|--|
| Retrieve authorization systems | [List authorizationSystems](../api/externalconnectors-external-list-authorizationsystems.md) |
| Get details for an AWS authorization system | [List awsAuthorizationSystems](../api/awsauthorizationsystem-list.md) |
| Get details for an Azure authorization system | [List azureAuthorizationSystems](../api/azureauthorizationsystem-list.md) |
| Get details for a GCP authorization system | [List gcpAuthorizationSystems](../api/gcpauthorizationsystem-list.md) |

Discover the API operations quick reference for [AWS authorization systems](/graph/permissions-management-how-to-authorization-system-aws), [Azure authorization systems](/graph/permissions-management-how-to-authorization-system-azure), and [GCP authorization systems](/graph/permissions-management-how-to-authorization-system-gcp).

## Authorization system inventory

Every authorization system has a defined set of objects that form the capabilities of the authorization system. For example, identities such as users and service accounts, or actions and resources.

The following key API scenarios allow you to retrieve the inventory for authorization systems.

| Description | APIs |
|--|--|
|List all identities in an authorization system|<li> [List all AWS identities](../api/awsassociatedidentities-list-all.md) <li> [List all Azure identities](../api/azureassociatedidentities-list-all.md) <li> [List all GCP identities](../api/azureassociatedidentities-list-all.md)|
|List identity types in specific authorization systems|<li>List [roles](../api/awsassociatedidentities-list-roles.md) and [users](../api/awsassociatedidentities-list-users.md) in AWS <li> List [managed identities](../api/azureassociatedidentities-list-managedidentities.md), [users](../api/azureassociatedidentities-list-users.md), and [service principals](../api/azureassociatedidentities-list-serviceprincipals.md) in Azure <li> List [users](../api/gcpassociatedidentities-list-users.md), and [service accounts](../api/gcpassociatedidentities-list-serviceaccounts.md) in GCP |
|Other inventory| <li> List [actions](../api/awsauthorizationsystem-list-actions.md), [policies](../api/awsauthorizationsystem-list-policies.md), [resources](../api/awsauthorizationsystem-list-resources.md), and [services](../api/awsauthorizationsystem-list-services.md) in AWS <li> List [actions](../api/azureauthorizationsystem-list-actions.md), [resources](../api/azureauthorizationsystem-list-resources.md), [role definitions](../api/azureauthorizationsystem-list-roledefinitions.md), and [services](../api/azureauthorizationsystem-list-services.md) in Azure <li> List [actions](../api/gcpauthorizationsystem-list-actions.md), [resources](../api/gcpauthorizationsystem-list-resources.md), [roles](../api/gcpauthorizationsystem-list-roles.md), and [services](../api/gcpauthorizationsystem-list-services.md) in GCP|

## Permissions requests

Identities can request for permissions against actions and resources in an authorization system. The permissions requests capabilities allow callers to request permissions for themselves or on behalf of another identity, and other identities to approve, reject, or cancel the requests.

The following key API scenarios allow you to implement permissions on demand capabilities.

| Scenarios | API |
|--|--|
|Request permissions; grant or reject a request |[Create scheduledPermissionsRequest](../api/permissionsmanagement-post-scheduledpermissionsrequests.md)|
|Cancel a permissions request|[scheduledPermissionsRequest: cancelAll](../api/scheduledpermissionsrequest-cancelall.md)|
|Track permissions requests and their status|[List permissionsRequestChanges](../api/permissionsmanagement-list-permissionsrequestchanges.md)|

## Permissions analytics

Through the permissions analytics APIs, Permissions Management helps you discover permissions risk in identities and resources for your authorization systems. You can use these findings to automate use cases such as:

- Building dashboards
- Trigger a risk review
- Prioritize remediation
- Generate tickets

The following sample findings are available through the APIs:

| Finding | Sample scenarios API |
|--|--|
|Inactive identities: Identities that haven't used any of their granted permissions in the last 90 days.| <li> [Inactive users across multiple authorization systems](../api/inactiveuserfinding-list.md) <li> [Inactive serverless functions across multiple authorization systems](../api/inactiveserverlessfunctionfinding-list.md) <li> [Inactive Azure service principals](../api/inactiveazureserviceprincipalfinding-list.md) <li> [Inactive GCP service accounts]() <li> [Inactive AWS roles](../api/inactiveawsrolefinding-list.md) <li> [Inactive AWS resources, such as ec2](../api/inactiveawsresourcefinding-list.md)|
|Inactive groups: No identity has utilized the permissions assigned via the group over the last 90 days.   |<li>[Inactive groups across multiple authorization systems](../api/inactivegroupfinding-list.md)  |
|Super identities: Administrator-level permissions across the authorization system. These identities can manage all the resources under the authorization system. |<li>[Super users across multiple authorization systems](../api/superuserfinding-list.md) <li> [Super serverless functions across multiple authorization systems](../api/superserverlessfunctionfinding-list.md) <li> [Super Azure service principals](../api/superazureserviceprincipalfinding-list.md) <li> [Super GCP service accounts](../api/supergcpserviceaccountfinding-list.md) <li> [Super AWS roles]() <li> [Super AWS resources, such as ec2](../api/superawsresourcefinding-list.md)|

Other findings include:

- Resource-based findings: For example, Azure blob containers, S3 buckets and Storage buckets that are accessible publicly; open network security groups; and identities that can access secret information or utilize security tools
- Overprovisioned users, roles, resources, service principals, and service accounts
- Users with unenforced multifactor authentication in AWS
- Opportunities for privilege escalation
- AWS access key age and usage

---

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

---

## Permissions and privileges

To call the permissions management APIs, the caller doesn't need any Microsoft Graph permissions. However, they must have appropriate privileges in the Microsoft Entra tenant and in the external system.

For more information, see [Permissions Management roles and permissions levels](/entra/permissions-management/product-roles-permissions)

## Related content

- [What's Microsoft Entra Permissions Management](/entra/permissions-management/overview)
- [Quickstart guide to Microsoft Entra Permissions Management](/entra/permissions-management/permissions-management-quickstart-guide)
- [Microsoft Entra Permissions Management operations reference](/entra/architecture/permissions-manage-ops-guide-intro)
- Microsoft Entra permissions management API operations quick references:
  - [For AWS authorization systems](/graph/permissions-management-how-to-authorization-system-aws)
  - [For Azure authorization systems](/graph/permissions-management-how-to-authorization-system-azure)
  - [For GCP authorization systems](/graph/permissions-management-how-to-authorization-system-gcp)

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Error: /resources/permissions-management-api-overview.md:
      Exception processing links.
      Value cannot be null. (Parameter 'linkUrl')"
  ]
} -->
