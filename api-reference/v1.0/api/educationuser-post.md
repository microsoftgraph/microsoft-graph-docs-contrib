---
title: "Create educationUser"
description: "Create a new educationUser object."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 03/06/2024
---

# Create educationUser

Namespace: microsoft.graph

Create a new [educationUser](../resources/educationuser.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationuser_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationuser-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /education/users
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [educationUser](../resources/educationuser.md) object.

The following table lists the properties that are required when you create the [educationUser](../resources/educationuser.md).

| Property             | Type                                                               | Description                                                                                                                                                                                                                                                                                                                                                 |
| :------------------- | :----------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| accountEnabled       | Boolean                                                            | **True** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports $filter.                                                                                                                                                                                                                               |
| assignedLicenses     | [assignedLicense](../resources/assignedlicense.md) collection      | The licenses that are assigned to the user. Not nullable.                                                                                                                                                                                                                                                                                                   |
| assignedPlans        | [assignedPlan](../resources/assignedplan.md) collection            | The plans that are assigned to the user. Read-only. Not nullable.                                                                                                                                                                                                                                                                                           |
| businessPhones       | String collection                                                  | The telephone numbers for the user. **Note:** Although this is a string collection, only one number can be set for this property.                                                                                                                                                                                                                           |
| createdBy            | [identitySet](../resources/identityset.md)                         | Entity who created the user.                                                                                                                                                                                                                                                                                                                                |
| department           | String                                                             | The name for the department in which the user works. Supports $filter.                                                                                                                                                                                                                                                                                      |
| displayName          | String                                                             | The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it can't be cleared during updates. Supports $filter and $orderby.                                                                                      |
| externalSource       | educationExternalSource                                            | Where this user was created from. Possible values are: `sis`, `manual`.                                                                                                                                                                                                                                                                                     |
| externalSourceDetail | String                                                             | The name of the external source this resource was generated from.                                                                                                                                                                                                                                                                                          |
| givenName            | String                                                             | The given name (first name) of the user. Supports $filter.                                                                                                                                                                                                                                                                                                  |
| mail                 | String                                                             | The SMTP address for the user; for example, "jeff@contoso.com". Read-Only. Supports $filter.                                                                                                                                                                                                                                                    |
| mailingAddress       | [physicalAddress](../resources/physicaladdress.md)                 | Mail address of user.                                                                                                                                                                                                                                                                                                                                       |
| mailNickname         | String                                                             | The mail alias for the user. This property must be specified when a user is created. Supports $filter.                                                                                                                                                                                                                                                      |
| middleName           | String                                                             | The middle name of user.                                                                                                                                                                                                                                                                                                                                    |
| mobilePhone          | String                                                             | The primary cellular telephone number for the user.                                                                                                                                                                                                                                                                                                         |
| onPremisesInfo       | [educationOnPremisesInfo](../resources/educationonpremisesinfo.md) | Additional information used to associate the AAD user with its Active Directory counterpart.                                                                                                                                                                                                                                                               |
| passwordPolicies     | String                                                             | Specifies password policies for the user. This value is an enumeration with one possible value being "DisableStrongPassword", which allows weaker passwords than the default policy to be specified. "DisablePasswordExpiration" can also be specified. The two can be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword". |
| passwordProfile      | [passwordProfile](../resources/passwordprofile.md)                 | Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.                                                        |
| preferredLanguage    | String                                                             | The preferred language for the user. Should follow ISO 639-1 Code; for example, "en-US".                                                                                                                                                                                                                                                                    |
| primaryRole          | educationUserRole                                                  | Default role for a user. The user's role might be different in an individual class. Possible values are: `student`, `teacher`, `none`.                                                                                                                                                                                                                      |
| provisionedPlans     | [provisionedPlan](../resources/provisionedplan.md) collection      | The plans that are provisioned for the user. Read-only. Not nullable.                                                                                                                                                                                                                                                                                       |
| residenceAddress     | [physicalAddress](../resources/physicaladdress.md)                 | Address where user lives.                                                                                                                                                                                                                                                                                                                                   |
| student              | [educationStudent](../resources/educationstudent.md)               | If the primary role is student, this block contains student specific data.                                                                                                                                                                                                                                                                              |
| surname              | String                                                             | The user's surname (family name or last name). Supports $filter.                                                                                                                                                                                                                                                                                            |
| teacher              | [educationTeacher](../resources/educationteacher.md)               | If the primary role is teacher, this block contains teacher specific data.                                                                                                                                                                                                                                                                              |
| usageLocation        | String                                                             | A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: "US", "JP", and "GB". Not nullable. Supports $filter.                                                                                           |
| userPrincipalName    | String                                                             | The user principal name (UPN) of the user.                                                                                                                                                                                                                                                                                                                  |
| userType             | String                                                             | A string value that can be used to classify user types in your directory, such as "Member" and "Guest". Supports $filter.                                                                                                                                                                                                                                   |

## Response

If successful, this method returns a `201 Created` response code and an [educationUser](../resources/educationuser.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationuser_from_"
}
-->

```http
POST https://graph.microsoft.com/v1.0/education/users
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationUser",
  "primaryRole": "String",
  "middleName": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "residenceAddress": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "mailingAddress": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "student": {
    "@odata.type": "microsoft.graph.educationStudent"
  },
  "teacher": {
    "@odata.type": "microsoft.graph.educationTeacher"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "accountEnabled": "Boolean",
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
  "businessPhones": [
    "String"
  ],
  "department": "String",
  "displayName": "String",
  "givenName": "String",
  "mail": "String",
  "mailNickname": "String",
  "mobilePhone": "String",
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
  "officeLocation": "String",
  "preferredLanguage": "String",
  "provisionedPlans": [
    {
      "@odata.type": "microsoft.graph.provisionedPlan"
    }
  ],
  "refreshTokensValidFromDateTime": "String (timestamp)",
  "showInAddressList": "Boolean",
  "surname": "String",
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "onPremisesInfo": {
    "@odata.type": "microsoft.graph.educationOnPremisesInfo"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationuser-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationuser-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationuser-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationuser-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationuser-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationuser-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationuser-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationuser-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationUser"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationUser",
  "id": "90eedea1-dea1-90ee-a1de-ee90a1deee90",
  "primaryRole": "String",
  "middleName": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "residenceAddress": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "mailingAddress": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "student": {
    "@odata.type": "microsoft.graph.educationStudent"
  },
  "teacher": {
    "@odata.type": "microsoft.graph.educationTeacher"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "accountEnabled": "Boolean",
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
  "businessPhones": [
    "String"
  ],
  "department": "String",
  "displayName": "String",
  "givenName": "String",
  "mail": "String",
  "mailNickname": "String",
  "mobilePhone": "String",
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
  "officeLocation": "String",
  "preferredLanguage": "String",
  "provisionedPlans": [
    {
      "@odata.type": "microsoft.graph.provisionedPlan"
    }
  ],
  "refreshTokensValidFromDateTime": "String (timestamp)",
  "showInAddressList": "Boolean",
  "surname": "String",
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "onPremisesInfo": {
    "@odata.type": "microsoft.graph.educationOnPremisesInfo"
  }
}
```
