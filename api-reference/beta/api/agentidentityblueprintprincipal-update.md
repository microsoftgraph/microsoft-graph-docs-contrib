---
title: "Update agentIdentityBlueprintPrincipal"
description: "Update the properties of an agentIdentityBlueprintPrincipal object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update agentIdentityBlueprintPrincipal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentIdentityBlueprintPrincipal object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

> [!IMPORTANT]
> - Using PATCH to set [**passwordCredential**](../resources/passwordcredential.md) is not supported. Use the [addPassword](./agentidentityblueprintprincipal-addpassword.md) and [removePassword](./agentidentityblueprintprincipal-removepassword.md) methods to update the password or secret for a agent identity blueprint principal.
>
> - Agent identity blueprint principals inherit specific properties from their associated agent identity blueprint registrations. These properties are synchronized from the agent identity blueprint registration, but the synchronization isn't immediate or continuous. Sometimes, updating a agent identity blueprint principal may prompt the directory to refresh properties from the agent identity blueprint registration, causing updates that weren't part of the original request.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-update-permissions.md)]

### Permissions for specific scenarios
- To update the **customSecurityAttributes** property:
  - In delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role and the app granted the *CustomSecAttributeAssignment.ReadWrite.All* delegated permission.
  - In app-only scenarios using Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.ReadWrite.All* application permission.


## HTTP request

You can address the agent identity blueprint principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
<!-- { "blockType": "ignored" } -->
```http
PATCH /servicePrincipals/{id}/Microsoft.Graph.AgentIdentityBlueprintPrincipal
PATCH /servicePrincipals(appId='{appId}')/Microsoft.Graph.AgentIdentityBlueprintPrincipal
```
## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

**TODO review this list of updatable properties**
| Property     | Type |Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| **true** if the service principal account is enabled; otherwise, **false**.|
| addIns | [addIn](../resources/addin.md) | Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may set the addIns property](/onedrive/developer/file-handlers/) for its "FileHandler" functionality. This lets services like Microsoft 365 call the application in the context of a document the user is working on.|
|alternativeNames|String collection| Used to retrieve service principals by subscription, identify resource group and full resource ids for [managed identities](/azure/active-directory/managed-identities-azure-resources/overview).|
|appRoleAssignmentRequired|Boolean|Specifies whether an **appRoleAssignment** to a user or group is required before Microsoft Entra ID will issue a user or access token to the application. Not nullable. |
|appRoles|[appRole](../resources/approle.md) collection|The application roles exposed by the associated application. For more information, see the **appRoles** property definition on the [application](../resources/application.md) resource. Not nullable. |
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object.<br/><li>To update this property in delegated scenarios, the calling principal must be assigned the Attribute Assignment Administrator role and the app granted the *CustomSecAttributeAssignment.ReadWrite.All* delegated permission.<li>To update this property in app-only scenarios with Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.ReadWrite.All* application permission. |
|displayName|String|The display name for the service principal.|
|homepage|String|Home page or landing page of the application.|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|The collection of key credentials associated with the service principal. Not nullable.            |
|loginUrl|String|Specifies the URL where the service provider redirects the user to Microsoft Entra ID to authenticate. Microsoft Entra ID uses the URL to launch the application from Microsoft 365 or the Microsoft Entra My Apps. When blank, Microsoft Entra ID performs IdP-initiated sign-on for applications configured with [SAML-based single sign-on](/azure/active-directory/manage-apps/what-is-single-sign-on#saml-sso). The user launches the application from Microsoft 365, the Microsoft Entra My Apps, or the Microsoft Entra SSO URL.|
|logoutUrl|String| Specifies the URL that will be used by Microsoft's authorization service to log out a user using [front-channel](https://openid.net/specs/openid-connect-frontchannel-1_0.html), [back-channel](https://openid.net/specs/openid-connect-backchannel-1_0.html) or SAML logout protocols.|
|notificationEmailAddresses|String collection|Specifies the list of email addresses where Microsoft Entra ID sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Microsoft Entra Gallery applications.|
|publishedPermissionScopes|[permissionScope](../resources/permissionScope.md) collection|The OAuth 2.0 permissions exposed by the associated application. For more information, see the **oauth2PermissionScopes** property definition on the [application](../resources/application.md) resource. Not nullable.            |
|preferredSingleSignOnMode|string|Specifies the single sign-on mode configured for this application. Microsoft Entra ID uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Microsoft Entra My Apps. The supported values are password, saml, external, and oidc.|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|Specifies the expiration date of the keyCredential used for token signing, marked by **preferredTokenSigningKeyThumbprint**.|
|preferredTokenSigningKeyThumbprint|String|Reserved for internal use only. Don't write or otherwise rely on this property. May be removed in future versions. |
|publisherName|String|The display name of the tenant in which the associated application is specified.|
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable. |
|samlSingleSignOnSettings|[samlSingleSignOnSettings](../resources/samlsinglesignonsettings.md)|The collection for settings related to saml single sign-on.|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated [application](../resources/application.md). Additional values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Microsoft Entra ID. For example,<ul><li>Client apps requesting permissions to this resource can use these URIs to specify needed permissions in the **requiredResourceAccess** property of their application manifest, or in the "API permissions" blade on the App registrations experience.</li><li>Client apps can specify a resource URI that is based on the values of this property to acquire an access token, which is the URI returned in the "aud" claim.</li></ul><br>The any operator is required for filter expressions on multi-valued properties. Not nullable.|
|tags|String collection| Not nullable. |
|tokenEncryptionKeyId|String|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.|




## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprintprincipal"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{id}
Content-type: application/json

{
  "appRoleAssignmentRequired": true
}
```


### Response

The following example shows the response.
```http
HTTP/1.1 204 No Content
```