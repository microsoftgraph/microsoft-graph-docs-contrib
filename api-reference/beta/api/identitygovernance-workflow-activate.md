---
title: "workflow: activate (run a workflow on-demand)"
description: "Run a workflow on-demand for time critical execution and testing."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# workflow: activate (run a workflow on-demand)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate (Run on-demand) a [workflow](../resources/identitygovernance-workflow.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global administrator
- Lifecycle workflows administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that are required with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|subjects|[microsoft.graph.user](../resources/user.md) collection|The subjects for who the workflow is activated for.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "workflowthis.activate"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/activate
Content-Type: application/json

{
  "subjects": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "String (identifier)",
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
      "authorizationPolicy": {
        "@odata.type": "microsoft.graph.authorizationPolicy"
      },
      "businessPhones": [
        "String"
      ],
      "city": "String",
      "companyName": "String",
      "consentProvidedForMinor": "String",
      "country": "String",
      "createdDateTime": "String (timestamp)",
      "creationType": "String",
      "customSecurityAttributes": {
        "@odata.type": "microsoft.graph.customSecurityAttributeValue"
      },
      "department": "String",
      "device": [
        {
          "@odata.type": "microsoft.graph.device"
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
        "@odata.type": "microsoft.graph.Print"
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

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
