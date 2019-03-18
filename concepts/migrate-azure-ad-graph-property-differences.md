---
title: "Property differences between Azure AD Graph and Microsoft Graph | Microsoft Graph"
description: "Describes property differences between Azure AD Graph resources (entities) and Microsoft Graph, in order to help migrate apps accordingly."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Property differences

In general, the best way to compare the Azure AD Graph API to Microsoft Graph is to compare the underlying metadata for each service, especially the resource descriptions:

- [Azure AD Graph metadata](https://graph.windows.net/microsoft.com/$metadata?api-version=1.6)
- [Microsoft Graph beta metadata](https://graph.microsoft.com/beta/$metadata)
- [Microsoft Graph v1.0 metadata](https://graph.microsoft.com/v1.0/$metadata)

Here, we highlight property differences between two of the major resources used in each service: user and group.

## User property differences

Here are the property differences for the user resource: 

|Azure AD Graph <br>(v1.6) user property |Microsoft Graph<br>user property|Comments|
|---|---|---|
| appRoleAssignments | beta/ - appRoleAssignments <br> v1.0 - _Not yet available_ | |
| creationType | beta/ - identities <br> v1.0 - identities | Planned only for creationType values of `LocalAccount`. |
| deletedTimestamp| beta/ - deletedDateTime <br> v1.0/ - deletedDateTime | |
| dirSyncEnabled | beta/&nbsp;-&nbsp;onPremisesSyncEnabled <br> v1.0/ - onPremisesSyncEnabled | |
| facsimileTelephoneNumber | beta/ - faxNumber <br> v1.0/ - faxNumber | |
| immutableId | beta/&nbsp;-&nbsp;onPremisesImmutableId <br> v1.0/ - onPremisesImmutableId | |
| isCompromised | beta/ - _Not available_ <br> v1.0/ - _Not available_ | The Microsoft Graph [identity protection](/graph/api/resources/identityprotection-root?view=graph-rest-beta) API provides more sophisticated functionality. |
| lastDirSyncDateTime | beta/&nbsp;-&nbsp;onPremisesLastSyncDateTime <br> v1.0/ - onPremisesLastSyncDateTime | |
| mobile | beta/ - mobilePhone <br> v1.0/ - mobilePhone | |
| oAuth2PermissionGrants | beta/ - oAuth2PermissionGrants <br> v1.0/ - _Not yet available_ ||
| provisioningErrors | beta/&nbsp;-&nbsp;onPremisesProvisioningErrors <br> v1.0/ - onPremisesProvisioningErrors | |
| refreshTokensValidFromDateTime | beta/&nbsp;-&nbsp;signinSessionsValidFromDateTime <br> v1.0/ - signinSessionsValidFromDateTime | The beta/ API cuurrently supports refreshTokensFromDateTime; however, this will be updated shortly and then added to v1.0. |
| signinNames | beta/ - identities <br> v1.0/ - identities | |
| telephoneNumber | beta/ - businessPhones <br> v1.0/ - businessPhones | |
| thumbnailPhoto | beta/ - photo, photos <br> v1.0/ - photo, photos | The Azure AD thumbnail photo is no longer available through Microsoft Graph.  Apps should use the photo or photos API.  (The latter allows apps to specify size.) |
| userIdentities | beta/ - identities <br> v1.0/ - identities | Planned, but not current available.|
| userState | beta/ - externalUserState <br> v1.0/ - externalUserState | |
| userStateChangedOn | beta/&nbsp;-&nbsp;externalUserStateChangeDateTime <br> v1.0/ - externalUserStateChangeDateTime | |
|||

## Group property changes

Here are the property differences for group resources: 

|Azure AD Graph <br>(v1.6) group property |Microsoft Graph<br>user property|Comments|
|---|---|---|
| dirSyncEnabled | beta/&nbsp;-&nbsp;onPremisesSyncEnabled <br> v1.0/ - onPremisesSyncEnabled | |
| immutableId | beta/&nbsp;-&nbsp;onPremisesImmutableId <br> v1.0/ - onPremisesImmutableId | |
| lastDirSyncDateTime | beta/&nbsp;-&nbsp;onPremisesLastSyncDateTime <br> v1.0/ - onPremisesLastSyncDateTime | |
| onPremisesDomainName | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. |
| onPremisesNetBiosName | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. |
| onPremisesSamAccountName | beta/ - _Not yet available_ <br> v1.0/ - _Not yeat available_ | Planned, but not yet available. |
| provisioningErrors | beta/&nbsp;-&nbsp;onPremisesProvisioningErrors <br> v1.0/ - onPremisesProvisioningErrors | |
|||

## Next Steps

- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).
