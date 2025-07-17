---
title: "Update user"
description: "Update the properties of a user object."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 01/10/2025
---

# Update user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [user](../resources/user.md) object.

- Not all properties can be updated by Member or Guest users with their default permissions without administrator roles. [Compare member and guest default permissions](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#compare-member-and-guest-default-permissions) to see properties they can manage.
- Customers through Microsoft Entra External ID in external tenants can also use this API operation to update their details. See [Default user permissions in external tenants](../resources/users.md#default-user-permissions-in-external-tenants) for the list of properties they can update.
- For synced users, the ability to update certain properties is additionally determined by the source of authority and whether synchronization is enabled.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "user_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-update-permissions.md)]

### Permissions for specific scenarios
- Your personal Microsoft account must be tied to a Microsoft Entra tenant to update your profile with the *User.ReadWrite* delegated permission on a personal Microsoft account.
- To update the **employeeLeaveDateTime** property:
  - In delegated scenarios, the admin needs the *Global Administrator* role; the app must be granted the *User.Read.All* and *User-LifeCycleInfo.ReadWrite.All* delegated permissions.
  - In app-only scenarios with Microsoft Graph permissions, the app must be granted the *User.Read.All* and *User-LifeCycleInfo.ReadWrite.All* permissions. 
- To update the **customSecurityAttributes** property:
  - In delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role and the app granted the *CustomSecAttributeAssignment.ReadWrite.All* permission.
  - In app-only scenarios with Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.ReadWrite.All* permission.
- *User-Mail.ReadWrite.All* is the least privileged permission to update the **otherMails** property.
- *User-PasswordProfile.ReadWrite.All* is the least privileged permission to update the **passwordProfile** property.
- *User-Phone.ReadWrite.All* is the least privileged permission to update the **businessPhones** and **mobilePhone** properties.
- *User.EnableDisableAccount.All* + *User.Read.All* is the least privileged combination of permissions to update the **accountEnabled** property.
- *User.ManageIdentities.All* is *required* to update the **identities** property.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/{id | userPrincipalName}
```

## Request headers
| Header       | Value|
|:-----------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|aboutMe|String|A freeform text entry field for the user to describe themselves.|
|accountEnabled|Boolean| `true` if the account is enabled; otherwise, `false`. This property is required when a user is created. <br/><li>*User.EnableDisableAccount.All* + *User.Read.All* is the least privileged combination of permissions required to update this property. <li> In delegated scenarios, *Privileged Authentication Administrator* is the least privileged role that's allowed to update this property for *all* administrators in the tenant. In general, the signed-in user must have a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions). <li> In app-only scenarios in addition to Microsoft Graph permissions, the app must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions). |
| ageGroup | [ageGroup](../resources/user.md#agegroup-values) | Sets the age group of the user. Allowed values: `null`, `Minor`, `NotAdult` and `Adult`. Refer to the [legal age group property definitions](../resources/user.md#legal-age-group-property-definitions) for further information. |
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|The licenses that are assigned to the user. Not nullable.            |
|birthday|DateTimeOffset|The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|businessPhones| String collection | The telephone numbers for the user. **NOTE:** Although this is a string collection, only one number can be set for this property. *User-Phone.ReadWrite.All* is the least privileged permission to update this property.|
|city|String|The city in which the user is located.|
| companyName | String | The name of the company that the user is associated. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters. |
| consentProvidedForMinor | [consentProvidedForMinor](../resources/user.md#consentprovidedforminor-values) | Sets whether consent has been obtained for minors. Allowed values: `null`, `Granted`, `Denied`, and `NotRequired`. Refer to the [legal age group property definitions](../resources/user.md#legal-age-group-property-definitions) for further information. |
|country|String|The country/region in which the user is located; for example, `US` or `UK`.|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object.<br/><li>To update this property in delegated scenarios, the calling principal must be assigned the Attribute Assignment Administrator role and the app granted the *CustomSecAttributeAssignment.ReadWrite.All* delegated permission.<li>To update this property in app-only scenarios with Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.ReadWrite.All* application permission. |
|department|String|The name for the department in which the user works.|
|displayName|String|The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it can't be cleared during updates.|
|employeeId|String|The employee identifier assigned to the user by the organization. The maximum length is 16 characters.|
| employeeType | String | Captures enterprise worker type. For example, `Employee`, `Contractor`, `Consultant`, or `Vendor`.|
|givenName|String|The given name (first name) of the user.|
|employeeHireDate|DateTimeOffset|The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|employeeLeaveDateTime|DateTimeOffset|The date and time when the user left or will leave the organization. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.<br><li> To update this property, the calling app must be assigned the *User-LifeCycleInfo.Read.All* and *User.Read.All* permissions. <li> To update this property in delegated scenarios, the admin needs the Global Administrator role. |
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md) |Represents organization data (for example, division and costCenter) associated with a user. Include both property values when updating **employeeOrgData**; if you omit any, the system sets them to `null`.|
|identities|[objectIdentity](../resources/objectidentity.md) collection| Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft, by organizations, or by social identity providers such as Facebook, Google, and Microsoft, and tied to a user account. Any update to **identities** replaces the entire collection and you must supply the userPrincipalName **signInType** identity in the collection. <br/><br/> **NOTE:** Adding a [B2C local account](../resources/objectidentity.md) to an existing **user** object isn't allowed, unless the **user** object already contains a local account identity.|
|interests|String collection|A list for the user to describe their interests.|
|jobTitle|String|The user's job title.|
|mail|String|The SMTP address for the user, for example, `jeff@contoso.com`. For Azure AD B2C accounts, this property can be updated up to only 10 times with unique SMTP addresses. Changes to this property also updates the user's **proxyAddresses** collection to include the value as an SMTP address. Can't be updated to `null`.|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created.|
|mobilePhone|String|The primary cellular telephone number for the user. <br><li>*User-Phone.ReadWrite.All* is the least privileged permission to update this property. <li> In delegated scenarios, *Privileged Authentication Administrator* is the least privileged role that's allowed to update this property for *all* administrators in the tenant. In general, the signed-in user must have a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions). <li> In app-only scenarios in addition to Microsoft Graph permissions, the app must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions).|
|mySite|String|The URL for the user's personal site.|
|officeLocation|String|The office location in the user's place of business.|
| onPremisesExtensionAttributes | [onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md) | Contains extensionAttributes 1-15 for the user. The individual extension attributes aren't selectable or filterable. For an `onPremisesSyncEnabled` user, the source of authority for this set of properties is the on-premises and is read-only. These extension attributes are also known as Exchange custom attributes 1-15.|
|onPremisesImmutableId|String|This property is used to associate an on-premises Active Directory user account to their Microsoft Entra user object. This property must be specified when creating a new user account in the Graph if you're using a federated domain for the user's **userPrincipalName** (UPN) property. **Important:** The **$** and **_** characters can't be used when specifying this property.                            |
|otherMails|String collection|A list of additional email addresses for the user; for example: `["bob@contoso.com", "Robert@fabrikam.com"]`. To update this property, pass in all the email addresses that you want the user to have; otherwise, existing values get overwritten by the values you specify. Can store up to 250 values, each with a limit of 250 characters. <br/><br/><li> *User-Mail.ReadWrite.All* is the least privileged permission to update this property. <li> In delegated scenarios, *Privileged Authentication Administrator* is the least privileged role that's allowed to update this property for *all* administrators in the tenant. In general, the signed-in user must have a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions). <li> In app-only scenarios in addition to Microsoft Graph permissions, the app must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions).|
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being `DisableStrongPassword`, which allows weaker passwords than the default policy to be specified. `DisablePasswordExpiration` can also be specified. The two can be specified together; for example: `DisablePasswordExpiration, DisableStrongPassword`.|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|Specifies the password profile for the user. The profile contains the user's password. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required. As a best practice, always set the **forceChangePasswordNextSignIn** to `true`. This can't be used for federated users. <br><li> *User-PasswordProfile.ReadWrite.All* is the least privileged permission to update this property. <li> In delegated scenarios, the *User Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) is the least privileged admin role supported to update this property for nonadmin users. *Privileged Authentication Administrator* is the least privileged role that's allowed to update this property for *all* administrators in the tenant. In general, the signed-in user must have a higher privileged administrator role as indicated in [Who can reset passwords](../resources/users.md#who-can-reset-passwords). <li> In app-only scenarios, the calling app must be assigned a supported permission *and* at least the *User Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).|
|pastProjects|String collection|A list for the user to enumerate their past projects.|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.|
|preferredLanguage|String|The preferred language for the user. Should follow ISO 639-1 Code; for example, `en-US`.|
|responsibilities|String collection|A list for the user to enumerate their responsibilities.|
|schools|String collection|A list for the user to enumerate the schools they attended.|
|skills|String collection|A list for the user to enumerate their skills.|
|state|String|The state or province in the user's address.|
|streetAddress|String|The street address of the user's place of business.|
|surname|String|The user's surname (family name or last name).|
|usageLocation|String|A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries/regions.  Examples include: `US`, `JP`, and `GB`. Not nullable.|
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style sign-in name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](../resources/organization.md). <br>NOTE: This property can't contain accent characters. Only the following characters are allowed `A - Z`, `a - z`, `0 - 9`, ` ' . - _ ! # ^ ~`. For the complete list of allowed characters, see [username policies](/azure/active-directory/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts).|
|userType|String|A string value that can be used to classify user types in your directory, such as `Member` and `Guest`.          |

Because the **user** resource supports [extensions](/graph/extensibility-overview), you can use the `PATCH` operation to
add, update, or delete your own app-specific data in custom properties of an extension in an existing **user** instance.

> [!NOTE]
> - The following properties cannot be updated by an app with only application permissions: **aboutMe**, **birthday**, **employeeHireDate**, **interests**, **mySite**, **pastProjects**, **responsibilities**, **schools**, and **skills**.
> - To update the following properties, you must specify them in their own PATCH request, without including the other properties listed in the table above: **aboutMe**, **birthday**, **interests**, **mySite**, **pastProjects**, **responsibilities**, **schools**, and **skills**.

### Manage extensions and associated data

Use this API to manage the directory, schema, and open extensions and their data for users, as follows:

+ Add, update, and store data in the extensions for an existing user
+ For directory and schema extensions, remove any stored data by setting the value of the custom extension property to `null`. For open extensions, use the [Delete open extension](/graph/api/opentypeextension-delete) API.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Example 1: Update properties of the signed-in user

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_user"
}-->
```http
PATCH https://graph.microsoft.com/beta/me
Content-type: application/json

{
  "businessPhones": [
    "+1 425 555 0109"
  ],
  "officeLocation": "18/2111"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-user-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update properties of the specified user

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_other_user"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "businessPhones": [
        "+1 425 555 0109"
    ],
    "officeLocation": "18/2111",
    "authorizationInfo": {
        "certificateUserIds": [
            "5432109876543210@mil"
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-other-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-other-user-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-other-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-other-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-other-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-other-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-other-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-other-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 3: Update the passwordProfile of a user and reset their password

The following example shows a request that resets the password of another user. As a best practice, always set the **forceChangePasswordNextSignIn** to `true`.

[!INCLUDE [users-passwordprofile-permissions](../includes/users-passwordprofile-permissions.md)]

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_user_passwordProfile"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
  "passwordProfile": {
    "forceChangePasswordNextSignIn": true,
    "password": "xWwvJ]6NMw+bWH-d"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-user-passwordprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-user-passwordprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-user-passwordprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-user-passwordprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-user-passwordprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-user-passwordprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-user-passwordprofile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-user-passwordprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 4: Assign a custom security attribute with a string value to a user

The following example shows how to assign a custom security attribute with a string value to a user.

+ Attribute set: `Engineering`
+ Attribute: `ProjectDate`
+ Attribute data type: String
+ Attribute value: `"2022-10-01"`

To assign custom security attributes, the calling principal must be assigned the Attribute Assignment Administrator role and must be granted the *CustomSecAttributeAssignment.ReadWrite.All* permission.

For examples of custom security attribute assignments, see [Examples: Assign, update, list, or remove custom security attribute assignments using the Microsoft Graph API](/graph/custom-security-attributes-examples).

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "assign_user_customsecurityattribute_string"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "ProjectDate":"2022-10-01"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/assign-user-customsecurityattribute-string-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/assign-user-customsecurityattribute-string-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/assign-user-customsecurityattribute-string-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/assign-user-customsecurityattribute-string-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/assign-user-customsecurityattribute-string-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/assign-user-customsecurityattribute-string-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/assign-user-customsecurityattribute-string-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/assign-user-customsecurityattribute-string-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 5: Add or update the values of a schema extension for a user

You can update or assign a value to a single property or all properties in the extension.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_schemaextension_properties"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/beta/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e
Content-type: application/json

{
    "ext55gb1l09_msLearnCourses": {
        "courseType": "Admin"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-schemaextension-properties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-schemaextension-properties-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-schemaextension-properties-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-schemaextension-properties-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-schemaextension-properties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-schemaextension-properties-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-schemaextension-properties-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-schemaextension-properties-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

To remove the value of the schema extension from the user object, set the **ext55gb1l09_msLearnCourses** property to `null`.

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update user",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
