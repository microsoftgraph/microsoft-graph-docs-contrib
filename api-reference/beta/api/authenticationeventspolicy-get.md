---
title: "Get authenticationEventsPolicy"
description: "Get the authentication events that are supported and defined by policy for the tenant."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get authenticationEventsPolicy

Namespace: microsoft.graph

Get the authentication events that are supported and defined by policy for the tenant.

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
GET /identity/events
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationEventsPolicy](../resources/authenticationeventspolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_authenticationeventspolicy"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/events
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventsPolicy"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.authenticationEventsPolicy",
    "id": "104b8428-8428-104b-2884-4b1028844b10"
  }
}
```
