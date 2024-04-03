---
title: "List user"
description: "Get the user resources from the lastModifiedByUser navigation property."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the user resources from the lastModifiedByUser navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "newslinkpage-list-lastmodifiedbyuser-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-list-lastmodifiedbyuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /newsLinkPage/lastModifiedByUser
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

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_user"
}
-->
``` http
GET https://graph.microsoft.com/beta/newsLinkPage/lastModifiedByUser
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.user)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "30b0600b-c780-a372-789f-e1c7c29bb063",
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
      "authorizationInfo": {
        "@odata.type": "microsoft.graph.authorizationInfo"
      },
      "businessPhones": [
        "String"
      ],
      "city": "String",
      "cloudRealtimeCommunicationInfo": {
        "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
      },
      "companyName": "String",
      "consentProvidedForMinor": "String",
      "country": "String",
      "createdDateTime": "String (timestamp)",
      "creationType": "String",
      "customSecurityAttributes": {
        "@odata.type": "microsoft.graph.customSecurityAttributeValue"
      },
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
      "onPremisesSipInfo": {
        "@odata.type": "microsoft.graph.onPremisesSipInfo"
      },
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
      "externalUserState": "String",
      "externalUserStateChangeDateTime": "String",
      "userType": "String",
      "mailboxSettings": {
        "@odata.type": "microsoft.graph.mailboxSettings"
      },
      "deviceEnrollmentLimit": "Integer",
      "print": {
        "@odata.type": "microsoft.graph.userPrint"
      },
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
  ]
}
```

