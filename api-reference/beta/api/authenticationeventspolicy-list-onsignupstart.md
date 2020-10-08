---
title: "List onSignupStart"
description: "Get the authenticationAction resources from the onSignupStart navigation property."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List onSignupStart

Namespace: microsoft.graph

Get the authenticationAction resources from the onSignupStart navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ApplicationConfiguration, Policy.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.ApplicationConfiguration, Policy.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /identity/events/onSignupStart
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

If successful, this method returns a `200 OK` response code and a collection of [authenticationAction](../resources/authenticationaction.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_authenticationaction"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/events/onSignupStart
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationAction)"
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.invokeUserFlowAction",
      "id": "2adb5c12-5c12-2adb-125c-db2a125cdb2a",
      "priority": "101",
      "sourceFilter": {
        "includeApplications": [
            "3dfff01b-0afb-4a07-967f-d1ccbd81102a"
        ]
      }
    }
  ]
}
```
