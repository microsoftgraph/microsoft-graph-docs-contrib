---
title: "Get adminConsentRequestPolicy"
description: "Read the properties and relationships of an adminConsentRequestPolicy object."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get adminConsentRequestPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.ConsentRequest |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported. |

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
GET /policies/adminConsentRequestPolicy
```

## Optional query parameters
This method supports the `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_adminconsentrequestpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/adminConsentRequestPolicy
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/adminConsentRequestPolicy/$entity",
    "isEnabled": true,
    "notifyReviewers": true,
    "remindersEnabled": true,
    "requestDurationInDays": 15,
    "version": 4,
    "reviewers": [
        {
            "query": "/users/22075847-329a-4195-8bcf-2775ee97f0a8",
            "queryType": "MicrosoftGraph"
        },
        {
            "query": "/users/39e3d858-882a-405f-ad74-28321d87a5b4",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```
