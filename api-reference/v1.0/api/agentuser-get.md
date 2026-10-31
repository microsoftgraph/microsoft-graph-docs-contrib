---
title: "Get agentUser"
description: "Read the properties and relationships of agentUser object."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 4/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Get agentUser

Namespace: microsoft.graph

Read the properties and relationships of [agentUser](../resources/agentuser.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentuser_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-get-permissions.md)]

#### Permissions for specific scenarios
- To read the **employeeLeaveDateTime** property:
  - In delegated scenarios, the signed-in user needs at least one of the following Microsoft Entra roles: *Lifecycle Workflows Administrator* (least privilege), *Global Reader*; the app must be granted the *User-LifeCycleInfo.Read.All* delegated permission.
  - In app-only scenarios with Microsoft Graph permissions, the app must be granted the *User-LifeCycleInfo.Read.All* permission.
- To read the **customSecurityAttributes** property:
  - In delegated scenarios, the signed-in user must be assigned the *Attribute Assignment Administrator* role and the app granted the *CustomSecAttributeAssignment.Read.All* permission.
  - In app-only scenarios with Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.Read.All* permission.
- To read the **managerApplications** property, the app must be granted *User.Read.All* or the higher-privileged *Directory.Read.All* permission in delegated work or school account scenarios or application scenarios. Delegated personal Microsoft accounts aren't supported for this property.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/microsoft.graph.agentUser/{userId}
GET /users/{user-id}/microsoft.graph.agentUser?$select=id,managerApplications
```
You can retrieve an agent user's base **user** properties through `GET /users/{user-id}` without a type cast. To retrieve **managerApplications**, use the `microsoft.graph.agentUser` type-cast segment and explicitly include the property in `$select`.

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The **managerApplications** property is returned only when explicitly selected. It doesn't support `$filter` and isn't a navigation property, so `$expand` doesn't apply to it.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentUser](../resources/agentuser.md) object in the response body.

## Examples

### Example 1: Get an agent user

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_AgentUser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/users/microsoft.graph.agentUser/929393ae-1e1d-159f-0d83-29f7df42e7b9
```

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

### Example 2: Get manager applications

The following example uses the derived-type cast and `$select` to retrieve the application IDs authorized to manage the agent user's backing agent blueprint. The **managerApplications** property is server-managed and read-only. To change these values, update the backing agent blueprint instead of the agent user.

#### Request

<!-- { "blockType": "request", "name": "get_agentuser_manager_applications" } -->
```http
GET https://graph.microsoft.com/v1.0/users/11111111-2222-3333-4444-555555555555/microsoft.graph.agentUser?$select=id,managerApplications
```

#### Response

<!-- { "blockType": "response", "name": "get_agentuser_manager_applications", "truncated": true, "@odata.type": "microsoft.graph.agentUser" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/microsoft.graph.agentUser(id,managerApplications)/$entity",
  "@odata.type": "#microsoft.graph.agentUser",
  "id": "11111111-2222-3333-4444-555555555555",
  "managerApplications": [
    "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
    "742b07cd-b806-4feb-b009-9eaf0f55f7b3"
  ]
}
```

### Example 3: Get manager applications when none are configured

When no manager applications are configured on the backing agent blueprint, **managerApplications** returns an empty collection, not `null`.

#### Request

<!-- { "blockType": "request", "name": "get_agentuser_manager_applications_empty" } -->
```http
GET https://graph.microsoft.com/v1.0/users/11111111-2222-3333-4444-555555555555/microsoft.graph.agentUser?$select=managerApplications
```

#### Response

<!-- { "blockType": "response", "name": "get_agentuser_manager_applications_empty", "truncated": true, "@odata.type": "microsoft.graph.agentUser" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/microsoft.graph.agentUser(managerApplications)/$entity",
  "@odata.type": "#microsoft.graph.agentUser",
  "managerApplications": []
}
```
