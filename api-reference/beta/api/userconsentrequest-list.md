---
title: "List userConsentRequests"
description: "Get a list of the userConsentRequest objects and their properties."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List userConsentRequests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [userConsentRequest](../resources/userconsentrequest.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported. |
|Application|Not supported. |

The work or school account needs to belong to one of the following roles: *Global administrator*, *Global Reader*, *Cloud App Administrator*, or *Application Administrator*.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/{id}/userConsentRequests
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

If successful, this method returns a `200 OK` response code and a collection of [userConsentRequest](../resources/userconsentrequest.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_userconsentrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/appConsent/appConsentRequests/af330b30-dd59-4482-a848-0fd81b0438ed/userConsentRequests
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userConsentRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#userConsentRequests", 
  "@odata.count": 1, 
  "value": [
    {
      "id": "85af9438-9d68-4558-9d1f-2449ff2778a6", 
      "reason": "Test",
      "status": "Completed", 
      "createdDateTime": "2019-10-18T03:35:29.4305873Z",
      "createdBy": {
        "id": "7a9ca361-abb0-4212-87d3-0dc20c01cb0c",
        "displayName": "Contoso User",
        "userPrincipalName": "user1@contoso.com",
        "mail": " user1@contoso.com", 
        "user": {
          "id": "7a9ca361-abb0-4212-87d3-0dc20c01cb0c",
          "displayName": "Contoso User ",
          "userPrincipalName": "user1@contoso.com",
          "mail": "user1@contoso.com"
        }
      },
      "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('af330b30-dd59-4482-a848-0fd81b0438ed')/userConsentRequests('85af9438-9d68-4558-9d1f-2449ff2778a6')/approval/$entity", 
      "approval": {
        "id": "85af9438-9d68-4558-9d1f-2449ff2778a6",
        "pendingSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('af330b30-dd59-4482-a848-0fd81b0438ed')/userConsentRequests('85af9438-9d68-4558-9d1f-2449ff2778a6')/approval/pendingSteps", 
        "pendingSteps": [],
        "completedSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('af330b30-dd59-4482-a848-0fd81b0438ed')/userConsentRequests('85af9438-9d68-4558-9d1f-2449ff2778a6')/approval/completedSteps", 
        "completedSteps": [
          {
            "id": "355db36f-fac8-452c-b6b0-2ca000ca013e",
            "displayName": null,
            "reviewedDateTime": "2019-10-31T23:14:00.317Z",
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
  ]
}
```

