---
title: "servicePrincipal resource type"
description: "Represents an instance of an application in a directory. Inherits from directoryObject."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 10/01/2024
---

# servicePrincipal resource type

Namespace: microsoft.graph

Represents an instance of an application in a directory. Inherits from [directoryObject](directoryobject.md).

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/serviceprincipal-delta.md) function. This resource is an open type that allows other properties to be passed in.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List](../api/serviceprincipal-list.md) | [servicePrincipal](serviceprincipal.md) collection | Retrieve a list of servicePrincipal objects. |
|[Create](../api/serviceprincipal-post-serviceprincipals.md)| [servicePrincipal](serviceprincipal.md) | Creates a new servicePrincipal object. |
|[Get](../api/serviceprincipal-get.md) | [servicePrincipal](serviceprincipal.md) |Read properties and relationships of servicePrincipal object.|
|[Update](../api/serviceprincipal-update.md) | [servicePrincipal](serviceprincipal.md)  |Update servicePrincipal object. |
|[Upsert](../api/serviceprincipal-upsert.md) | [servicePrincipal](serviceprincipal.md) | Create a new servicePrincipal if it doesn't exist, or update the properties of an existing servicePrincipal.|
|[Delete](../api/serviceprincipal-delete.md) | None |Delete servicePrincipal object.|
|[Get delta](../api/serviceprincipal-delta.md)|servicePrincipal collection| Get incremental changes for service principals. |
|[List created objects](../api/serviceprincipal-list-createdobjects.md) |[directoryObject](directoryobject.md) collection| Get a createdObject object collection.|
|[List owned objects](../api/serviceprincipal-list-ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get an ownedObject object collection.|
|**Deleted items**| | |
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted servicePrincipal objects. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted servicePrincipal object. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted servicePrincipal object. |
|[Permanently delete](../api/directory-deleteditems-delete.md) | None | Permanently delete a servicePrincipal object. |
|**App role assignments**| | |
|[List appRoleAssignments](../api/serviceprincipal-list-approleassignments.md) |[appRoleAssignment](approleassignment.md) collection| Get the app roles that this service principal is assigned.|
|[Add appRoleAssignment](../api/serviceprincipal-post-approleassignments.md) |[appRoleAssignment](approleassignment.md)| Assign an app role to this service principal.|
|[Remove appRoleAssignment](../api/serviceprincipal-delete-approleassignments.md) | None | Remove an app role assignment from this service principal.|
|[List appRoleAssignedTo](../api/serviceprincipal-list-approleassignedto.md) |[appRoleAssignment](approleassignment.md) collection| Get the users, groups, and service principals assigned app roles for this service principal.|
|[Add appRoleAssignedTo](../api/serviceprincipal-post-approleassignedto.md) |[appRoleAssignment](approleassignment.md)| Assign an app role for this service principal to a user, group, or service principal.|
|[Remove appRoleAssignedTo](../api/serviceprincipal-delete-approleassignedto.md) | None | Remove an app role assignment for this service principal from a user, group, or service principal.|
|**Certificates and secrets**| | |
|[Add password](../api/serviceprincipal-addpassword.md)|[passwordCredential](passwordcredential.md)|Add a strong password or secret to a servicePrincipal.|
|[Remove password](../api/serviceprincipal-removepassword.md)|[passwordCredential](passwordcredential.md)|Remove a password or secret from a servicePrincipal.|
|[Add key](../api/serviceprincipal-addkey.md)|[keyCredential](keycredential.md)|Add a key credential to a servicePrincipal.|
|[Remove key](../api/serviceprincipal-removekey.md)|None|Remove a key credential from a servicePrincipal.|
|[Add token signing certificate](../api/serviceprincipal-addtokensigningcertificate.md)|[selfSignedCertificate](../resources/selfsignedcertificate.md)| Add a self-signed certificate to the service principal. Mostly used to configure SAML-based SSO applications from the [Microsoft Entra gallery](/azure/active-directory/saas-apps/tutorial-list).
|**Delegated permission classifications**| | |
|[List](../api/serviceprincipal-list-delegatedpermissionclassifications.md) |[delegatedPermissionClassification](delegatedpermissionclassification.md) collection| Get the permission classifications for delegated permissions exposed by this service principal.|
|[Add](../api/serviceprincipal-post-delegatedpermissionclassifications.md) |[delegatedPermissionClassification](delegatedpermissionclassification.md) | Add a permission classification for a delegated permission exposed by this service principal. |
|[Remove](../api/serviceprincipal-delete-delegatedpermissionclassifications.md) | None | Remove a permission classification for a delegated permission exposed by this service principal.|
|**Delegated (OAuth2) permission grants**| | |
|[List](../api/serviceprincipal-list-oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md) collection| Get the delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user.|
|**Membership**| | |
|[List memberOf](../api/serviceprincipal-list-memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups that this service principal is a direct member of from the memberOf navigation property.|
|[List transitive member of](../api/serviceprincipal-list-transitivememberof.md) |[directoryObject](directoryobject.md) collection| List the groups that this service principal is a member of. This operation is transitive and includes the groups that this service principal is a nested member of. |
|[Check member groups](../api/directoryobject-checkmembergroups.md)|String collection|Check for membership in a specified list of groups.|
|[Check member objects](../api/directoryobject-checkmemberobjects.md)|String collection|Check for membership in a specified list of group, directory role, or administrative unit objects.|
|[Get member groups](../api/directoryobject-getmembergroups.md)|String collection|Get the list of groups that this service principal is a member of.|
|[Get member objects](../api/directoryobject-getmemberobjects.md)|String collection|Get the list of groups, administrative units, and directory roles that this service principal is a member of.|
|**Owners**| | |
|[List](../api/serviceprincipal-list-owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of a service principal.|
|[Add](../api/serviceprincipal-post-owners.md) |[directoryObject](directoryobject.md)| Assign an owner to a service principal. Service principal owners can be users or other service principals.|
|[Remove](../api/serviceprincipal-delete-owners.md) |None| Remove an owner from a service principal. As a recommended best practice, service principals should have at least two owners.|

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#service-principal-properties).

| Property     | Type |Description|
|:---------------|:--------|:----------|
| accountEnabled |Boolean| `true` if the service principal account is enabled; otherwise, `false`. If set to `false`, then no users are able to sign in to this app, even if they're assigned to it. Supports `$filter` (`eq`, `ne`, `not`, `in`).|
| addIns | [addIn](addin.md) collection | Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may set the addIns property](/onedrive/developer/file-handlers/?view=odsp-graph-online&preserve-view=true) for its "FileHandler" functionality. This lets services like Microsoft 365 call the application in the context of a document the user is working on.|
|alternativeNames|String collection| Used to retrieve service principals by subscription, identify resource group and full resource IDs for [managed identities](/azure/active-directory/managed-identities-azure-resources/overview). Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
|appDescription|String|The description exposed by the associated application.|
|appDisplayName|String|The display name exposed by the associated application. Maximum length is 256 characters.|
|appId|String|The unique identifier for the associated application (its **appId** property). Alternate key. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`).|
|applicationTemplateId|String|Unique identifier of the [applicationTemplate](../resources/applicationtemplate.md). Supports `$filter` (`eq`, `not`, `ne`). Read-only. `null` if the service principal wasn't created from an application template.|
|appOwnerOrganizationId|Guid|Contains the tenant ID where the application is registered. This is applicable only to service principals backed by applications. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`).|
|appRoleAssignmentRequired|Boolean|Specifies whether users or other service principals need to be granted an app role assignment for this service principal before users can sign in or apps can get tokens. The default value is `false`. Not nullable. <br><br>Supports `$filter` (`eq`, `ne`, `NOT`). |
|appRoles|[appRole](approle.md) collection|The roles exposed by the application that's linked to this service principal. For more information, see the **appRoles** property definition on the [application](application.md) entity. Not nullable. |
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. <br><br>Returned only on `$select`. Supports `$filter` (`eq`, `ne`, `not`, `startsWith`). Filter value is case sensitive. <br><li>To read this property, the calling app must be assigned the *CustomSecAttributeAssignment.Read.All* permission. To write this property, the calling app must be assigned the *CustomSecAttributeAssignment.ReadWrite.All* permissions. <li>To read or write this property in delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role.|
| deletedDateTime | DateTimeOffset | The date and time the service principal was deleted. Read-only. |
| description | String | Free text field to provide an internal end-user facing description of the service principal. End-user portals such [MyApps](/azure/active-directory/user-help/my-apps-portal-end-user-access) displays the application description in this field. The maximum allowed size is 1,024 characters. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`) and `$search`.|
| disabledByMicrosoftStatus | String | Specifies whether Microsoft has disabled the registered application. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). <br><br> Supports `$filter` (`eq`, `ne`, `not`).  |
|displayName|String|The display name for the service principal. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`. |
|homepage|String|Home page or landing page of the application.|
|id|String|The unique identifier for the service principal. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`).|
| info | [informationalUrl](informationalurl.md) | Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more info, see How to: [Add Terms of service and privacy statement for registered Microsoft Entra apps](/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement). <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, and `eq` on `null` values).  |
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the service principal. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`).            |
|loginUrl|String|Specifies the URL where the service provider redirects the user to Microsoft Entra ID to authenticate. Microsoft Entra ID uses the URL to launch the application from Microsoft 365 or the Microsoft Entra My Apps. When blank, Microsoft Entra ID performs IdP-initiated sign-on for applications configured with [SAML-based single sign-on](/azure/active-directory/manage-apps/what-is-single-sign-on#saml-sso). The user launches the application from Microsoft 365, the Microsoft Entra My Apps, or the Microsoft Entra SSO URL.|
|logoutUrl|String| Specifies the URL that the Microsoft's authorization service uses to sign out a user using OpenID Connect [front-channel](https://openid.net/specs/openid-connect-frontchannel-1_0.html), [back-channel](https://openid.net/specs/openid-connect-backchannel-1_0.html), or SAML sign out protocols.|
|notes|String|Free text field to capture information about the service principal, typically used for operational purposes. Maximum allowed size is 1,024 characters.|
|notificationEmailAddresses|String collection|Specifies the list of email addresses where Microsoft Entra ID sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Microsoft Entra Gallery applications.|
|oauth2PermissionScopes|[permissionScope](permissionScope.md) collection|The delegated permissions exposed by the application. For more information, see the **oauth2PermissionScopes** property on the [application](application.md) entity's **api** property. Not nullable.|
| passwordCredentials | [passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
|preferredSingleSignOnMode|string|Specifies the single sign-on mode configured for this application. Microsoft Entra ID uses the preferred single sign-on mode to launch the application from Microsoft 365 or the My Apps portal. The supported values are `password`, `saml`, `notSupported`, and `oidc`. **Note:** This field might be `null` for older SAML apps and for OIDC applications where it isn't set automatically.|
|preferredTokenSigningKeyThumbprint|String|This property can be used on SAML applications (apps that have **preferredSingleSignOnMode** set to `saml`) to control which certificate is used to sign the SAML responses. For applications that aren't SAML, don't write or otherwise rely on this property.|
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable. |
|resourceSpecificApplicationPermissions|[resourceSpecificPermission](../resources/resourcespecificpermission.md) collection|The resource-specific application permissions exposed by this application. Currently, resource-specific permissions are only supported for [Teams apps accessing to specific chats and teams](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) using Microsoft Graph. Read-only.|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](samlsinglesignonsettings.md)|The collection for settings related to saml single sign-on.|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated [application](application.md). Additional values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Microsoft Entra ID. For example,<ul><li>Client apps can specify a resource URI that is based on the values of this property to acquire an access token, which is the URI returned in the "aud" claim.</li></ul><br>The any operator is required for filter expressions on multi-valued properties. Not nullable. <br><br> Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
|servicePrincipalType|String|Identifies whether the service principal represents an application, a managed identity, or a legacy application. This is set by Microsoft Entra ID internally. The **servicePrincipalType** property can be set to three different values: <ul><li>__Application__ - A service principal that represents an application or service. The **appId** property identifies the associated app registration, and matches the **appId** of an [application](application.md), possibly from a different tenant. If the associated app registration is missing, tokens aren't issued for the service principal.</li><li>__ManagedIdentity__ - A service principal that represents a [managed identity](/azure/active-directory/managed-identities-azure-resources/overview). Service principals representing managed identities can be granted access and permissions, but can't be updated or modified directly.</li><li>__Legacy__ - A service principal that represents an app created before app registrations, or through legacy experiences. A legacy service principal can have credentials, service principal names, reply URLs, and other properties that are editable by an authorized user, but doesn't have an associated app registration. The **appId** value doesn't associate the service principal with an app registration. The service principal can only be used in the tenant where it was created.</li><li>__SocialIdp__ - For internal use. </ul>|
| signInAudience | String | Specifies the Microsoft accounts that are supported for the current application. Read-only. <br><br>Supported values are:<ul><li>`AzureADMyOrg`: Users with a Microsoft work or school account in my organization's Microsoft Entra tenant (single-tenant).</li><li>`AzureADMultipleOrgs`: Users with a Microsoft work or school account in any organization's Microsoft Entra tenant (multitenant).</li><li>`AzureADandPersonalMicrosoftAccount`: Users with a personal Microsoft account, or a work or school account in any organization's Microsoft Entra tenant.</li><li>`PersonalMicrosoftAccount`: Users with a personal Microsoft account only.</li></ul> |
|tags|String collection| Custom strings that can be used to categorize and identify the service principal. Not nullable. The value is the union of strings set here and on the associated [application](application.md) entity's **tags** property.<br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`). |
| tokenEncryptionKeyId |String|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.|
| verifiedPublisher          | [verifiedPublisher](verifiedPublisher.md)                            | Specifies the verified publisher of the application that's linked to this service principal.

## Relationships

> [!IMPORTANT]
> Specific usage of the `$filter` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#user-properties).

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|appManagementPolicies|[appManagementPolicy](../resources/appManagementPolicy.md) collection| The appManagementPolicy applied to this application.|
|appRoleAssignedTo|[appRoleAssignment](approleassignment.md)|App role assignments for this app or service, granted to users, groups, and other service principals. Supports `$expand`.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection|App role assignment for another app or service, granted to this service principal. Supports `$expand`.|
|claimsMappingPolicies|[claimsMappingPolicy](claimsmappingpolicy.md) collection|The claimsMappingPolicies assigned to this service principal. Supports `$expand`.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects created by this service principal. Read-only. Nullable.|
|federatedIdentityCredentials|[federatedIdentityCredential](federatedidentitycredential.md) collection |Federated identities for a specific type of service principal - managed identity. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`).|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection|The homeRealmDiscoveryPolicies assigned to this service principal. Supports `$expand`.|
|memberOf|[directoryObject](directoryobject.md) collection|Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`.|
|oauth2PermissionGrants|[oAuth2PermissionGrant](oauth2permissiongrant.md) collection|Delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that this service principal owns. Read-only. Nullable. Supports `$expand`, `$select` nested in `$expand`, and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`).|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of this servicePrincipal. The owners are a set of nonadmin users or servicePrincipals who are allowed to modify this object. Supports `$expand`, `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`), and `$select` nested in `$expand`.|
|remoteDesktopSecurityConfiguration|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|The remoteDesktopSecurityConfiguration object applied to this service principal. Supports `$filter` (`eq`) for **isRemoteDesktopProtocolEnabled** property.|
|synchronization | [synchronization](synchronization-synchronization.md)| Represents the capability for Microsoft Entra identity synchronization through the Microsoft Graph API. |
|tokenIssuancePolicies|[tokenIssuancePolicy](tokenissuancepolicy.md) collection|The tokenIssuancePolicies assigned to this service principal.|
|tokenLifetimePolicies|[tokenLifetimePolicy](tokenlifetimepolicy.md) collection|The tokenLifetimePolicies assigned to this service principal.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "appRoleAssignedTo",
    "appRoleAssignments",
    "createdObjects",
    "createdOnBehalfOf",
    "endpoints",
    "memberOf",
    "oauth2PermissionGrants",
    "ownedObjects",
    "owners"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipal"
}-->

```json
{
  "accountEnabled": true,
  "addIns": [{"@odata.type": "microsoft.graph.addIn"}],
  "alternativeNames": ["String"] ,
  "appDisplayName": "String",
  "appId": "String",
  "appOwnerOrganizationId": "Guid",
  "appRoleAssignmentRequired": true,
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "homepage": "String",
  "id": "String (identifier)",
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logoutUrl": "String",
  "notes": "String",
  "oauth2PermissionScopes": [{"@odata.type": "microsoft.graph.permissionScope"}],
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "preferredTokenSigningKeyThumbprint": "String",
  "replyUrls": ["String"],
  "resourceSpecificApplicationPermissions": [{"@odata.type": "microsoft.graph.resourceSpecificPermission"}],
  "servicePrincipalNames": ["String"],
  "servicePrincipalType": "String",
  "tags": ["String"],
  "tokenEncryptionKeyId": "String",
  "verifiedPublisher": {"@odata.type": "microsoft.graph.verifiedPublisher"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "servicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    ]
}
-->
