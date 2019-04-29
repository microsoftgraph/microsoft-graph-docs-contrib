---
title: "Resource type differences between Azure AD Graph and Microsoft Graph"
description: "Describes differences between resources in Azure AD Graph and resources in Microsoft Graph in order to help migrate apps."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Resource type differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

When migrating apps from Azure AD Graph to Microsoft Graph, be aware that some resources have different names and different types.  For example, if your Azure AD Graph app uses the **tenantInfo** resource, you'll need to update your code to refer to [organization](/graph/api/resources/organization?view=graph-rest-1.0) instead.

The following table highlights differences between Azure AD Graph and Microsoft Graph resources.  It shows resources that have different names or are not available; it also highlights resources available in the beta version of Microsoft Graph but not in the v1.0 version.

If a resource is not shown in this list, it is already available in the [v1.0 version](/graph/api/overview?view=graph-rest-1.0) of Microsoft Graph, with exactly the same name as in Azure AD Graph.

|Azure AD Graph <br>(v1.6) resource |Microsoft Graph<br>resource|Comments|
|---|---|---|
| addIn       | beta - addIn<br>v1.0 - _Not yet available_ | Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| application | beta - application<br>v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| appRole | beta - appRole<br>v1.0 - _Not yet available_ | Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| appRoleAssignment | beta&nbsp;-&nbsp;appRoleAssignment<br>v1.0 - _Not yet available_ | Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| certificateAuthorityInformation | beta&nbsp;-&nbsp;certificateAuthority<br>v1.0 - _Not yet available_ | |
| contact | beta - orgContact<br>v1.0 - orgContact (_Not yet available_) | |
| directoryLinkChange | beta - _new&nbsp;approach_ <br>v1.0 - _new&nbsp;approach_ | Delta query supports relationship change detection with a mechanism that doesn't require this resource. Please see [Feature differences between Azure AD Graph and Microsoft Graph](migrate-azure-ad-graph-feature-differences.md). |
| keyCredential | beta - keyCredential <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| keyValue | beta - keyValue <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| oAuth2Permission | beta - permissionScope <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| oAuth2PermissionGrant | beta&nbsp;-&nbsp;oAuth2PermissionGrant <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| optionalClaim | beta- optionalClaim <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| optionalClaims | beta- optionalClaims <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| parentalControlSettings | beta - parentalControlSettings <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| passwordCredential | beta- passwordCredential <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| passwordProfile | beta- passwordProfile <br> v1.0 - PasswordProfile ||
| policy | beta- policy _(Will change)_ <br> v1.0  - _Not yet available_ | Each policy will have a unique type name and structure.|
| provisioningError | beta&nbsp;-&nbsp;onPremisesProvisioningError <br> v1.0&nbsp;-&nbsp;onPremisesProvisioningError  | |
| requiredResourceAccess | beta - requiredResourceAccess <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| resourceAccess | beta - resourceAccess <br> v1.0 - _Not yet available_ |Part of [application](/graph/api/resources/application?view=graph-rest-beta) APIs.  |
| serviceEndpoint | beta - endpoint <br> v1.0 - endpoint _Not yet available_ | |
| servicePrincipal | beta - servicePrincipal <br> v1.0 - _Not yet available_ | |
| signinName | beta - identityObject _Not yet available_ <br> v1.0 - identityObject _Not yet available_ | Models identifiers used to sign into a user account.  Supports B2C scenarios. |
| tenantDetail | beta - organization <br> v1.0 - organization | |
| trustedCasForPasswordAuth | beta&nbsp;-&nbsp;certificateBasedAuthConfiguration _Not yet available_ <br> v1.0 - certificateBasedAuthConfiguration _Not yet available_  | |
| userIdentity | beta - identityObject _Not yet available_ <br> v1.0 - identityObject _Not yet available_ |  Models identifiers used to sign into a user account.  Supports Azudre AD B2C scenarios. |

## Next Steps

- Learn about [entity property differences](migrate-azure-ad-graph-property-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
