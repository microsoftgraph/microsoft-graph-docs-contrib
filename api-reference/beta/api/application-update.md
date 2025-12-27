---
title: "Update application"
description: "Update the properties of an application object."
author: "Jackson-Woods"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 05/23/2025
ms.custom: sfi-ropc-nochange
---

# Update application

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [application](../resources/application.md) object. This API can also update an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object when the **@odata.type** property is set to `#microsoft.graph.agentIdentityBlueprint`.

> [!IMPORTANT]
> Using PATCH to set [**passwordCredential**](../resources/passwordcredential.md) is not supported. Use the [addPassword](./application-addpassword.md) and [removePassword](./application-removepassword.md) methods to update the password or secret for an application.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "application_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/application-update-permissions.md)]

[!INCLUDE [rbac-application-apis-write](../includes/rbac-for-apis/rbac-application-apis-write.md)]

## HTTP request

You can address the application using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center. Replace `{applicationObjectId}` with the **id** for the application object.

<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/{applicationObjectId}
PATCH /applications(appId='{appId}')
```

To update the logo, use the PUT method as follows.
<!-- { "blockType": "ignored" } -->
```http
PUT /applications/{applicationObjectId}/logo
PUT /applications(appId='{appId}')/logo
```

## Request headers
| Name       | Description|
|:-----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include unchanged values.

| Property                | Type                                                                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|:------------------------|:----------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| api                     | [apiApplication](../resources/apiapplication.md)                            | Specifies settings for an application that implements a web API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| appRoles                | [appRole](../resources/approle.md) collection                               | The collection of roles defined for the application. These roles can be assigned to users, groups, or service principals. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                |
| displayName             | String                                                                      | The display name for the application.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| groupMembershipClaims   | String                                                                      | Configures the **groups** claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following valid string values:<ul><li>`None`</li><li>`SecurityGroup`: For security groups and Microsoft Entra roles</li><li>`All`: For security groups, distribution groups, and Microsoft Entra directory roles that the signed-in user is a member of</li></ul>                                                                                                                       |
| identifierUris          | String collection                                                           | The URIs that identify the application within its Microsoft Entra tenant, or within a verified custom domain if the application is multitenant. For more information, see [Application Objects and Service Principal Objects](/azure/active-directory/develop/app-objects-and-service-principals). Not nullable.                                                                                                                                                                           |
| info                    | [informationalUrl](../resources/informationalurl.md)                        | Basic profile information of the application such as  app's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see [Add Terms of service and privacy statement for registered Microsoft Entra apps](/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement).                                                                                                                                                 |
| isDisabled              | Boolean                                                                     | Specifies whether the service principal of the app in a tenant or across tenants for multi-tenant apps can obtain new access tokens or access protected resources. When set to `true`, existing tokens remain valid until they expire based on their configured lifetimes, and the app stays visible in the Enterprise apps list but users cannot sign in.`true` if the application is deactivated (disabled); otherwise `false`.                                                                                                                                      |
| isFallbackPublicClient  | Boolean                                                                     | Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is `false`, which means the fallback application type is confidential client such as web app. There are certain scenarios where Microsoft Entra ID cannot determine the client application type (for example, [ROPC](https://tools.ietf.org/html/rfc6749#section-4.3) flow where it is configured without specifying a redirect URI). In those cases, Microsoft Entra ID will interpret the application type based on the value of this property. |
| keyCredentials          | [keyCredential](../resources/keycredential.md) collection                   | The collection of key credentials associated with the application. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| logo                    | Stream                                                                      | The main logo for the application. Not nullable. Use the PUT method to update the logo.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| nativeAuthenticationApisEnabled | String                                                              | Specifies whether the native authentication APIs are enabled so that the application can use them to provide native authentication. The possible values are: `none`, `all`, and `unknownFutureValue`. For more information, see [Native Authentication](/entra/external-id/customers/concept-native-authentication).|
| onPremisesPublishing    | [onPremisesPublishing](../resources/onpremisespublishing.md)                | Represents the set of properties for configuring [Microsoft Entra application proxy](/entra/identity/app-proxy/overview-what-is-app-proxy) for an on-premises application. This property can only be set after the application has been created and cannot be updated in the same request as other application properties.                                                                                                                                                                                                                                                                                                                                                       |
| optionalClaims          | optionalClaims                                                              | Application developers can configure optional claims in their Microsoft Entra apps to specify which claims they want in tokens sent to their application by the Microsoft security token service. For more information, see [optional claims](/azure/active-directory/develop/active-directory-optional-claims).                                                                                                                                                                                                                                                               |
| parentalControlSettings | [parentalControlSettings](../resources/parentalcontrolsettings.md)          | Specifies parental control settings for an application.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| publicClient            | [publicClientApplication](../resources/publicclientapplication.md)          | Specifies settings for installed clients such as desktop or mobile devices.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| requiredResourceAccess  | [requiredResourceAccess](../resources/requiredresourceaccess.md) collection | Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. No more than 50 resource services (APIs) can be configured. Beginning mid-October 2021, the total number of required permissions must not exceed 400. Not nullable.                                                                                                                 |
| samlMetadataUrl         | String                                                                      | The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant applications. |
| signInAudience          | String                                                                      | Specifies the supported account types for the application. Supported values are:<ul><li>`AzureADMyOrg`: Users with a Microsoft work or school account in my organization's Microsoft Entra tenant (that is, single tenant)</li><li>`AzureADMultipleOrgs`: Users with a Microsoft work or school account in any organization's Microsoft Entra tenant (that is, multitenant)</li><li>`AzureADandPersonalMicrosoftAccount`: Users with a personal Microsoft account, or a work or school account in any organization's Microsoft Entra tenant</li></ul> <br/>The value for this property has implications on other app object properties. As a result, if you change this property, you may need to change other properties first. For more information, see [Validation differences for signInAudience](/azure/active-directory/develop/supported-accounts-validation?context=graph/context).                        |
| signInAudienceRestrictions | [signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md) | Specifies restrictions on the supported account types specified in **signInAudience**. The value type determines the restrictions that can be applied:<ul><li>[unrestrictedAudience](../resources/unrestrictedaudience.md): There are no additional restrictions on the supported account types allowed by **signInAudience**.</li><li>[allowedTenantsAudience](../resources/allowedtenantsaudience.md): The application can only be used in the specified Entra tenants. Only supported when **signInAudience** is `AzureADMultipleOrgs`.</li></ul> Default is a value of type [unrestrictedAudience](../resources/unrestrictedaudience.md).|
| spa                     | [spaApplication](../resources/spaapplication.md)                            | Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens. |
| tags                    | String collection                                                           | Custom strings that can be used to categorize and identify the application. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| tokenEncryptionKeyId    | String                                                                      | Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.                                                                                                                                                                                                                               |
| uniqueName              | String                                                                      | The unique identifier that can be assigned to an application and used as an alternate key. Can be updated only if `null` and is immutable once set. |
| web                     | [webApplication](../resources/webapplication.md)                            | Specifies settings for a web application.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| spa                     | [spaApplication](../resources/spaapplication.md)                            | Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens. |
| windows                 | [windowsApplication](../resources/windowsapplication.md)                    | Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store. Includes package SID and redirect URIs for authorization codes and access tokens. |

## Response

If successful, this method returns a `204 No Content` response code and does not return anything in the response body.

## Examples

### Example 1: Update the displayName for an application

#### Request

The following request shows an example.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_application"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/{id}
Content-type: application/json

{
  "displayName": "New display name"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-application-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update the appRoles for an application

The following example updates the **appRoles** collection for an application. To keep any existing app roles, include them in the request. Any existing objects in the collection that aren't included in the request are replaced with the new objects. This object is synchronized with the corresponding property of the service principal in the tenant.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_application_approles"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/fda284b5-f0ad-4763-8289-31a273fca865
Content-type: application/json

{
    "appRoles": [
        {
            "allowedMemberTypes": [
                "User",
                "Application"
            ],
            "description": "Survey.Read",
            "displayName": "Survey.Read",
            "id": "ebb7c86c-fb47-4e3f-8191-420ff1b9de4a",
            "isEnabled": false,
            "origin": "Application",
            "value": "Survey.Read"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-application-approles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-application-approles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-application-approles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-application-approles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-application-approles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-application-approles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-application-approles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 3: Convert a single-tenant application to limited multitenant

#### Request

The following request shows an example updating an application's **signInAudience** from single-tenant (`AzureADMyOrg`) to multitenant (`AzureADMultipleOrgs`) and at the same time setting **signInAudienceRestrictions** so that the app can only be used in two allowed tenants (and the tenant where the app is registered).

<!-- {
  "blockType": "request",
  "name": "update_application_signinaudiencerestrictions"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/{id}
Content-type: application/json

{
  "signInAudience": "AzureADMultipleOrgs",
  "signInAudienceRestrictions": {
    "@odata.type": "#microsoft.graph.allowedTenantsAudience",
    "isHomeTenantAllowed": true,
    "allowedTenantIds": [
      "818ce016-78c2-457c-91d7-c02c2faaa5fe",
      "c62670b0-53a1-4a38-b26c-4093cbaa510a"
    ]
  }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 4: Convert a restricted multitenant application to be single-tenant

#### Request

The following request shows an example updating an application's **signInAudience** to single-tenant (`AzureADMyOrg`) and at the same time removing  **signInAudienceRestrictions**. It's recommended to do this at the same time to avoid any period of time where the application is multitenant and is *not* limited, which the organization's policies may require.

<!-- {
  "blockType": "request",
  "name": "update_application_signinaudiencerestrictions_singletenant_unrestricted"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/{id}
Content-type: application/json

{
  "signInAudience": "AzureADMyOrg",
  "signInAudienceRestrictions": {
    "@odata.type": "#microsoft.graph.unrestrictedAudience"
  }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
