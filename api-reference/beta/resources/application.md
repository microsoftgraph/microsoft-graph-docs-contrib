---
title: "application resource type"
description: "Represents an application."
ms.localizationpriority: high
author: "sureshja"
ms.prod: "applications"
doc_type: resourcePageType
---

# application resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application. Any application that outsources authentication to Azure Active Directory (Azure AD) must be registered in a directory. Application registration involves telling Azure AD about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more. For more information, see [Basics of Registering an Application in Azure AD](/azure/active-directory/develop/authentication-vs-authorization#basics-of-registering-an-application-in-azure-ad). Inherits from [directoryObject](directoryobject.md).

This resource is an open type that allows other properties to be passed in.

> [!Note]
> Changes to the application resource type are currently in development. For more information, see [Known issues with Microsoft Graph](/graph/known-issues#application-and-serviceprincipal-api-changes).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.
- Alternate key syntax.  The `appId` property is a supported alternate key.  For more information, see [Get application](../api/application-get.md).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List applications](../api/application-list.md) | [application](application.md) collection | Retrieve the list of applications in the organization. |
|[Create application](../api/application-post-applications.md) | [application](application.md) | Creates (registers) a new application.|
|[Get application](../api/application-get.md) | [application](application.md) |Read properties and relationships of application object.|
|[Update application](../api/application-update.md) | None |Update application object. |
|[Delete application](../api/application-delete.md) | None |Delete application object. |
|[List deleted applications](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted applications. |
| [List deleted applications owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Retrieve the applications deleted in the tenant in the last 30 days and that are owned by a user. |
|[Get deleted application](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted application. |
|[Permanently delete application](../api/directory-deleteditems-delete.md) | None | Permanently delete an applications. |
|[Restore deleted application](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted application. |
|[delta](../api/application-delta.md)|[application](application.md) collection| Get incremental changes for applications. |
|[Create call](../api/application-post-calls.md)|[call](call.md)|Create a new call by posting to the calls collection.|
|[Create online meeting](../api/application-post-onlinemeetings.md)|[onlineMeeting](onlinemeeting.md)|Create a new online meeting by posting to the onlineMeetings collection.|
|**Certificates and secrets**| | |
|[Add password](../api/application-addpassword.md)|[passwordCredential](passwordcredential.md)|Add a strong password or secret to an application.|
|[Remove password](../api/application-removepassword.md)|[passwordCredential](passwordcredential.md)|Remove a password or secret from an application.|
|[Add key](../api/application-addkey.md)|[keyCredential](keycredential.md)|Add a key credential to an application.|
|[Remove key](../api/application-removekey.md)|None|Remove a key credential from an application.|
|**Extensions**| | |
| [List extensionProperties](../api/application-list-extensionproperty.md) | [extensionProperty](extensionProperty.md) collection | List extension properties on an application object. |
| [Create extensionProperties](../api/application-post-extensionproperty.md) | [extensionProperty](extensionProperty.md) | Create an extension property on an application object. |
| [Get extensionProperty](../api/extensionproperty-delete.md) | None | Get an extension property from an application object. |
| [Delete extensionProperty](../api/extensionproperty-delete.md) | None | Delete an extension property from an application object. |
|**Federated identity credentials**| | |
| [List federatedIdentityCredential](../api/application-list-federatedidentitycredentials.md) | [federatedIdentityCredential](../resources/federatedidentitycredential.md) collection | List federated identity credentials on an application object. |
| [Create federatedIdentityCredential](../api/application-post-federatedidentitycredentials.md) | [federatedIdentityCredential](../resources/federatedidentitycredential.md) | Create a federated identity credential on an application object. |
| [Get federatedIdentityCredential](../api/federatedidentitycredential-get.md) | [federatedIdentityCredential](../resources/federatedidentitycredential.md) | Retrieve the properties of a federated identity credential. |
| [Update federatedIdentityCredential](../api/federatedidentitycredential-update.md) | None | Update a federated identity credential of an application object. |
| [Delete federatedIdentityCredential](../api/federatedidentitycredential-delete.md) | None | Delete a federated identity credential from an application object. |
|**Owners**| | |
|[List owners](../api/application-list-owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of an application. |
|[Add owner](../api/application-post-owners.md) |[directoryObject](directoryobject.md)| Assign an owner to an application. Application owners can be users or service principals. |
|[Remove owner](../api/application-delete-owners.md) |None| Remove an owner from an application. As a recommended best practice, apps should have at least two owners.|
|**Policies**| | |
|[Assign tokenIssuancePolicy](../api/application-post-tokenissuancepolicies.md)| [tokenIssuancePolicy](tokenissuancepolicy.md) collection| Assign a tokenIssuancePolicy to this object.|
|[List tokenIssuancePolicies](../api/application-list-tokenissuancepolicies.md)| [tokenIssuancePolicy](tokenissuancepolicy.md) collection| Get all tokenIssuancePolicies assigned to this object.|
|[Remove tokenIssuancePolicy](../api/application-delete-tokenissuancepolicies.md)| [tokenIssuancePolicy](tokenissuancepolicy.md) collection| Remove a tokenIssuancePolicy from this object.|
|[Assign tokenLifetimePolicy](../api/application-post-tokenlifetimepolicies.md)| [tokenLifetimePolicy](tokenlifetimepolicy.md) collection| Assign a tokenLifetimePolicy to this object.|
|[List tokenLifetimePolicies](../api/application-list-tokenlifetimepolicies.md)| [tokenLifetimePolicy](tokenlifetimepolicy.md) collection| Get all tokenLifetimePolicies assigned to this object.|
|[Remove tokenLifetimePolicy](../api/application-delete-tokenlifetimepolicies.md)| [tokenLifetimePolicy](tokenlifetimepolicy.md) collection| Remove a tokenLifetimePolicy from this object.|
|**Verified publisher**| | |
|[Set verified publisher](../api/application-setverifiedpublisher.md)| None | Set the verified publisher of an application.|
|[Unset verified publisher](../api/application-unsetverifiedpublisher.md)| None | Unset the verified publisher of an application.|

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries#application-properties).

| Property | Type | Description |
|:---------------|:--------|:----------|
| addIns | [addIn](addin.md) collection | Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may set the addIns property](/onedrive/developer/file-handlers) for its "FileHandler" functionality. This will let services like Office 365 call the application in the context of a document the user is working on. |
| api | [apiApplication](apiapplication.md) | Specifies settings for an application that implements a web API. |
| appId | String | The unique identifier for the application that is assigned by Azure AD. Not nullable. Read-only. Supports `$filter` (`eq`). |
|applicationTemplateId | String | Unique identifier of the applicationTemplate. Supports `$filter` (`eq`, `not`, `ne`).|
| appRoles | [appRole](approle.md) collection | The collection of roles defined for the application. With [app role assignments](approleassignment.md), these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable. |
|certification|[certification](certification.md)|Specifies the certification status of the application.|
| createdDateTime | DateTimeOffset | The date and time the application was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. <br><br> Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, and `eq` on `null` values) and `$orderBy`. |
|defaultRedirectUri|String|The default redirect URI. If specified and there is no explicit redirect URI in the sign-in request for SAML and OIDC flows, Azure AD sends the token to this redirect URI. Azure AD also sends the token to this default URI in SAML IdP-initiated single sign-on. The value must match one of the configured redirect URIs for the application.|
| deletedDateTime | DateTimeOffset | The date and time the application was deleted. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
| description | String | Free text field to provide a description of the application object to end users. The maximum allowed size is 1024 characters. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`) and `$search`. |
| disabledByMicrosoftStatus | String | Specifies whether Microsoft has disabled the registered application. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). <br><br> Supports `$filter` (`eq`, `ne`, `not`). |
| displayName | String | The display name for the application. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderBy`. |
| groupMembershipClaims | String | Configures the `groups` claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following string values: `None`, `SecurityGroup` (for security groups and Azure AD roles), `All` (this gets all security groups, distribution groups, and Azure AD directory roles that the signed-in user is a member of). |
| id | String | Unique identifier for the application object. This property is referred to as **Object ID** in the Azure portal. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| identifierUris | String collection | Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you'll reference in your API's code, and it must be globally unique. You can use the default value provided, which is in the form `api://<application-client-id>`, or specify a more readable URI like `https://contoso.com/api`. For more information on valid identifierUris patterns and best practices, see [Azure AD application registration security best practices](/azure/active-directory/develop/security-best-practices-for-app-registration#appid-uri-configuration). Not nullable. <br><br>Supports `$filter` (`eq`, `ne`, `ge`, `le`, `startsWith`). |
| info | [informationalUrl](informationalurl.md) | Basic profile information of the application, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see [How to: Add Terms of service and privacy statement for registered Azure AD apps](/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement). <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, and `eq` on `null` values). |
| isDeviceOnlyAuthSupported | Boolean | Specifies whether this application supports device authentication without a user. The default is `false`.  |
| isFallbackPublicClient | Boolean | Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is `false` which means the fallback application type is confidential client such as a web app. There are certain scenarios where Azure AD cannot determine the client application type. For example, the [ROPC](https://tools.ietf.org/html/rfc6749#section-4.3) flow where the application is configured without specifying a redirect URI. In those cases Azure AD interprets the application type based on the value of this property.|
| keyCredentials | [keyCredential](keycredential.md) collection | The collection of key credentials associated with the application. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`).|
| logo | Stream | The main logo for the application. Not nullable. |
| notes | String | Notes relevant for the management of the application. |
| oauth2RequiredPostResponse | Boolean | Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. The default is `false`, which specifies that only GET requests are allowed. |
| onPremisesPublishing |[onPremisesPublishing](onpremisespublishing.md)| Represents the set of properties required for [configuring Application Proxy](/graph/application-proxy-configure-api) for this application. Configuring these properties allows you to publish your on-premises application for secure remote access. |
| optionalClaims | [optionalClaims](optionalclaims.md) | Application developers can configure optional claims in their Azure AD applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see [How to: Provide optional claims to your app](/azure/active-directory/develop/active-directory-optional-claims).|
| parentalControlSettings | [parentalControlSettings](parentalcontrolsettings.md) |Specifies parental control settings for an application. |
| passwordCredentials | [passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
| publicClient | [publicClientApplication](publicclientapplication.md) | Specifies settings for installed clients such as desktop or mobile devices. |
| publisherDomain | String | The verified publisher domain for the application. Read-only. Supports `$filter` (`eq`, `ne`, `ge`, `le`, `startsWith`).|
| requestSignatureVerification | [requestSignatureVerification](requestsignatureverification.md)| Specifies whether this application requires Azure AD to verify the signed authentication requests.|
| requiredResourceAccess |[requiredResourceAccess](requiredresourceaccess.md) collection| Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. <br/><br/>No more than 50 resource services (APIs) can be configured. Beginning mid-October 2021, the total number of required permissions must not exceed 400. For more information, see [Limits on requested permissions per app](#limits-on-requested-permissions-per-app). Not nullable. <br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`).|
| samlMetadataUrl | String | The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant applications. Nullable. |
| serviceManagementReference | String | References application or service contact information from a Service or Asset Management database. Nullable. |
| signInAudience | String | Specifies the Microsoft accounts that are supported for the current application. The possible values are: `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` (default), and `PersonalMicrosoftAccount`. See more in the [table](#signinaudience-values). <br/><br/>The value of this object also limits the number of permissions an app can request. For more information, see [Limits on requested permissions per app](#limits-on-requested-permissions-per-app). <br><br>The value for this property has implications on other app object properties. As a result, if you change this property, you may need to change other properties first. For more information, see [Validation differences for signInAudience](/azure/active-directory/develop/supported-accounts-validation?context=graph/context).<br><br>Supports `$filter` (`eq`, `ne`, `not`).|
| servicePrincipalLockConfiguration | [servicePrincipalLockConfiguration](servicePrincipalLockConfiguration.md) | Specifies whether sensitive properties of a multi-tenant application should be locked for editing after the application is provisioned in a tenant. Nullable. `null` by default. |
| spa                     | [spaApplication](../resources/spaapplication.md)                            | Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens. |
| tags |String collection| Custom strings that can be used to categorize and identify the application. Not nullable. Strings added here will also appear in the **tags** property of any associated [service principals](serviceprincipal.md).<br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
| tokenEncryptionKeyId |Guid|Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.|
| verifiedPublisher          | [verifiedPublisher](verifiedPublisher.md)                            | Specifies the verified publisher of the application. For more information about how publisher verification helps support application security, trustworthiness, and compliance, see [Publisher verification](/azure/active-directory/develop/publisher-verification-overview).|
| uniqueName | String | The unique identifier that can be assigned to an application as an alternative identifier. Immutable. Read-only. |
| web |[webApplication](webapplication.md)| Specifies settings for a web application. |
| windows |[windowsApplication](windowsapplication.md)| Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.|

### signInAudience values

| Value | Description |
|:---------------|:--------|
|AzureADMyOrg|Users with a Microsoft work or school account in my organization’s Azure AD tenant (single-tenant).|
|AzureADMultipleOrgs|Users with a Microsoft work or school account in any organization’s Azure AD tenant (multi-tenant).|
|AzureADandPersonalMicrosoftAccount|Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant. For authenticating users with Azure AD B2C user flows, use `AzureADandPersonalMicrosoftAccount`. This value allows for the widest set of user identities including local accounts and user identities from Microsoft, Facebook, Google, Twitter, or any OpenID Connect provider. This is the default value for the **signInAudience** property.|
|PersonalMicrosoftAccount|Users with a personal Microsoft account only.|

### Limits on requested permissions per app

[!INCLUDE [microsoft-graph-permissions-limits](../../../concepts/includes/msgraph-permissions-limits.md)]

## Relationships

> [!IMPORTANT]
> Specific usage of the `$filter` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries#user-properties).

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|appManagementPolicies|[appManagementPolicy](../resources/appManagementPolicy.md) collection| The appManagementPolicy applied to this application.|
|calls           |[call](call.md) collection                  |Read-only. Nullable.|
|connectorGroup|[connectorGroup](connectorgroup.md)| The connectorGroup the application is using with Azure AD Application Proxy. Nullable.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Supports `$filter` (`/$count eq 0`, `/$count ne 0`). Read-only.|
|extensionProperties|[extensionProperty](extensionproperty.md) collection| Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`).|
|federatedIdentityCredentials|[federatedIdentityCredential](federatedidentitycredential.md) collection |Federated identities for applications. Supports `$expand` and `$filter` (`startsWith`, `/$count eq 0`, `/$count ne 0`).|
|onlineMeetings  |[onlineMeeting](onlinemeeting.md) collection|Read-only. Nullable.|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of the application. Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`).|
|synchronization | [synchronization](synchronization-synchronization.md)| Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API. | 
|tokenLifetimePolicies|[tokenLifetimePolicy](tokenLifetimePolicy.md) collection|The tokenLifetimePolicies assigned to this application. Supports `$expand`.|

## JSON representation

The following is a JSON representation of the resource.

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
  "certification": {"@odata.type": "microsoft.graph.certification"},
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "groupMembershipClaims": "String",
  "id": "String (identifier)",
  "identifierUris": ["String"],
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "isDeviceOnlyAuthSupported": false,
  "isFallbackPublicClient": false,
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logo": "Stream",
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
  "spa": {"@odata.type": "microsoft.graph.spaApplication"},
  "tags": ["String"],
  "tokenEncryptionKeyId": "String",
  "uniqueName": "String",
  "verifiedPublisher": {"@odata.type": "microsoft.graph.verifiedPublisher"},
  "web": {"@odata.type": "microsoft.graph.webApplication"},
  "windows": {"@odata.type": "microsoft.graph.windowsApplication"}
}
```

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
