# Azure AD identity and access management API overview

Microsoft Graph API for Azure Active Directory (Azure AD) helps centralize identity and access management (IAM) to enable secure and productive access between apps, devices, services, and infrastructure.  Azure AD can manage identities and control access on-premises, in hybrid environments, and in the cloud.  

Developers can use Microsoft Graph API for Azure AD to create unique workflows between Azure AD [resources](../api-reference/v1.0/resources/azure_ad_overview.md) and third-party services.

## Why use Azure AD to manage the identities and access of directory resources?

By using Microsoft Graph to integrate with Azure AD, you can seamlessly access an application or service using a single identity or a partner identity from multiple devices and platforms, including Android, Mac, iOS devices, and Windows.

Graph APIs are RESTFul APIs, which means you can easily integrate Azure AD into a variety of tools and development environments, including Angular, ASP.NET, JavaScript, PHP, Python, Ruby, UWP, Xamarin, and even command-line utilities.

Because Microsoft Graph integrates with other Azure services, you can combine multiple services into unique solutions tailored to your needs and requirements.

### Access users and groups

Look up and manage [user profile](../api-reference/v1.0/resources/user.md) information such as name, photo, email address, job title, office location, and more of users in your organization.

Create [groups](../api-reference/v1.0/resources/groups-overview.md) for projects and teams in your organization. Add and remove members from the group, and grant members access to resources.

With dynamic groups, such administration can happen automatically.

Discover information about other [directory roles](../api-reference/v1.0/resources/directoryrole.md). For example, you can check for [transitive membership](../api-reference/v1.0/api/directoryrole_list_members.md) in a list of groups, return all the groups and directory roles that a directory object is a transitive member of, or get all the resources of a specified type (like user or group) from a list of generic resource IDs.

### Manage directory roles

Activate [directory roles](../api-reference/v1.0/api/directoryrole_post_directoryroles.md) in an Azure AD tenant and manage user memberships in directory roles. Directory roles are also known as administrator roles.

### Manage devices

[Manage devices](https://docs.microsoft.com/en-us/azure/active-directory/device-management-introduction.md) registered in the organization. Devices are registered to users and include items like laptops, desktops, tablets, and mobile phones. Devices are typically created in the cloud using the Device Registration Service or by Microsoft Intune. They're used by conditional access policies for multifactor authentication.

### Partner tenant management

Get information about [partner tenants](../api-reference/v1.0/resources/contract.md), which are Azure AD tenants that belong to Microsoft partners who are either part of the Microsoft Cloud Solution Provider, Office 365 Syndication, or Microsoft Advisor partner programs.

[Manage domains](../api-reference/v1.0/resources/domain.md) associated with a tenant. Domain operations enable registrars to automate domain association for services such as Office 365.

### Tenant management

Get information about an [organization](../api-reference/v1.0/resources/organization.md), such as its business address, technical and notification contacts, the service plans that it's subscribed to, and the domains associated with it.

Get information about the [service SKUs](../api-reference/v1.0/resources/subscribedsku.md) that a company is subscribed to.

[Invite external](../api-reference/v1.0/resources/invitation.md) (guest) users to an organization.


## Next steps

- Browse Graph API for [Azure AD reference](../api-reference/v1.0/resources/azure_ad_overview.md).
- Learn how to use [Azure AD to authenticate](auth_overview.md) to Microsoft Graph APIs. 
- Learn how to integrate [Azure AD sign-on](https://azure.microsoft.com/en-us/develop/identity/signin/) into your app or website in five minutes.
- Learn what's new with [Microsoft Graph API](changelog.md).
- Explore [scenarios supported](https://developer.microsoft.com/en-us/graph/graph/examples) by Microsoft Graph API.
