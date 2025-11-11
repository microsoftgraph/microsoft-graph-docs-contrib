---
title: "List agentUser objects"
description: "Get a list of the agentUser objects and their properties."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/11/2025
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
GET ** users/microsoft.graph.AgentUser
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentUser](../resources/agentuser.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/microsoft.graph.agentUser
```


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

