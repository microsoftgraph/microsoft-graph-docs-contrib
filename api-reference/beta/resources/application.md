---
title: "application resource type"
description: "Represents an application."
ms.localizationpriority: high
author: "Jackson-Woods"
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 11/10/2025
ms.custom: sfi-ropc-nochange
---

# application resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application. Any application that outsources authentication to Microsoft Entra ID must be registered in the Microsoft identity platform. Application registration involves telling Microsoft Entra ID about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more. 

Inherits from [directoryObject](directoryobject.md).

This resource is an open type that allows additional properties beyond those documented here.

The [agentIdentityBlueprint](../resources/agentidentityblueprint.md) resource inherits from this object.

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.
- Alternate key syntax. The **appId** property is a supported alternate key.  For more information, see [Get application](../api/application-get.md).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List](../api/application-list.md) | [application](application.md) collection | Retrieve the list of applications in the organization. |
|[Create](../api/application-post-applications.md) | [application](application.md) | Creates (registers) a new application.|
|[Get](../api/application-get.md) | [application](application.md) |Read properties and relationships of application object.|
|[Update](../api/application-update.md) | None |Update application object. |
|[Upsert](../api/application-upsert.md) | [application](application.md) | Create a new application if it doesn't exist, or update the properties of an existing application.|
|[Delete](../api/application-delete.md) | None |Delete application object. |
|[Get delta](../api/application-delta.md)|[application](application.md) collection| Get incremental changes for applications. |
|**Deleted items**| | |
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted applications. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted application. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted application. |
|[Permanently delete](../api/directory-deleteditems-delete.md) | None | Permanently delete an application. |
| [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Retrieve the applications deleted in the tenant in the last 30 days and that are owned by a user. |
|**Certificates and secrets**| | |
|[Add password](../api/application-addpassword.md)|[passwordCredential](passwordcredential.md)|Add a strong password or secret to an application.|
|[Remove password](../api/application-removepassword.md)|[passwordCredential](passwordcredential.md)|Remove a password or secret from an application.|
|[Add key](../api/application-addkey.md)|[keyCredential](keycredential.md)|Add a key credential to an application.|
|[Remove key](../api/application-removekey.md)|None|Remove a key credential from an application.|
|**Owners**| | |
|[List](../api/application-list-owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of an application. |
|[Add](../api/application-post-owners.md) |[directoryObject](directoryobject.md)| Assign an owner to an application. Application owners can be users or service principals. |
|[Remove](../api/application-delete-owners.md) |None| Remove an owner from an application. As a recommended best practice, apps should have at least two owners.|
|**Verified publisher**| | |
|[Set](../api/application-setverifiedpublisher.md)| None | Set the verified publisher of an application.|
|[Unset](../api/application-unsetverifiedpublisher.md)| None | Unset the verified publisher of an application.|

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#application-properties).

| Property | Type | Description |
|:---------------|:--------|:----------|
| addIns | [addIn](addin.md) collection | Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [can set the addIns property](/onedrive/developer/file-handlers) for its "FileHandler" functionality. This lets services like Office 365 call the application in the context of a document the user is working on. |
| api | [apiApplication](apiapplication.md) | Specifies settings for an application that implements a web API. |
| appId | String | The unique identifier for the application that is assigned by Microsoft Entra ID. Not nullable. Read-only. Alternate key. Supports `$filter` (`eq`). |
|applicationTemplateId | String | Unique identifier of the [applicationTemplate](../resources/applicationtemplate.md). Supports `$filter` (`eq`, `not`, `ne`). Read-only. `null` if the app wasn't created from an application template.|
| appRoles | [appRole](approle.md) collection | The collection of roles defined for the application. With [app role assignments](approleassignment.md), these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable. |
|authenticationBehaviors|[authenticationBehaviors](../resources/authenticationbehaviors.md)| The collection of breaking change behaviors related to token issuance that are configured for the application. Authentication behaviors are unset by default (`null`) and must be explicitly enabled or disabled. Nullable. Returned only on `$select`. <br/><br/> For more information about authentication behaviors, see [Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization](/graph/applications-authenticationbehaviors).|
|certification|[certification](certification.md)|Specifies the certification status of the application.|
|createdByAppId|String|The globally unique **appId** (called **Application (client) ID** on the Microsoft Entra admin center) of the application that created this application. Set internally by Microsoft Entra ID. Read-only.|
| createdDateTime | DateTimeOffset | The date and time the application was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. <br><br> Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, and `eq` on `null` values) and `$orderby`. |
|defaultRedirectUri|String|The default redirect URI. If specified and there's no explicit redirect URI in the sign-in request for SAML and OIDC flows, Microsoft Entra ID sends the token to this redirect URI. Microsoft Entra ID also sends the token to this default URI in SAML IdP-initiated single sign-on. The value must match one of the configured redirect URIs for the application.|
| deletedDateTime | DateTimeOffset | The date and time the application was deleted. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
| description | String | Free text field to provide a description of the application object to end users. The maximum allowed size is 1,024 characters. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`) and `$search`. |
| disabledByMicrosoftStatus | String | Specifies whether Microsoft has disabled the registered application. The possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). <br><br> Supports `$filter` (`eq`, `ne`, `not`). |
| displayName | String | The display name for the application. Maximum length is 256 characters. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`. |
| groupMembershipClaims | String | Configures the `groups` claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following string values: `None`, `SecurityGroup` (for security groups and Microsoft Entra roles), `All` (this gets all security groups, distribution groups, and Microsoft Entra directory roles that the signed-in user is a member of). |
| id | String | Unique identifier for the application object. This property is referred to as **Object ID** in the Microsoft Entra admin center. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| identifierUris | String collection | Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you reference in your API's code, and it must be globally unique across Microsoft Entra ID. For more information on valid identifierUris patterns and best practices, see [Microsoft Entra application registration security best practices](/entra/identity-platform/security-best-practices-for-app-registration#application-id-uri-also-known-as-identifier-uri). Not nullable. <br><br>Supports `$filter` (`eq`, `ne`, `ge`, `le`, `startsWith`). |
| info | [informationalUrl](informationalurl.md) | Basic profile information of the application, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see [How to: Add Terms of service and privacy statement for registered Microsoft Entra apps](/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement). <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, and `eq` on `null` values). |
| isDeviceOnlyAuthSupported | Boolean | Specifies whether this application supports device authentication without a user. The default is `false`.  |
| isDisabled | Boolean | Specifies whether the service principal of the app in a tenant or across tenants for multi-tenant apps can obtain new access tokens or access protected resources. When set to `true`, existing tokens remain valid until they expire based on their configured lifetimes, and the app stays visible in the Enterprise apps list but users cannot sign in.`true` if the application is deactivated (disabled); otherwise `false`.|
| isFallbackPublicClient | Boolean | Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is `false`, which means the fallback application type is confidential client such as a web app. There are certain scenarios where Microsoft Entra ID can't determine the client application type. For example, the [ROPC](https://tools.ietf.org/html/rfc6749#section-4.3) flow where the application is configured without specifying a redirect URI. In those cases Microsoft Entra ID interprets the application type based on the value of this property.|
| keyCredentials | [keyCredential](keycredential.md) collection | The collection of key credentials associated with the application. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`).|
| logo | Stream | The main logo for the application. Not nullable. |
| nativeAuthenticationApisEnabled | nativeAuthenticationApisEnabled | Specifies whether the Native Authentication APIs are enabled for the application. The possible values are: `none`and `all`. Default is `none`. For more information, see [Native Authentication](/entra/external-id/customers/concept-native-authentication). |
| notes | String | Notes relevant for the management of the application. |
| oauth2RequiredPostResponse | Boolean | Specifies whether, as part of OAuth 2.0 token requests, Microsoft Entra ID allows POST requests, as opposed to GET requests. The default is `false`, which specifies that only GET requests are allowed. |
| onPremisesPublishing |[onPremisesPublishing](onpremisespublishing.md)| Represents the set of properties required for [configuring Application Proxy](/graph/application-proxy-configure-api) for this application. Configuring these properties allows you to publish your on-premises application for secure remote access. |
| optionalClaims | [optionalClaims](optionalclaims.md) | Application developers can configure optional claims in their Microsoft Entra applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see [How to: Provide optional claims to your app](/azure/active-directory/develop/active-directory-optional-claims).|
| parentalControlSettings | [parentalControlSettings](parentalcontrolsettings.md) |Specifies parental control settings for an application. |
| passwordCredentials | [passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
| publicClient | [publicClientApplication](publicclientapplication.md) | Specifies settings for installed clients such as desktop or mobile devices. |
| publisherDomain | String | The verified publisher domain for the application. Read-only. Supports `$filter` (`eq`, `ne`, `ge`, `le`, `startsWith`).|
| requestSignatureVerification | [requestSignatureVerification](requestsignatureverification.md)| Specifies whether this application requires Microsoft Entra ID to verify the signed authentication requests.|
| requiredResourceAccess |[requiredResourceAccess](requiredresourceaccess.md) collection| Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. <br/><br/>No more than 50 resource services (APIs) can be configured. Beginning mid-October 2021, the total number of required permissions must not exceed 400. For more information, see [Limits on requested permissions per app](#limits-on-requested-permissions-per-app). Not nullable. <br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`).|
| samlMetadataUrl | String | The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant applications. Nullable. |
| serviceManagementReference | String | References application or service contact information from a Service or Asset Management database. Nullable. |
| signInAudience | String | Specifies the Microsoft accounts that are supported for the current application. The possible values are: `AzureADMyOrg` (default), `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount`, and `PersonalMicrosoftAccount`. See more in the [table](#signinaudience-values). <br/><br/>The value of this object also limits the number of permissions an app can request. For more information, see [Limits on requested permissions per app](#limits-on-requested-permissions-per-app). <br><br>The value for this property has implications on other app object properties. As a result, if you change this property, you may need to change other properties first. For more information, see [Validation differences for signInAudience](/azure/active-directory/develop/supported-accounts-validation?context=graph/context).<br><br>Supports `$filter` (`eq`, `ne`, `not`).|
| signInAudienceRestrictions | [signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md) | Specifies restrictions on the supported account types specified in **signInAudience**. The value type determines the restrictions that can be applied:<ul><li>[unrestrictedAudience](../resources/unrestrictedaudience.md): There are no additional restrictions on the supported account types allowed by **signInAudience**.</li><li>[allowedTenantsAudience](../resources/allowedtenantsaudience.md): The application can only be used in the specified Entra tenants. Only supported when **signInAudience** is `AzureADMultipleOrgs`.</li></ul> Default is a value of type [unrestrictedAudience](../resources/unrestrictedaudience.md). Returned only on `$select`.|
| servicePrincipalLockConfiguration | [servicePrincipalLockConfiguration](servicePrincipalLockConfiguration.md) | Specifies whether sensitive properties of a multitenant application should be locked for editing after the application is provisioned in a tenant. Nullable. `null` by default. |
| spa                     | [spaApplication](../resources/spaapplication.md)                            | Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens. |
| tags |String collection| Custom strings that can be used to categorize and identify the application. Not nullable. Strings added here also appear in the **tags** property of any associated [service principals](serviceprincipal.md).<br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`) and `$search`.|
| tokenEncryptionKeyId |Guid|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.|
| uniqueName | String | The unique identifier that can be assigned to an application and used as an alternate key. Immutable. Read-only. |
| verifiedPublisher          | [verifiedPublisher](verifiedPublisher.md)                            | Specifies the verified publisher of the application. For more information about how publisher verification helps support application security, trustworthiness, and compliance, see [Publisher verification](/azure/active-directory/develop/publisher-verification-overview).|
| web |[webApplication](webapplication.md)| Specifies settings for a web application. |
| windows |[windowsApplication](windowsapplication.md)| Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.|

### signInAudience values

| Value | Description |
|:---------------|:--------|
|AzureADMyOrg|Users with a Microsoft work or school account in my organization's Microsoft Entra tenant (single-tenant). This is the default value for the **signInAudience** property.|
|AzureADMultipleOrgs|Users with a Microsoft work or school account in any organization's Microsoft Entra tenant (multitenant).|
|AzureADandPersonalMicrosoftAccount|Users with a personal Microsoft account, or a work or school account in any organization's Microsoft Entra tenant. For authenticating users with Azure AD B2C user flows, use `AzureADandPersonalMicrosoftAccount`. This value allows for the widest set of user identities including local accounts and user identities from Microsoft, Facebook, Google, Twitter, or any OpenID Connect provider. |
|PersonalMicrosoftAccount|Users with a personal Microsoft account only.|

### Limits on requested permissions per app

[!INCLUDE [microsoft-graph-permissions-limits](../../../concepts/includes/msgraph-permissions-limits.md)]

## Relationships

> [!IMPORTANT]
> Specific usage of the `$filter` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#user-properties).

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|appManagementPolicies|[appManagementPolicy](../resources/appManagementPolicy.md) collection| The appManagementPolicy applied to this application.|
|calls           |[call](call.md) collection                  |Read-only. Nullable.|
|connectorGroup|[connectorGroup](connectorgroup.md)| The connectorGroup the application is using with Microsoft Entra application proxy. Nullable.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Supports `$filter` (`/$count eq 0`, `/$count ne 0`). Read-only.|
|extensionProperties|[extensionProperty](extensionproperty.md) collection| Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`).|
|federatedIdentityCredentials|[federatedIdentityCredential](federatedidentitycredential.md) collection |Federated identities for applications. Supports `$expand` and `$filter` (`startsWith`, `/$count eq 0`, `/$count ne 0`).|
|onlineMeetings  |[onlineMeeting](onlinemeeting.md) collection|Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection| Directory objects that are owners of this application. The owners are a set of nonadmin users or service principals allowed to modify this object. Read-only. Nullable. Supports `$expand`, `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`), and `$select` nested in `$expand`.|
|synchronization | [synchronization](synchronization-synchronization.md)| Represents the capability for Microsoft Entra identity synchronization through the Microsoft Graph API. | 
|tokenLifetimePolicies|[tokenLifetimePolicy](tokenLifetimePolicy.md) collection|The tokenLifetimePolicies assigned to this application. Supports `$expand`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
    "createdOnBehalfOf",
    "owners"
  ],
  "@odata.type": "microsoft.graph.application"
}-->

```json
{
  "addIns": [{"@odata.type": "microsoft.graph.addIn"}],
  "api": {"@odata.type": "microsoft.graph.apiApplication"},
  "appId": "String",
  "applicationTemplateId": "String",
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
  "authenticationBehaviors": {"@odata.type": "microsoft.graph.authenticationBehaviors"},
  "certification": {"@odata.type": "microsoft.graph.certification"},
  "createdDateTime": "String (timestamp)",
  "createdByAppId": "String",
  "deletedDateTime": "String (timestamp)",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "groupMembershipClaims": "String",
  "id": "String (identifier)",
  "identifierUris": ["String"],
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "isDeviceOnlyAuthSupported": false,
  "isDisabled": "Boolean",
  "isFallbackPublicClient": false,
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logo": "Stream",
  "nativeAuthenticationApisEnabled": "String",
  "notes": "String",
  "oauth2RequiredPostResponse": false,
  "optionalClaims": {"@odata.type": "microsoft.graph.optionalClaims"},
  "parentalControlSettings": {"@odata.type": "microsoft.graph.parentalControlSettings"},
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "publicClient": {"@odata.type": "microsoft.graph.publicClientApplication"},
  "publisherDomain": "String",  
  "requestSignatureVerification": {"@odata.type": "microsoft.graph.requestSignatureVerification"},
  "requiredResourceAccess": [{"@odata.type": "microsoft.graph.requiredResourceAccess"}],
  "servicePrincipalLockConfiguration": {"@odata.type": "microsoft.graph.servicePrincipalLockConfiguration"},
  "serviceManagementReference": "String",
  "signInAudience": "String",
  "signInAudienceRestrictions": {
    "@odata.type": "microsoft.graph.signInAudienceRestrictionsBase"
  },
  "spa": {"@odata.type": "microsoft.graph.spaApplication"},
  "tags": ["String"],
  "tokenEncryptionKeyId": "String",
  "uniqueName": "String",
  "verifiedPublisher": {"@odata.type": "microsoft.graph.verifiedPublisher"},
  "web": {"@odata.type": "microsoft.graph.webApplication"},
  "windows": {"@odata.type": "microsoft.graph.windowsApplication"}
}
```

## Related content

- [The Microsoft Entra app manifest](/entra/identity-platform/reference-app-manifest)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
