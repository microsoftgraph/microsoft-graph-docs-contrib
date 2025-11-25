---
title: "Update agentUser"
description: "Update the properties of an agentUser object."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# Update agentUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [agentUser](../resources/agentuser.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permission | Higher privileged permissions |
|:--------------------|:---------------------------|:-----------------------------|
|Delegated (work or school account) | AgentIdUser.ReadWrite.IdentityParentedBy | AgentIdUser.ReadWrite.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. | Not supported.|
|Application | AgentIdUser.ReadWrite.IdentityParentedBy | AgentIdUser.ReadWrite.All, User.ReadWrite.All |

#### Permissions for specific scenarios
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

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /users/microsoft.graph.agentUser/{userId}
```

> [!TIP]
> You can also update agent users through the [PATCH /users/{id}](../api/user-update.md) endpoint without specifying the `microsoft.graph.agentUser` type.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must specify the **@odata.type** as `#microsoft.graph.agentUser` in the request body when updating an agentUser.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| `true` if the account is enabled; otherwise, `false`. This property is required when an agent user is created.|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|The licenses that are assigned to the agent user. Not nullable.|
|businessPhones| String collection | The telephone numbers for the agent user. **NOTE:** Although this is a string collection, only one number can be set for this property.|
|city|String|The city in which the agent user is located.|
| companyName | String | The name of the company that the agent user is associated with. This property can be useful for describing the company that an external agent user comes from. The maximum length is 64 characters. |
|country|String|The country/region in which the agent user is located; for example, `US` or `UK`.|
|department|String|The name for the department in which the agent user works.|
|displayName|String|The name displayed in the address book for the agent user. This property is required when an agent user is created and it can't be cleared during updates.|
|employeeId|String|The employee identifier assigned to the agent user by the organization. The maximum length is 16 characters.|
| employeeType | String | Captures enterprise worker type. For example, `Employee`, `Contractor`, `Consultant`, or `Vendor`.|
|givenName|String|The given name (first name) of the agent user.|
|employeeHireDate|DateTimeOffset|The hire date of the agent user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|employeeLeaveDateTime|DateTimeOffset|The date and time when the agent user left or will leave the organization. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md) |Represents organization data (for example, division and costCenter) associated with the agent user. Include both property values when updating **employeeOrgData**; if you omit any, the system sets them to `null`.|
|jobTitle|String|The agent user's job title.|
|mail|String|The SMTP address for the agent user, for example, `salesagent@contoso.com`. Changes to this property also updates the agent user's **proxyAddresses** collection to include the value as an SMTP address. Can't be updated to `null`.|
|mailNickname|String|The mail alias for the agent user. This property must be specified when an agent user is created.|
|mobilePhone|String|The primary cellular telephone number for the agent user.|
|officeLocation|String|The office location in the agent user's place of business.|
|otherMails|String collection|A list of additional email addresses for the agent user; for example: `["salesagent@contoso.com", "agentsales@fabrikam.com"]`. To update this property, pass in all the email addresses that you want the agent user to have; otherwise, existing values get overwritten by the values you specify. Can store up to 250 values, each with a limit of 250 characters.|
|postalCode|String|The postal code for the agent user's postal address. The postal code is specific to the agent user's country/region. In the United States of America, this attribute contains the ZIP code.|
|preferredLanguage|String|The preferred language for the agent user. Should follow ISO 639-1 Code; for example, `en-US`.|
|state|String|The state or province in the agent user's address.|
|streetAddress|String|The street address of the agent user's place of business.|
|surname|String|The agent user's surname (family name or last name).|
|usageLocation|String|A two letter country code (ISO standard 3166). Required for agent users that will be assigned licenses due to legal requirement to check for availability of services in countries/regions.  Examples include: `US`, `JP`, and `GB`. Not nullable.|
|userPrincipalName|String|The user principal name (UPN) of the agent user. The UPN is an Internet-style sign-in name for the agent user based on the Internet standard RFC 822. By convention, this should map to the agent user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](../resources/organization.md). <br>NOTE: This property can't contain accent characters. Only the following characters are allowed `A - Z`, `a - z`, `0 - 9`, ` ' . - _ ! # ^ ~`. For the complete list of allowed characters, see [username policies](/azure/active-directory/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts).|
|userType|String|A string value that can be used to classify user types in your directory, such as `Member` and `Guest`.|

Because the **agentUser** resource supports [extensions](/graph/extensibility-overview), you can use the `PATCH` operation to add, update, or delete your own app-specific data in custom properties of an extension in an existing **agentUser** instance.

### Manage extensions and associated data

Use this API to manage the directory, schema, and open extensions and their data for agent users, as follows:

+ Add, update, and store data in the extensions for an existing agent user
+ For directory and schema extensions, remove any stored data by setting the value of the custom extension property to `null`. For open extensions, use the [Delete open extension](/graph/api/opentypeextension-delete) API.



## Response

If successful, this method returns a `200 OK` response code and an updated [agentUser](../resources/agentuser.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentuser"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/users/microsoft.graph.agentUser/{userId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentUser",
  "accountEnabled": true,
  "assignedLicenses": [
    {
      "@odata.type": "microsoft.graph.assignedLicense"
    }
  ],
  "businessPhones": [
    "+1 425 555 0109"
  ],
  "city": "Seattle",
  "companyName": "Contoso",
  "country": "United States",
  "department": "Sales",
  "displayName": "Sales Agent",
  "employeeId": "12345",
  "employeeType": "Agent",
  "givenName": "Sales",
  "employeeHireDate": "2024-01-15T00:00:00Z",
  "employeeLeaveDateTime": null,
  "employeeOrgData": {
    "@odata.type": "microsoft.graph.employeeOrgData",
    "division": "Sales Division",
    "costCenter": "1234"
  },
  "jobTitle": "Sales Agent",
  "mail": "salesagent@contoso.com",
  "mailNickname": "SalesAgent",
  "mobilePhone": "+1 425 555 0110",
  "officeLocation": "18/2111",
  "otherMails": [
    "salesagent@contoso.com"
  ],
  "postalCode": "98052",
  "preferredLanguage": "en-US",
  "state": "WA",
  "streetAddress": "9256 Towne Center Dr., Suite 400",
  "surname": "Agent",
  "usageLocation": "US",
  "userPrincipalName": "salesagent@contoso.com",
  "userType": "Member"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentUser"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentUser",
  "id": "929393ae-1e1d-159f-0d83-29f7df42e7b9",
  "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
 "cloudLicensing": {
      "@odata.type": "microsoft.graph.cloudLicensing.userCloudLicensing"
    },
    "accountEnabled": "Boolean",
    "ageGroup": null,
    "assignedLicenses": [
      {
        "@odata.type": "microsoft.graph.assignedLicense"
      }
    ],
    "assignedPlans": [
      {
        "@odata.type": "microsoft.graph.assignedPlan"
      }
    ],
    "authorizationInfo": null,
    "businessPhones": [
      "String"
    ],
    "city": "String",
    "cloudRealtimeCommunicationInfo": {
      "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
    },
    "companyName": "String",
    "consentProvidedForMinor": null,
    "country": "String",
    "createdDateTime": "String (timestamp)",
    "creationType": "String",
    "department": "String",
    "displayName": "String",
    "employeeHireDate": "String (timestamp)",
    "employeeId": "String",
    "employeeOrgData": {
      "@odata.type": "microsoft.graph.employeeOrgData"
    },
    "employeeType": "String",
    "employeeLeaveDateTime": "String (timestamp)",
    "faxNumber": "String",
    "givenName": "String",
    "identities": [
      {
        "@odata.type": "microsoft.graph.objectIdentity"
      }
    ],
    "imAddresses": [
      "String"
    ],
    "infoCatalogs": [
      "String"
    ],
    "isLicenseReconciliationNeeded": "Boolean",
    "isManagementRestricted": "Boolean",
    "isResourceAccount": "Boolean",
    "jobTitle": "String",
    "lastPasswordChangeDateTime": null,
    "legalAgeGroupClassification": null,
    "licenseAssignmentStates": [
      {
        "@odata.type": "microsoft.graph.licenseAssignmentState"
      }
    ],
    "mail": "String",
    "mailNickname": "String",
    "mobilePhone": "String",
    "onPremisesDistinguishedName": null,
    "onPremisesExtensionAttributes": null,
    "onPremisesImmutableId": null,
    "onPremisesLastSyncDateTime": null,
    "onPremisesProvisioningErrors": null,
    "onPremisesSecurityIdentifier": null,
    "onPremisesSipInfo": null,
    "onPremisesSyncEnabled": null,
    "onPremisesDomainName": null,
    "onPremisesSamAccountName": null,
    "onPremisesUserPrincipalName": null,
    "otherMails": [
      "String"
    ],
    "passwordPolicies": null,
    "passwordProfile": null,
    "officeLocation": "String",
    "postalCode": "String",
    "preferredDataLocation": "String",
    "preferredLanguage": "String",
    "provisionedPlans": [
      {
        "@odata.type": "microsoft.graph.provisionedPlan"
      }
    ],
    "proxyAddresses": [
      "String"
    ],
    "refreshTokensValidFromDateTime": "String (timestamp)",
    "securityIdentifier": "String",
    "serviceProvisioningErrors": [
      {
        "@odata.type": "microsoft.graph.serviceProvisioningXmlError"
      }
    ],
    "showInAddressList": "Boolean",
    "signInSessionsValidFromDateTime": "String (timestamp)",
    "state": "String",
    "streetAddress": "String",
    "surname": "String",
    "usageLocation": "String",
    "userPrincipalName": "String",
    "externalUserState": null,
    "externalUserStateChangeDateTime": null,
    "userType": "String",
    "identityParentId": "String",
    "mailboxSettings": {
      "@odata.type": "microsoft.graph.mailboxSettings"
    },
    "aboutMe": "String",
    "birthday": "String (timestamp)",
    "interests": [
      "String"
    ],
    "mySite": "String",
    "pastProjects": [
      "String"
    ],
    "preferredName": "String",
    "responsibilities": [
      "String"
    ],
    "schools": [
      "String"
    ],
    "skills": [
      "String"
    ]
  }
```

