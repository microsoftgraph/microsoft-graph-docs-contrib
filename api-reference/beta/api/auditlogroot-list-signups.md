---
title: "List signUps"
description: "Get a list of the selfServiceSignUp objects and their properties."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 06/11/2025
---

# List signUps

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the Microsoft Entra External ID user [selfServiceSignUps](../resources/selfservicesignup.md) events for your tenant. 

The maximum and default page size is 1,000 objects and by default, the most recent sign-ups are returned first. Only sign-up events that occurred within the Microsoft Entra ID [default retention period](/entra/identity/monitoring-health/reference-reports-data-retention#how-long-does-microsoft-entra-id-store-the-data) are available.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "auditlogroot_list_signups" } -->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-list-signups-permissions.md)]

[!INCLUDE [rbac-self-service-sign-up-apis-read](../includes/rbac-for-apis/rbac-self-service-sign-up-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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

If successful, this method returns a `200 OK` response code and a collection of [selfServiceSignUp](../resources/selfservicesignup.md) objects in the response body. The collection of objects is listed in descending order based on **createdDateTime**.

## Examples

### Request

This example lists all sign-up events during a specific time period. Four signup events related to one sign-up attempt are returned. The response object shows the user signed up using Email OTP, and includes an interrupt involving verification of user's identity (by entering the OTP sent to the user's email).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_selfservicesignup"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signUps?$filter=createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-selfservicesignup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-selfservicesignup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-selfservicesignup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-selfservicesignup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-selfservicesignup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-selfservicesignup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-selfservicesignup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.selfServiceSignUp)"
}
-->
```http
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
                "signUpIdentifier": "testuser@fabrikam.com",
                "signUpIdentifierType": "emailAddress"
            },
            "userId": "9fb7a577-9469-4489-912d-bc58a5bca276"
        },
        {
            "appDisplayName": "TestApp4",
            "appId": "94559aba-b733-468e-aaec-44cc4e7f0b58",
            "correlationId": "f4414243-b0ee-4030-9c0c-d661c716a6b8",
            "createdDateTime": "2024-10-15T01:58:08.383114Z",
            "id": "5b515b07-411f-4759-a389-bce8289f0000",
            "signUpStage": "attributeCollectionAndValidation",
            "signUpIdentityProvider": "Email OTP",
            "userId": null,
            "appliedEventListeners": [],
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@fabrikam.com",
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
            "userId": null,
            "appliedEventListeners": [],
            "status": {
                "errorCode": 1002013,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@fabrikam.com",
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
            "userId": null,
            "appliedEventListeners": [],
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            },
            "signUpIdentity": {
                "signUpIdentifier": "testuser@fabrikam.com",
                "signUpIdentifierType": "emailAddress"
            }
        }
    ]
}
```

