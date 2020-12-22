---
title: "Get appConsentRequestsForApproval"
description: "Get the appConsentRequest resources from the appConsentRequestsForApproval navigation property."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get appConsentRequestsForApproval
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [appConsentRequest](../resources/appconsentrequest.md) resources from the **appConsentRequestsForApproval** navigation property. Registered reviewers can retrieve a pending appConsentRequests that requires their review. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported. |
|Application|Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/appConsentRequestsForApproval/{id}
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

If successful, this method returns a `200 OK` response code and a collection of [appConsentRequest](../resources/appconsentrequest.md) objects in the response body.

## Example 1: Get an appConsentRequestsForApproval that you are an approver of

### Request
<!-- {
  "blockType": "request",
  "name": "list_appconsentrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/appConsentRequestsForApproval/
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.appConsentRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('22075847-329a-4195-8bcf-2775ee97f0a8')/appConsentRequestsForApproval/$entity",
      "id": "5a3a0f94-b89d-4cd3-a4ad-fd78faec333f",
      "appId": "3fa97b03-0af0-4773-93ed-4c247cb62ce2",
      "appDisplayName": "Salesforce",
      "consentType": "Dynamic",
      "pendingScopes": [
        {
          "displayName": "Salesforce.ReadWrite.Users"
        },
        {
          "displayName": "Salesforce.ReadWrite.Groups"
        }
      ]
    }
  ]
}
```

## Example 2: Get a userConsentRequest for the appConsentRequest that is pending your approval

### Request
<!-- {
  "blockType": "request",
  "name": "list_appconsentrequest_userconsentrequest"
}
-->
``` http
GET /me/appConsentRequestsForApproval/{id}/userConsentRequests/{userConsentRequest-id}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.appConsentRequest)"
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
