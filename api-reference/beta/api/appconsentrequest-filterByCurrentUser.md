---
title: "appConsentRequests: filterByCurrentUser"
description: "Get a list of the appConsentRequests for which the current user is the reviewer."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# appConsentRequests: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [appConsentRequests](../resources/appconsentrequest.md) for which the current user is the reviewer and the status of the userConsentRequest is `InProgress`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/filterByCurrentUser
```

## Required function parameters
The following table shows the parameters that can be used with this function.

|Property|Type|Description|
|:---|:---|:---|
|on|consentRequestFilterByCurrentUserOptions|Filter to query appConsentRequests for which the current user is a reviewer. Allowed value is `reviewer`. Required.|

## Optional query parameters
This function supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appConsentRequest](../resources/appconsentrequest.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_appconsentrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/appConsent/appConsentRequests/filterByCurrentUser(on='reviewer')?$filter=userConsentRequests/any(u:u/status eq 'InProgress')
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(appConsentRequest)",
  "@odata.count": 1,
  "value": [
    {
      "id": "af330b30-dd59-4482-a848-0fd81b0438ed",
      "appId": "3ca5f23f-94b4-4930-aec9-b8ca0f060e68",
      "appDisplayName": "Moodle",
      "consentType": "Dynamic",
      "pendingScopes": [],
      "userConsentRequests@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/appConsent/appConsentRequests('af330b30-dd59-4482-a848-0fd81b0438ed')/userConsentRequests",
      "userConsentRequests": []
    }
  ]
}
```

