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
GET /me/appConsentRequestsForApproval/{id}/userConsentRequests
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

## Example 1: List all userConsentRequests

### Request
<!-- {
  "blockType": "request",
  "name": "list_userconsentrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/appConsent/appConsentRequests/{id}/userConsentRequests 
```


### Response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests",
  "@odata.count": 2,
  "value": [
    {
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
      "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/$entity",
      "approval": {
        "id": "e8b37cac-33a9-4be9-b728-87281944058f",
        "pendingSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/pendingSteps",
        "pendingSteps": [
          {
            "id": "0c406fd0-a7d9-4226-b944-ae76a96b4000",
            "displayName": null,
            "reviewedDateTime": null,
            "reviewResult": "NotReviewed",
            "justification": "",
            "reviewedBy": {
              "id": "00000000-0000-0000-0000-000000000000",
              "displayName": "",
              "userPrincipalName": "",
              "mail": ""
            }
          }
        ],
        "completedSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/completedSteps",
        "completedSteps": []
      }
    },
    {
      "id": "2689fcfd-cb87-4e36-a51f-5720fd88429d",
      "reason": "I wish to beta test this app.",
      "status": "InProgress",
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
        "pendingSteps": [
          {
            "id": "ee90b1fa-5082-48d6-ba61-8fe64dddfd4c",
            "displayName": null,
            "reviewedDateTime": null,
            "reviewResult": "NotReviewed",
            "justification": "",
            "reviewedBy": {
              "id": "00000000-0000-0000-0000-000000000000",
              "displayName": "",
              "userPrincipalName": "",
              "mail": ""
            }
          }
        ],
        "completedSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('2689fcfd-cb87-4e36-a51f-5720fd88429d')/approval/completedSteps",
        "completedSteps": []
      }
    }
  ]
}
```

## Example 2: List all userConsentRequests (after you have approved them)

### Request
<!-- {
  "blockType": "request",
  "name": "list_userconsentrequest_approved"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/appConsent/appConsentRequests/{id}/userConsentRequests 
```


### Response
In the following response, the reviewer has approved the user consent requests.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests",
  "@odata.count": 2,
  "value": [
    {
      "id": "e8b37cac-33a9-4be9-b728-87281944058f",
      "reason": "I need this app to work.",
      "status": "Completed",
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
      "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/$entity",
      "approval": {
        "id": "e8b37cac-33a9-4be9-b728-87281944058f",
        "pendingSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/pendingSteps",
        "pendingSteps": [],
        "completedSteps@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/completedSteps",
        "completedSteps": [
          {
            "id": "0c406fd0-a7d9-4226-b944-ae76a96b4000",
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
    },
    {
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
  ]
}
```

## Example 3: List all userConsentRequests for the appConsentRequests that are pending your approval

### Request
<!-- {
  "blockType": "request",
  "name": "list_userconsentrequest_appconsentrequest"
}
-->
``` http
GET /me/appConsentRequestsForApproval/{id}/userConsentRequests
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('22075847-329a-4195-8bcf-2775ee97f0a8')/appConsentRequestsForApproval('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests",
  "@odata.count": 2,
  "value": [
    {
      "id": "e8b37cac-33a9-4be9-b728-87281944058f",
      "reason": "I need this app to work.",
      "status": "InProgress",
      "createdDateTime": "2020-12-21T21:17:05.8975992Z",
      "createdBy": {
        "id": "37244623-9df1-44df-846c-e11b37e7400f",
        "displayName": "Grady Archie",
        "userPrincipalName": "GradyA@contoso.com",
        "mail": "GradyA@constoso.com",
        "user": {
          "id": "37244623-9df1-44df-846c-e11b37e7400f",
          "displayName": "Grady Archie",
          "userPrincipalName": "GradyA@contosocom",
          "mail": "GradyA@contoso.com"
        }
      },
      "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#users('22075847-329a-4195-8bcf-2775ee97f0a8')/appConsentRequestsForApproval('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('e8b37cac-33a9-4be9-b728-87281944058f')/approval/$entity",
      "approval": null
    },
    {
      "id": "2689fcfd-cb87-4e36-a51f-5720fd88429d",
      "reason": "I wish to beta test this app.",
      "status": "InProgress",
      "createdDateTime": "2020-12-21T21:11:25.3493113Z",
      "createdBy": {
        "id": "eda30546-2cec-4bb2-bd89-ff04aaf135a7",
        "displayName": "Adele Vance",
        "userPrincipalName": "AdeleV@contoso.com",
        "mail": "AdeleV@contoso.com",
        "user": {
          "id": "eda30546-2cec-4bb2-bd89-ff04aaf135a7",
          "displayName": "Adele Vance",
          "userPrincipalName": "AdeleV@contoso.com"
          "mail": "AdeleV@contoso.com"
        }
      },
      "approval@odata.context": "https://graph.microsoft.com/beta/$metadata#users('22075847-329a-4195-8bcf-2775ee97f0a8')/appConsentRequestsForApproval('b3c380a0-9180-445c-b20e-1d76e7b51df7')/userConsentRequests('2689fcfd-cb87-4e36-a51f-5720fd88429d')/approval/$entity",
      "approval": null
    }
  ]
}
```