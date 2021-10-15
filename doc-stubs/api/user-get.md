---
title: "Get user"
description: "Read the properties and relationships of a user object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get user
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [user](../resources/user.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me
GET /users/{usersId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [user](../resources/user.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_user"
}
-->
``` http
GET https://graph.microsoft.com/beta/me
```


### Response
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
  "value": {
    "@odata.type": "#microsoft.graph.user",
    "id": "4b7b9f2e-9f2e-4b7b-2e9f-7b4b2e9f7b4b",
    "deletedDateTime": "String (timestamp)",
    "signInActivity": {
      "@odata.type": "microsoft.graph.signInActivity"
    },
    "accountEnabled": "Boolean",
    "ageGroup": "String",
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
    "city": "String",
    "companyName": "String",
    "consentProvidedForMinor": "String",
    "country": "String",
    "createdDateTime": "String (timestamp)",
    "creationType": "String",
    "department": "String",
    "deviceKeys": [
      {
        "@odata.type": "microsoft.graph.deviceKey"
      }
    ],
    "displayName": "String",
    "employeeHireDate": "String (timestamp)",
    "employeeId": "String",
    "employeeOrgData": {
      "@odata.type": "microsoft.graph.employeeOrgData"
    },
    "employeeType": "String",
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
    "isResourceAccount": "Boolean",
    "jobTitle": "String",
    "lastPasswordChangeDateTime": "String (timestamp)",
    "legalAgeGroupClassification": "String",
    "licenseAssignmentStates": [
      {
        "@odata.type": "microsoft.graph.licenseAssignmentState"
      }
    ],
    "mail": "String",
    "mailNickname": "String",
    "mobilePhone": "String",
    "onPremisesDistinguishedName": "String",
    "onPremisesExtensionAttributes": {
      "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
    },
    "onPremisesImmutableId": "String",
    "onPremisesLastSyncDateTime": "String (timestamp)",
    "onPremisesProvisioningErrors": [
      {
        "@odata.type": "microsoft.graph.onPremisesProvisioningError"
      }
    ],
    "onPremisesSecurityIdentifier": "String",
    "onPremisesSyncEnabled": "Boolean",
    "onPremisesDomainName": "String",
    "onPremisesSamAccountName": "String",
    "onPremisesUserPrincipalName": "String",
    "otherMails": [
      "String"
    ],
    "passwordPolicies": "String",
    "passwordProfile": {
      "@odata.type": "microsoft.graph.passwordProfile"
    },
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
    "showInAddressList": "Boolean",
    "signInSessionsValidFromDateTime": "String (timestamp)",
    "state": "String",
    "streetAddress": "String",
    "surname": "String",
    "usageLocation": "String",
    "userPrincipalName": "String",
    "externalUserState": "String",
    "externalUserStateChangeDateTime": "String",
    "userType": "String",
    "mailboxSettings": {
      "@odata.type": "microsoft.graph.mailboxSettings"
    },
    "deviceEnrollmentLimit": "Integer",
    "aboutMe": "String",
    "birthday": "String (timestamp)",
    "hireDate": "String (timestamp)",
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

