---
title: "Get userConsentRequest"
description: "Read the properties and relationships of a userConsentRequest object."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get userConsentRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [userConsentRequest](../resources/userconsentrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

The work or school account needs to belong to one of the following roles:
* Global administrator
* Global Reader
* Cloud App Administrator, or
* Application Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/{id}/userConsentRequests/{id}
GET /me/appConsentRequestsForApproval/{id}/userConsentRequests/{userConsentRequest-id}
```

## Optional query parameters
This method supports the `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userConsentRequest](../resources/userconsentrequest.md) object in the response body.

## Example 1: Get a userConsentRequest

### Request
<!-- {
  "blockType": "request",
  "name": "get_userconsentrequest"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/{id}/userConsentRequests/{userConsentRequest-id} 
```


### Response
The following response shows a userConsentRequest that's approved.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userConsentRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests/$entity",
    "id": "2689fcfd-cb87-4e36-a51f-5720fd88429d",
    "reason": "I wish to beta test this app.",
    "status": "Completed",
    "createdDateTime": "2020-12-21T21:11:25.3493113Z",
    "createdBy": {
        "id": "eda30546-2cec-4bb2-bd89-ff04aaf135a7",
        "displayName": "Adele Vance",
        "userPrincipalName": "AdeleV@contoso.com",
        "mail": "AdeleV@contoso.com",
        "user": {
            "id": "eda30546-2cec-4bb2-bd89-ff04aaf135a7",
            "displayName": "Adele Vance",
            "userPrincipalName": "AdeleV@contoso.com",
            "mail": "AdeleV@contoso.com"
        }
    },
    "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('2689fcfd-cb87-4e36-a51f-5720fd88429d')/approval/$entity",
    "approval": {
        "id": "2689fcfd-cb87-4e36-a51f-5720fd88429d",
        "pendingSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('2689fcfd-cb87-4e36-a51f-5720fd88429d')/approval/pendingSteps",
        "pendingSteps": [],
        "completedSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('2689fcfd-cb87-4e36-a51f-5720fd88429d')/approval/completedSteps",
        "completedSteps": [
            {
                "id": "ee90b1fa-5082-48d6-ba61-8fe64dddfd4c",
                "displayName": null,
                "reviewedDateTime": "2020-12-23T00:36:42.177Z",
                "reviewResult": "Approve",
                "justification": "Admin consent granted.",
                "reviewedBy": {
                    "id": "00000001-0000-0000-c000-000000000000",
                    "displayName": "",
                    "userPrincipalName": "",
                    "mail": ""
                }
            }
        ]
    }
}
```

## Example 2: Get a userConsentRequest for the appConsentRequest that is pending your approval

The following call will return only a **userConsentRequest** for the **appConsentRequests** for which the signed-in user is the assigned reviewer. The signed-in user does not need to be assigned any of the special directory roles to call this API.

### Request
<!-- {
  "blockType": "request",
  "name": "get_userconsentrequest_appconsentrequest"
}
-->
``` http
GET /me/appConsentRequestsForApproval/{id}/userConsentRequests/{userConsentRequest-id}
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appConsentRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('22075847-329a-4195-8bcf-2775ee97f0a8')/appConsentRequestsForApproval('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests/$entity",
  "id": "e8b37cac-33a9-4be9-b728-87281944058f",
  "reason": "I need this app to work.",
  "status": "InProgress",
  "createdDateTime": "2020-12-21T21:17:05.8975992Z",
  "createdBy": {
    "id": "37244623-9df1-44df-846c-e11b37e7400f",
    "displayName": "Grady Archie",
    "userPrincipalName": "GradyA@contoso.com",
    "mail": "GradyA@contoso.com",
    "user": {
      "id": "37244623-9df1-44df-846c-e11b37e7400f",
      "displayName": "Grady Archie",
      "userPrincipalName": "GradyA@contoso.com",
      "mail": "GradyA@contoso.com"
    }
  },
  "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#users('22075847-329a-4195-8bcf-2775ee97f0a8')/appConsentRequestsForApproval('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/$entity",
  "approval": null
}
```
