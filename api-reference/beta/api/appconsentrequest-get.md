---
title: "Get appConsentRequest"
description: "Read the properties and relationships of an appConsentRequest object."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get appConsentRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [appConsentRequest](../resources/appconsentrequest.md) object.

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
GET /identityGovernance/appConsent/appConsentRequests/{id}
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

If successful, this method returns a `200 OK` response code and an [appConsentRequest](../resources/appconsentrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_appconsentrequest"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/{id}
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests/$entity",
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
```

