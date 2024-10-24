---
title: "List selfServiceSignUp objects"
description: "Get a list of the selfServiceSignUp objects and their properties."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List selfServiceSignUp objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the Microsoft Entra External ID user [selfServiceSignUps](../resources/selfservicesignup.md) events for your tenant. 

The maximum and default page size is 1,000 objects and by default, the most recent sign-ups are returned first. Only sign-up events that occurred within the Microsoft Entra ID [default retention period](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data) are available.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "selfservicesignup-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/selfservicesignup-list-permissions.md)]

Apps must be [properly registered](/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to Microsoft Entra ID.

In addition to the delegated permissions, the signed-in user needs to belong to at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) that allow them to read sign-in reports.

+ Global Reader
+ Reports Reader
+ Security Administrator
+ Security Operator
+ Security Reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/signUps
```

## Optional query parameters

This method supports the `$top`, `$skiptoken`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

To avoid having the request time out, apply the `$filter` parameter with a time range for which to get all sign-ins, as shown in [Example 1](signin-list.md#example-1-list-all-sign-ins-during-a-specific-time-period).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [selfServiceSignUp](../resources/selfservicesignup.md) objects in the response body. The collection of objects is listed in descending order based on **createdDateTime**.  CONFIRM THAT THIS IS TRUE

## Examples

### Example 1: List all sign-ups during a specific time period
In this example, the response object shows the user signed up using Email OTP, and included an interrupt involving verification of user's identity (by entering the OTP sent to the user's email).

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_selfservicesignup"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signUps?$filter=createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.selfServiceSignUp)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/signUps",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET auditLogs/signUps?$select=appDisplayName,appId",
    "value": [
        {
            "appDisplayName": "TestApp4",
            "appId": "94559aba-b733-468e-aaec-44cc4e7f0b58",
            "correlationId": "f4414243-b0ee-4030-9c0c-d661c716a6b8",
            "createdDateTime": "2024-10-15T01:58:09.287604Z",
            "id": "921e63bd-a516-4976-a537-a6710d6a0000",
            "signUpStage": "userCreation",
            "signUpIdentityProvider": "Email OTP",
            "appliedEventListeners": [],
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@yahoo.com",
                "signUpIdentifierType": "emailAddress"
            },
            "userSnapshot": {
                "userId": "9fb7a577-9469-4489-912d-bc58a5bca276"
            }
        },
        {
            "appDisplayName": "TestApp4",
            "appId": "94559aba-b733-468e-aaec-44cc4e7f0b58",
            "correlationId": "f4414243-b0ee-4030-9c0c-d661c716a6b8",
            "createdDateTime": "2024-10-15T01:58:08.383114Z",
            "id": "5b515b07-411f-4759-a389-bce8289f0000",
            "signUpStage": "attributeCollectionAndValidation",
            "signUpIdentityProvider": "Email OTP",
            "userSnapshot": null,
            "appliedEventListeners": [],
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@yahoo.com",
                "signUpIdentifierType": "emailAddress"
            }
        },
        {
            "appDisplayName": "TestApp4",
            "appId": "94559aba-b733-468e-aaec-44cc4e7f0b58",
            "correlationId": "f4414243-b0ee-4030-9c0c-d661c716a6b8",
            "createdDateTime": "2024-10-15T01:57:49.368731Z",
            "id": "1ce058e4-d023-4ae4-9236-0c9d0f0f0200",
            "signUpStage": "credentialValidation",
            "signUpIdentityProvider": "Email OTP",
            "userSnapshot": null,
            "appliedEventListeners": [],
            "status": {
                "errorCode": 1002013,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@yahoo.com",
                "signUpIdentifierType": "emailAddress"
            }
        },
        {
            "appDisplayName": null,
            "appId": "94559aba-b733-468e-aaec-44cc4e7f0b58",
            "correlationId": "f4414243-b0ee-4030-9c0c-d661c716a6b8",
            "createdDateTime": "2024-10-15T01:57:36.362145Z",
            "id": "921e63bd-a516-4976-a537-a671036a0000",
            "signUpStage": "credentialCollection",
            "signUpIdentityProvider": "Email OTP",
            "userSnapshot": null,
            "appliedEventListeners": [],
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@yahoo.com",
                "signUpIdentifierType": "emailAddress"
            }
        }
    ]
}
```

### Example 2: Retrieve the sign-up events related to the app with the appDisplayName 'TestApp3'. 
In this example.....

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_selfservicesignup"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signUps?&$filter=appDisplayName eq 'TestApp3'
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.selfServiceSignUp)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
}
