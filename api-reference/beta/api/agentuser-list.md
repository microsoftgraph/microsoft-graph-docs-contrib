---
title: "List agentUser objects"
description: "Get a list of the agentUser objects and their properties."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# List agentUser objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [agentUser](../resources/agentuser.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permission | Higher privileged permissions |
|:--------------------|:---------------------------|:-----------------------------|
|Delegated (work or school account) | User.ReadBasic.All | User.Read.All, AgentIdUser.ReadWrite.IdentityParentedBy, AgentIdUser.ReadWrite.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. | Not supported.|
|Application | User.ReadBasic.All | User.Read.All, AgentIdUser.ReadWrite.IdentityParentedBy, AgentIdUser.ReadWrite.All, User.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/microsoft.graph.AgentUser
```

## Optional query parameters

This method supports [OData query parameters](/graph/query-parameters) to help customize the response:

- `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, `$top`. `$skip` is not supported.
- **Page size limits:** The default page size is 100 objects. The maximum page size is 999 objects, except when using `$select=signInActivity` or `$filter=signInActivity`, the maximum page size is 500.
- Some queries require the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentUser](../resources/agentuser.md) objects in the response body.

## Examples

### Example 1: list all the agent users 

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_agentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/microsoft.graph.agentUser
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-agentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-agentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-agentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-agentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-agentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-agentuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-agentuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

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
  "value": 
    {
      "@odata.type": "#microsoft.graph.agentUser",
      "id": "84e0b4dc-e852-29ed-1e5d-9e1f335611e8",
      "deletedDateTime": "String (timestamp)",
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
}
```

### Example 2: list all the non-agent users and only show the display name of the users

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_users"
}
-->
``` http
GET https://graph.microsoft.com/beta/users?$count=true&$filter=not isof('microsoft.graph.agentUser')&$select=displayName
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-users-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-users-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-users-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(displayName)",
    "@odata.count": 3,
    "value": [
        {
            "displayName": "Adrian Smith",
            "id": "04b9f5a2-ee41-4d0e-b500-8de414d178c9"
        },
        {
            "displayName": "Lewis Richardson",
            "id": "0d03514d-35b0-4ffd-9ed9-d8052757e1c4"
        },
        {
            "displayName": "Fung Lu",
            "id": "146f9fcb-64c9-4b6e-b92f-bd4892fabdcd"
        }
  ]
}
```
