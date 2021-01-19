---
title: "Update subscription"
description: "Update the properties of a subscription object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update subscription
Namespace: microsoft.graph

Update the properties of a [subscription](../resources/subscription.md) object.

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
PATCH /subscriptions/{subscriptionsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [subscription](../resources/subscription.md) object.

The following table shows the properties that are required when you update the [subscription](../resources/subscription.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|resource|String|**TODO: Add Description**|
|changeType|String|**TODO: Add Description**|
|clientState|String|**TODO: Add Description**|
|notificationUrl|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|applicationId|String|**TODO: Add Description**|
|creatorId|String|**TODO: Add Description**|
|includeResourceData|Boolean|**TODO: Add Description**|
|lifecycleNotificationUrl|String|**TODO: Add Description**|
|encryptionCertificate|String|**TODO: Add Description**|
|encryptionCertificateId|String|**TODO: Add Description**|
|latestSupportedTlsVersion|String|**TODO: Add Description**|
|notificationQueryOptions|String|**TODO: Add Description**|
|notificationContentType|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [subscription](../resources/subscription.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_subscription"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/subscriptions/{subscriptionsId}
Content-Type: application/json
Content-length: 548

{
  "@odata.type": "#microsoft.graph.subscription",
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
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

