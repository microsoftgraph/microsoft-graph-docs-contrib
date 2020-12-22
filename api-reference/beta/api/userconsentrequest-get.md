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

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

The work or school account needs to belong to one of the following roles: *Global administrator*, *Global Reader*, *Cloud App Administrator*, or *Application Administrator*.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/{id}/userConsentRequests/{id}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userConsentRequest](../resources/userconsentrequest.md) object in the response body.

## Examples

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

