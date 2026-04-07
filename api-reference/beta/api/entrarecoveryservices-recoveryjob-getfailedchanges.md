---
title: "recoveryJob: getFailedChanges"
description: "Get a paginated collection of changes that failed to apply during the recovery operation."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# recoveryJob: getFailedChanges

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a paginated collection of [recoveryChangeObjectBase](../resources/entrarecoveryservices-recoverychangeobjectbase.md) objects that failed to apply during the recovery operation.

This method can only be called on a recovery job that has completed and has a **totalFailedChanges** value greater than 0. Each failed change includes a **failureMessage** property describing why the change could not be applied.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entrarecoveryservices_recoveryjob_getfailedchanges" } -->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-recoveryjob-getfailedchanges-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-read](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryJobs/{job-id}/getFailedChanges
```

## Function parameters

Don't supply a function parameter for this method.

## Optional query parameters

This method supports the `$top`, `$skip`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The default and maximum page sizes are 100 and 999 failed change objects respectively.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase](../resources/entrarecoveryservices-recoverychangeobjectbase.md) objects in the response body. Each object includes a **failureMessage** property describing the error.

## Examples

### Example 1: Get failed changes from a completed recovery job

The following example shows a request to retrieve changes that failed to apply during recovery.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recoveryjobthis.getfailedchanges.example1"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4/getFailedChanges
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recoveryjobthisgetfailedchangesexample1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{    
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=./recoveryJobs/d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1/getFailedChanges",
    "@odata.nextLink": "https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=./recoveryJobs/d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1/getFailedChanges?$skiptoken=RFNwdAIAAQAAACA6X1NNVFBfYnJhemlsc291dGhAbWl",
    "value":
      [
        {   
            "entityTypeName": "user",
            "id": "36e07e06-72c1-4b2c-b547-c5084413b88b",
            "displayName": "JD",
            "recoveryAction": "update",
            "deltaFromCurrent":
            {  
                "@odata.type": "#microsoft.graph.user",
                "displayName": "John Doe",
                "userPrincipalName": "johndoe@example.com",
                "mail": "johndoe@example.com",
                "jobTitle": "Software Engineer",
                "department": "Engineering",
                "officeLocation": "Redmond",
                "mobilePhone": "+1 555-555-5555",
                "businessPhones": [
                "+1 555-555-5555"
                ],
                "preferredLanguage": "en-US",
                "accountEnabled": true,
                "passwordProfile": {
                "forceChangePasswordNextSignIn": false
                }
            },
            "currentState":
            {
                "@odata.type": "#microsoft.graph.user",
                "displayName": "JD",
                "userPrincipalName": "johndoe@example2.com",
                "mail": "jdoe@example.com",
                "jobTitle": "Product Manager",
                "department": "Management",
                "officeLocation": "San Fransisco",
                "mobilePhone": "+1 999-999-9999",
                "businessPhones": [
                "+1 555-888-5555"
                ],
                "preferredLanguage": "en-SP",
                "accountEnabled": false,
                "passwordProfile": {
                "forceChangePasswordNextSignIn": true
                }
            }
        }
      ]
}
```

### Example 2: Get failed changes with top parameter

The following example shows a request using the `$top` query parameter to limit results.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recoveryjobthis.getfailedchanges.example2"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4/getFailedChanges?$top=1
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recoveryjobthisgetfailedchangesexample2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase)",
  "@odata.count": 5,
  "value": [
    {
      "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase",
      "objectId": "9c4f2e1d-7a3b-4f8e-9c2d-3e4f5a6b7c8d",
      "entityTypeName": "servicePrincipal",
      "recoveryAction": "update",
      "deltaFromCurrent": {
        "appRoleAssignmentRequired": false
      },
      "currentState": {
        "appRoleAssignmentRequired": true
      },
      "failureMessage": "Update failed: Service principal is managed by another service."
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4/getFailedChanges?$skip=1&$top=1"
}
```
