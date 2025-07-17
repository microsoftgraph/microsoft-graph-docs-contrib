---
title: "servicePrincipal resource type"
description: "Represents an instance of an application in a directory. Inherits from directoryObject."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 11/26/2024
---

# servicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an instance of an application in a directory. Inherits from [directoryObject](directoryobject.md).

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/serviceprincipal-delta.md) function. This resource is an open type that allows other properties to be passed in.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List](../api/serviceprincipal-list.md) | [servicePrincipal](serviceprincipal.md) collection | Retrieve a list of servicePrincipal objects. |
|[Create](../api/serviceprincipal-post-serviceprincipals.md)| [servicePrincipal](serviceprincipal.md) | Creates a new servicePrincipal object. |
|[Get](../api/serviceprincipal-get.md) | [servicePrincipal](serviceprincipal.md) |Read properties and relationships of servicePrincipal object.|
|[Update](../api/serviceprincipal-update.md) | None  |Update servicePrincipal object. |
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
|[Add token signing certificate](../api/serviceprincipal-addtokensigningcertificate.md)|[selfSignedCertificate](../resources/selfsignedcertificate.md)| Add a self signed certificate to the service principal. Mostly use for configuring SAML based SSO applications from the [Microsoft Entra gallery](/azure/active-directory/saas-apps/tutorial-list).
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
|[Check member objects](../api/directoryobject-checkmemberobjects.md)|String collection|Check for membership in a specified list of groups, directory roles, or administrative unit objects.|
|[Get member groups](../api/directoryobject-getmembergroups.md)|String collection|Get the list of groups that this service principal is a member of.|
|[Get member objects](../api/directoryobject-getmemberobjects.md)|String collection|Get the list of groups, administrative units, and directory roles that this service principal is a member of.|
|**Owners**| | |
|[List](../api/serviceprincipal-list-owners.md) |[directoryObject](directoryobject.md) collection| Get the owners of a service principal.|
|[Add](../api/serviceprincipal-post-owners.md) |[directoryObject](directoryobject.md)| Assign an owner to a service principal. Service principal owners can be users or other service principals.|
|[Remove](../api/serviceprincipal-delete-owners.md) |None| Remove an owner from a service principal. As a recommended best practice, service principals should have at least two owners.|
|**Password-based single sign-on credentials**| | |
|[Create](../api/serviceprincipal-createpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](passwordsinglesignoncredentialset.md)|Create a credential set for the user or group specified in the body.|
|[Get](../api/serviceprincipal-getpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](passwordsinglesignoncredentialset.md)|Get a credential set for the user or group specified in the body.|
|[Update](../api/serviceprincipal-updatepasswordsinglesignoncredentials.md)|None|Update a credential set for the user or group specified in the body.|
|[Delete](../api/serviceprincipal-deletepasswordsinglesignoncredentials.md)|None|Delete a credential set for the user or group specified in the body.|

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#service-principal-properties).

| Property     | Type |Description|
|:---------------|:--------|:----------|
| accountEnabled |Boolean| `true` if the service principal account is enabled; otherwise, `false`. If set to `false`, then no users are able to sign in to this app, even if they're assigned to it. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| addIns | [addIn](addin.md) collection | Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may set the addIns property](/onedrive/developer/file-handlers/) for its "FileHandler" functionality. This lets services like Microsoft 365 call the application in the context of a document the user is working on.|
|alternativeNames|String collection| Used to retrieve service principals by subscription, identify resource group and full resource IDs for [managed identities](/azure/active-directory/managed-identities-azure-resources/overview). Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
|appDescription|String|The description exposed by the associated application.|
|appDisplayName|String|The display name exposed by the associated application. Maximum length is 256 characters.|
|appId|String|The unique identifier for the associated application (its **appId** property). Alternate key. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`).|
|applicationTemplateId|String|Unique identifier of the [applicationTemplate](../resources/applicationtemplate.md). Supports `$filter` (`eq`, `not`, `ne`). Read-only. `null` if the app wasn't created from an application template.|
|appOwnerOrganizationId|Guid|Contains the tenant ID where the application is registered. This is applicable only to service principals backed by applications. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`).|
|appRoleAssignmentRequired|Boolean|Specifies whether users or other service principals need to be granted an app role assignment for this service principal before users can sign in or apps can get tokens. The default value is `false`. Not nullable. <br><br>Supports `$filter` (`eq`, `ne`, `NOT`). |
|appRoles|[appRole](approle.md) collection|The roles exposed by the application, which this service principal represents. For more information, see the **appRoles** property definition on the [application](application.md) entity. Not nullable. |
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. <br><br>Returned only on `$select`. Supports `$filter` (`eq`, `ne`, `not`, `startsWith`). Filter value is case sensitive.<br><li>To read this property, the calling app must be assigned the *CustomSecAttributeAssignment.Read.All* permission. To write this property, the calling app must be assigned the *CustomSecAttributeAssignment.ReadWrite.All* permissions. <li>To read or write this property in delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role.|
| deletedDateTime | DateTimeOffset | The date and time the service principal was deleted. Read-only. |
| description | String | Free text field to provide an internal end-user facing description of the service principal. End-user portals such [MyApps](/azure/active-directory/user-help/my-apps-portal-end-user-access) displays the application description in this field. The maximum allowed size is 1,024 characters. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`) and `$search`.|
| disabledByMicrosoftStatus | String | Specifies whether Microsoft has disabled the registered application. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). <br><br> Supports `$filter` (`eq`, `ne`, `not`).  |
|displayName|String|The display name for the service principal. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`. |
|errorUrl|String|Deprecated. Don't use.|
|homepage|String|Home page or landing page of the application.|
| id | String | The unique identifier for the service principal. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| info | [informationalUrl](informationalurl.md) | Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more info, see How to: [Add Terms of service and privacy statement for registered Microsoft Entra apps](/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement). <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, and `eq` on `null` values).  |
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the service principal. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`).            |
|loginUrl|String|Specifies the URL where the service provider redirects the user to Microsoft Entra ID to authenticate. Microsoft Entra ID uses the URL to launch the application from Microsoft 365 or the Microsoft Entra My Apps. When blank, Microsoft Entra ID performs IdP-initiated sign-on for applications configured with [SAML-based single sign-on](/azure/active-directory/manage-apps/what-is-single-sign-on#saml-sso). The user launches the application from Microsoft 365, the Microsoft Entra My Apps, or the Microsoft Entra SSO URL.|
|logoutUrl|String| Specifies the URL that the Microsoft's authorization service uses to sign out a user using OpenId Connect [front-channel](https://openid.net/specs/openid-connect-frontchannel-1_0.html), [back-channel](https://openid.net/specs/openid-connect-backchannel-1_0.html), or SAML sign out protocols.|
|notes|String|Free text field to capture information about the service principal, typically used for operational purposes. Maximum allowed size is 1,024 characters.|
|notificationEmailAddresses|String collection|Specifies the list of email addresses where Microsoft Entra ID sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Microsoft Entra Gallery applications.|
|passwordCredentials|[passwordCredential](passwordcredential.md) collection|The collection of password credentials associated with the service principal. Not nullable. |
|passwordSingleSignOnSettings|[passwordSingleSignOnSettings](passwordsinglesignonsettings.md)|The collection for settings related to password single sign-on. Use `$select=passwordSingleSignOnSettings` to read the property. Read-only for [applicationTemplates](applicationTemplate.md) except for custom applicationTemplates. |
|preferredSingleSignOnMode|string|Specifies the single sign-on mode configured for this application. Microsoft Entra ID uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Microsoft Entra My Apps. The supported values are `password`, `saml`, `notSupported`, and `oidc`. **Note:** This field might be `null` for older SAML apps and for OIDC applications where it isn't set automatically.|
|permissionGrantPreApprovalPolicies|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) collection|The list of preapproval policies that has been assigned to the service principal.|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|Specifies the expiration date of the keyCredential used for token signing, marked by **preferredTokenSigningKeyThumbprint**. Updating this attribute isn't currently supported. For details, see [ServicePrincipal property differences](/graph/migrate-azure-ad-graph-property-differences#serviceprincipal-property-differences).|
|preferredTokenSigningKeyThumbprint|String|This property can be used on SAML applications (apps that have **preferredSingleSignOnMode** set to `saml`) to control which certificate is used to sign the SAML responses. For applications that aren't SAML, don't write or otherwise rely on this property. |
|publishedPermissionScopes|[permissionScope](permissionscope.md) collection|The delegated permissions exposed by the application. For more information, see the **oauth2PermissionScopes** property on the [application](application.md) entity's **api** property. Not nullable. <br/>**Note:** This property is named **oauth2PermissionScopes** in v1.0.|
|publisherName| String | The name of the Microsoft Entra tenant that published the application. |
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable. |
|samlMetadataUrl|String|The url where the service exposes SAML metadata for federation.|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](samlsinglesignonsettings.md)|The collection for settings related to saml single sign-on.|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated [application](application.md). More values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Microsoft Entra ID. For example,<ul><li>Client apps can specify a resource URI that is based on the values of this property to acquire an access token, which is the URI returned in the "aud" claim.</li></ul><br>The any operator is required for filter expressions on multi-valued properties. Not nullable. <br><br> Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
|servicePrincipalType|String|Identifies if the service principal represents an application or a managed identity. This is set by Microsoft Entra ID internally. For a service principal that represents an [application](./application.md) this is set as __Application__. For a service principal that represents a [managed identity](/azure/active-directory/managed-identities-azure-resources/overview) this is set as __ManagedIdentity__. The __SocialIdp__ type is for internal use. |
|signInAudience | String | Specifies the Microsoft accounts that are supported for the current application. Read-only. <br><br>Supported values are:<ul><li>`AzureADMyOrg`: Users with a Microsoft work or school account in my organization's Microsoft Entra tenant (single-tenant).</li><li>`AzureADMultipleOrgs`: Users with a Microsoft work or school account in any organization's Microsoft Entra tenant (multitenant).</li><li>`AzureADandPersonalMicrosoftAccount`: Users with a personal Microsoft account, or a work or school account in any organization's Microsoft Entra tenant.</li><li>`PersonalMicrosoftAccount`: Users with a personal Microsoft account only.</li></ul> |
|tags|String collection| Custom strings that can be used to categorize and identify the service principal. Not nullable. The value is the union of strings set here and on the associated [application](application.md) entity's **tags** property.<br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
|tokenEncryptionKeyId|String|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.|
|verifiedPublisher          | [verifiedPublisher](verifiedPublisher.md)                            | Specifies the verified publisher of the application that's linked to this service principal.|

## Relationships

> [!IMPORTANT]
> Specific usage of the `$filter` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#user-properties).

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|appManagementPolicies|[appManagementPolicy](../resources/appManagementPolicy.md) collection| The appManagementPolicy applied to this service principal.|
|appRoleAssignedTo|[appRoleAssignment](approleassignment.md)|App role assignments for this app or service, granted to users, groups, and other service principals.Supports `$expand`.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection|App role assignment for another app or service, granted to this service principal. Supports `$expand`.|
|claimsMappingPolicies|[claimsMappingPolicy](claimsmappingpolicy.md) collection|The claimsMappingPolicies assigned to this service principal. Supports `$expand`.|
|claimsPolicy|[customClaimsPolicy](../resources/customclaimspolicy.md)|A claims policy that allows application admins to customize the claims that will be emitted in tokens affected by this policy.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects created by this service principal. Read-only. Nullable.|
|delegatedPermissionClassifications|[delegatedPermissionClassification](delegatedpermissionclassification.md) collection|The permission classifications for delegated permissions exposed by the app that this service principal represents. Supports `$expand`.|
|endpoints|[endpoint](endpoint.md) collection|Endpoints available for discovery. Services like Sharepoint populate this property with a tenant specific SharePoint endpoints that other applications can discover and use in their experiences.|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection|The homeRealmDiscoveryPolicies assigned to this service principal. Supports `$expand`.|
|memberOf|[directoryObject](directoryobject.md) collection|Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`.|
|oauth2PermissionGrants|[oAuth2PermissionGrant](oauth2permissiongrant.md) collection|Delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by this service principal. Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`).|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of this servicePrincipal. The owners are a set of nonadmin users or servicePrincipals who are allowed to modify this object. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`).|
|remoteDesktopSecurityConfiguration|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|The remoteDesktopSecurityConfiguration object applied to this service principal. Supports `$filter` (`eq`) for **isRemoteDesktopProtocolEnabled** property.|
|synchronization | [synchronization](synchronization-synchronization.md)| Represents the capability for Microsoft Entra identity synchronization through the Microsoft Graph API. |
|tokenIssuancePolicies|[tokenIssuancePolicy](tokenissuancepolicy.md) collection|The tokenIssuancePolicies assigned to this service principal. Supports `$expand`.|
|tokenLifetimePolicies|[tokenLifetimePolicy](tokenlifetimepolicy.md) collection|The tokenLifetimePolicies assigned to this service principal. Supports `$expand`.|


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
  "alternativeNames": "String",
  "appDisplayName": "String",
  "appId": "String",
  "appOwnerOrganizationId": "Guid",
  "applicationTemplateId": "String",
  "appRoleAssignmentRequired": true,
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "errorUrl": "String",
  "homepage": "String",
  "id": "String (identifier)",
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "loginUrl": "String",
  "logoutUrl": "String",
  "notes": "String",
  "notificationEmailAddresses": ["String"],
  "publishedPermissionScopes": [{"@odata.type": "microsoft.graph.permissionScope"}],
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "passwordSingleSignOnSettings": {"@odata.type": "microsoft.graph.passwordSingleSignOnSettings"},
  "preferredSingleSignOnMode": "String",
  "preferredTokenSigningKeyEndDateTime": "DateTime",
  "preferredTokenSigningKeyThumbprint": "String",
  "publisherName": "String",
  "replyUrls": ["String"],
  "samlMetadataUrl": "String",
  "samlSingleSignOnSettings": "microsoft.DirectoryServices.SamlSingleSignOnSettings",
  "servicePrincipalNames": ["String"],
  "servicePrincipalType": "String",
  "signInAudience": "String",
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
