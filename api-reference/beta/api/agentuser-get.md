---
title: "Get agentUser"
description: "Read the properties and relationships of agentUser object."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# Get agentUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentUser](../resources/agentuser.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permission | Higher privileged permissions |
|:--------------------|:---------------------------|:-----------------------------|
|Delegated (work or school account) | User.ReadBasic.All | User.Read.All, AgentIdUser.ReadWrite.IdentityParentedBy, AgentIdUser.ReadWrite.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. | Not supported.|
|Application | User.ReadBasic.All | User.Read.All, AgentIdUser.ReadWrite.IdentityParentedBy, AgentIdUser.ReadWrite.All, User.ReadWrite.All |

#### Permissions for specific scenarios
- To read the **employeeLeaveDateTime** property:
  - In delegated scenarios, the signed-in user needs at least one of the following Microsoft Entra roles: *Lifecycle Workflows Administrator* (least privilege), *Global Reader*; the app must be granted the *User-LifeCycleInfo.Read.All* delegated permission.
  - In app-only scenarios with Microsoft Graph permissions, the app must be granted the *User-LifeCycleInfo.Read.All* permission.
- To read the **customSecurityAttributes** property:
  - In delegated scenarios, the signed-in user must be assigned the *Attribute Assignment Administrator* role and the app granted the *CustomSecAttributeAssignment.Read.All* permission.
  - In app-only scenarios with Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.Read.All* permission.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/microsoft.graph.agentUser/{userId}
```
Note: You can get an agent user's information through the standard users' endpoint GET /users/userId. No special odata type needs to be specified in the request. 

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentUser](../resources/agentuser.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_AgentUser"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/microsoft.graph.agentUser/929393ae-1e1d-159f-0d83-29f7df42e7b9
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agentuser-javascript-snippets.md)]
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
  "value": {
    "@odata.type": "#microsoft.graph.agentUser",
    "id": "929393ae-1e1d-159f-0d83-29f7df42e7b9",
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

