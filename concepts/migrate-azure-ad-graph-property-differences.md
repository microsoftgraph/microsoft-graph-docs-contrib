---
title: "Property differences between Azure AD Graph and Microsoft Graph | Microsoft Graph"
description: "Describes property differences between Azure AD Graph resources (entities) and Microsoft Graph, in order to help migrate apps accordingly."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Property differences between Azure AD Graph and Microsoft Graph

In general, the best way to compare the Azure AD Graph API to Microsoft Graph is to compare the underlying metadata for each service, especially the resource descriptions:

- [Azure AD Graph metadata](https://graph.windows.net/microsoft.com/$metadata?api-version=1.6)
- [Microsoft Graph beta metadata](https://graph.microsoft.com/beta/$metadata)
- [Microsoft Graph v1.0 metadata](https://graph.microsoft.com/v1.0/$metadata)

Here, we highlight property differences between two of the major resources used in each service: user and group.

## User property differences

Here are the property differences for the user resource: 

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br>property|Comments|
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

## Group property differences

Here are the property differences for group resources: 

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| dirSyncEnabled | beta/&nbsp;-&nbsp;onPremisesSyncEnabled <br> v1.0/ - onPremisesSyncEnabled | |
| immutableId | beta/&nbsp;-&nbsp;onPremisesImmutableId <br> v1.0/ - onPremisesImmutableId | |
| lastDirSyncDateTime | beta/&nbsp;-&nbsp;onPremisesLastSyncDateTime <br> v1.0/ - onPremisesLastSyncDateTime | |
| onPremisesDomainName | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. |
| onPremisesNetBiosName | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. |
| onPremisesSamAccountName | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. |
| provisioningErrors | beta/&nbsp;-&nbsp;onPremisesProvisioningErrors <br> v1.0/ - onPremisesProvisioningErrors | |

## Application property differences

TBD

## AppRoleAssignment differences

TBD

## Contact property differences

Here are the property differences for contact resources:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| city | beta/&nbsp;-&nbsp;postalAddresses&nsbp;(city) <br> v1.0/ - _Not yet available_  | The city property is part of the postalAddresses resource collection. |
| county | beta/&nbsp;-&nbsp;postalAddresses&nbsp;(countryOrRegion)<br> v1.0/ - _Not yet available_  | The countryOrRegion property is part of the postalAddresses resource collection. |
| dirSyncEnabled | beta/&nbsp;-&nbsp;onPremisesSyncEnabled <br> v1.0/ - _Not yet available_  | |
| facsimileTelephoneNumber | beta/&nbsp;-&nbsp;phones (businessFax) <br> v1.0/ - _Not yet available_ | Now part of the phones collection, which supports mobile, business, and businessFax. |
| physicalDeliveryOfficeName | beta/&nbsp;-&nbsp;officeLocation <br> v1.0/ - officeLocation | |
| postalCode | beta/&nbsp;-&nbsp;postalAddresses&nbsp;(postalCode)<br> v1.0/ - _Not yet available_  | The postalCode property is part of the postalAddresses resource collection. |
| provisioningErrors | beta/&nbsp;-&nbsp;onPremisesProvisioningErrors<br> v1.0/ - _Not yet available_  | |
| sipProxyAddress |  beta/&nbsp;-&nbsp;imAddresses<br> v1.0/ - _Not yet available_  | |
| state | beta/&nbsp;-&nbsp;postalAddresses&nbsp;(state)<br> v1.0/ - _Not yet available_  | The state property is part of the postalAddresses resource collection. |
| streetAddress | beta/&nbsp;-&nbsp;postalAddresses&nbsp;(street)<br> v1.0/ - _Not yet available_  | The street property is part of the postalAddresses resource collection. |
| telephoneNumber | beta/&nbsp;-&nbsp;phones (business) <br> v1.0/ - _Not yet available_ | Now part of the phones collection, which supports mobile, business, and businessFax. |
| thumbnailPhoto | beta/&nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_&nbsp;<br> v1.0/ - _Not yet available_ | Not planned right now; may be added in the future. |

## Contract property differences

Here are the property differences for contract resources:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| customerContextId | beta/&nbsp;-&nbsp;customerId <br> v1.0/ - customerId  |  |

## Device property differences

Here are the property differences for device resources:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| approximateLastLogonTimestamp | beta/&nbsp;-&nbsp;approximateLastSignInDateTime <br> v1.0/ - approximateLastSignInDateTime |  |
| complianceExpiryTime | beta/&nbsp;-&nbsp;complianceExpirationDateTime <br> v1.0/ - complianceExpirationDateTime |  |
| deviceObjectVersion |  beta/&nbsp;-&nbsp;deviceVersion <br> v1.0/ - deviceVersion |  |
| deviceOSType | beta/&nbsp;-&nbsp;operatingSystem <br> v1.0/ - operatingSystem |  |
| deviceOSVersion | beta/&nbsp;-&nbsp;operatingSystemVersion <br> v1.0/ - operatingSystemVersion |  |
| devicePhysicalIds | beta/&nbsp;-&nbsp;physicalIds <br> v1.0/ - physicalIds |  |
| deviceTrustType | beta/&nbsp;-&nbsp;trustType <br> v1.0/ - trustType |  |
| dirSyncEnabled |  beta/&nbsp;-&nbsp;onPremisesSyncEnabled <br> v1.0/ - onPremisesSyncEnabled |  |
| lastDirSyncTime |  beta/&nbsp;-&nbsp;onPremisesLastSyncDateTime <br> v1.0/ - onPremisesLastSyncDateTime |  |

## Next Steps

- Learn about [method differences](migrate-azure-ad-graph-method-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
