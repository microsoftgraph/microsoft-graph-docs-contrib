---
title: "Get subscription"
description: "Read the properties and relationships of a subscription object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get subscription
Namespace: microsoft.graph

Read the properties and relationships of a [subscription](../resources/subscription.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /subscriptions/{subscriptionsId}
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

If successful, this method returns a `200 OK` response code and a [subscription](../resources/subscription.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_subscription"
}
-->
``` http
GET https://graph.microsoft.com/beta/subscriptions/{subscriptionsId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.subscription",
    "id": "f5a7dab9-dab9-f5a7-b9da-a7f5b9daa7f5",
    "resource": "String",
    "changeType": "String",
    "clientState": "String",
    "notificationUrl": "String",
    "expirationDateTime": "String (timestamp)",
    "applicationId": "String",
    "creatorId": "String",
    "includeResourceData": "Boolean",
    "lifecycleNotificationUrl": "String",
    "encryptionCertificate": "String",
    "encryptionCertificateId": "String",
    "latestSupportedTlsVersion": "String",
    "notificationQueryOptions": "String",
    "notificationContentType": "String"
  }
}
```

