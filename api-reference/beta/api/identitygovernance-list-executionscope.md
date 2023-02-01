---
title: "List execution scope of a workflow (in Lifecycle Workflows)"
description: "Get a list of the user objects in scope of execution for a workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List execution scope of a workflow

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lists the user who are currently filling the execution conditions of a [workflow](../resources/identitygovernance-workflow.md). Users who initially fall under the scope of the execution conditions, but are updated to no longer meet the conditions after it's scheduled to run, will remain on the list for a short period of time before being removed. If the execution scope is changed, users who initially met it's conditions, but no longer do so will be cleared from the list after a short period of time. New users who meet the conditions for the workflow will then be listed.

This API call requires workflow scheduling to be enabled. For information on this property, see: [Workflow Properties](../resources/identitygovernance-workflow.md#properties).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All and User.ReadBasic.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All and User.Read.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global administrator
- Global reader
- Lifecycle workflows administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identitygovernance/lifecycleWorkflows/workflows/{workflowId}/executionScope
```

## Optional query parameters

This method supports the `$select`, `$expand`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.user](../resources/user.md) objects in the response body.

## Examples

### Example 1: Retrieve the users that fall in scope of a workflow

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_executionScope"
}
-->
``` http
GET https://graph.microsoft.com/beta/identitygovernance/lifecycleWorkflows/workflows/8696088c-1aef-4f65-afe9-acd55343e327/executionScope
```

#### Response

The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users",
    "value": [
        {
            "id": "6bb70a30-124a-4666-b9b8-6ae178d4f791",
            "deletedDateTime": null,
            "accountEnabled": true,
            "ageGroup": null,
            "businessPhones": [],
            "city": null,
            "createdDateTime": "2023-01-10T19:23:04Z",
            "creationType": null,
            "companyName": "W325Q",
            "consentProvidedForMinor": null,
            "country": null,
            "department": "Marketing",
            "displayName": "Chris Andersen",
            "employeeId": null,
            "employeeHireDate": "2023-01-10T05:00:00Z",
            "employeeLeaveDateTime": null,
            "employeeType": null,
            "faxNumber": null,
            "givenName": "Chris",
            "imAddresses": [],
            "infoCatalogs": [],
            "isManagementRestricted": null,
            "isResourceAccount": null,
            "jobTitle": "Marketing Analyst",
            "legalAgeGroupClassification": null,
            "mail": null,
            "mailNickname": "ButtersScotch",
            "mobilePhone": null,
            "onPremisesDistinguishedName": null,
            "officeLocation": null,
            "onPremisesDomainName": null,
            "onPremisesImmutableId": null,
            "onPremisesLastSyncDateTime": null,
            "onPremisesSecurityIdentifier": null,
            "onPremisesSamAccountName": null,
            "onPremisesSyncEnabled": null,
            "onPremisesUserPrincipalName": null,
            "otherMails": [],
            "passwordPolicies": null,
            "postalCode": null,
            "preferredDataLocation": null,
            "preferredLanguage": null,
            "proxyAddresses": [],
            "refreshTokensValidFromDateTime": "2023-01-10T19:23:04Z",
            "securityIdentifier": "S-1-12-1-1807157808-1181094474-3781867705-2448938104",
            "showInAddressList": null,
            "signInSessionsValidFromDateTime": "2023-01-10T19:23:04Z",
            "state": null,
            "streetAddress": null,
            "surname": "Andersen",
            "usageLocation": null,
            "userPrincipalName": "ChrisAndersen@w325q.onmicrosoft.com",
            "externalUserConvertedOn": null,
            "externalUserState": null,
            "externalUserStateChangeDateTime": null,
            "userType": "Member",
            "employeeOrgData": null,
            "assignedLicenses": [],
            "assignedPlans": [],
            "authorizationInfo": {
                "certificateUserIds": []
            },
            "deviceKeys": [],
            "identities": [
                {
                    "signInType": "userPrincipalName",
                    "issuer": "w325q.onmicrosoft.com",
                    "issuerAssignedId": "ChrisAndersen@w325q.onmicrosoft.com"
                }
            ],
            "onPremisesExtensionAttributes": {
                "extensionAttribute1": null,
                "extensionAttribute2": null,
                "extensionAttribute3": null,
                "extensionAttribute4": null,
                "extensionAttribute5": null,
                "extensionAttribute6": null,
                "extensionAttribute7": null,
                "extensionAttribute8": null,
                "extensionAttribute9": null,
                "extensionAttribute10": null,
                "extensionAttribute11": null,
                "extensionAttribute12": null,
                "extensionAttribute13": null,
                "extensionAttribute14": null,
                "extensionAttribute15": null
            },
            "onPremisesProvisioningErrors": [],
            "passwordProfile": {
                "password": null,
                "forceChangePasswordNextSignIn": true,
                "forceChangePasswordNextSignInWithMfa": false
            },
            "provisionedPlans": []
        }
    ]
}
```

### Example 2: Retrieve the id of users in the execution scope of a workflow

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_executionScope"
}
-->
``` http
GET https://graph.microsoft.com/beta/identitygovernance/lifecycleWorkflows/workflows/8696088c-1aef-4f65-afe9-acd55343e327/executionScope?$select=id
```

#### Response

The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id)",
    "value": [
     {   
        "id": "6bb70a30-124a-4666-b9b8-6ae178d4f791" 
        }
    ],
}
```
