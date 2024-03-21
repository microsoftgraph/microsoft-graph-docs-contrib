---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

Directory permissions provide the highest level of privilege for accessing directory resources such as [user](/graph/api/resources/user), [group](/graph/api/resources/group), and [device](/graph/api/resources/device) in an organization.

They also exclusively control access to other directory resources like: [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-beta&preserve-view=true) and [schema extensions](/graph/api/resources/schemaextension?view=graph-rest-beta&preserve-view=true), as well as many directory resources including administrative units, directory roles, directory settings, and policies.

<!--

This section doesn't look correct; for example, you can create aapps using Directory.ReadWrite.All; Maybe it's out of date?


The _Directory.ReadWrite.All_ permission grants the following privileges:

- Full read of all directory resources (both declared properties and navigation properties)
- Create and update users
- Disable and enable users (but not Company Administrator)
- Set user alternative security ID (but not administrators)
- Create and update groups
- Manage group memberships
- Update group owner
- Manage license assignments
- Define schema extensions on applications
- Manage directory settings
- Manage admin consent workflow configuration (but not whether admin consent is required or who is authorized to grant admin consent)

And **doesn't grant* the following privileges:

- To reset user passwords.
- Updating another user's **businessPhones**, **mobilePhone**, or **otherMails** property is only allowed on users who are non-administrators or assigned one of the following roles: Directory Readers, Guest Inviter, Message Center Reader and Reports Reader. For more details, see Helpdesk (Password) Administrator in [Azure AD available roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).  This is the case for apps granted either the User.ReadWrite.All or Directory.ReadWrite.All delegated or application permissions.
- Deleting resources (including users or groups).
- Specifically excludes create or update for resources not listed above. This includes: application, oAuth2PermissionGrant, appRoleAssignment, device, servicePrincipal, organization, domains, and so on.

-->