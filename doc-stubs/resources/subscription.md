---
title: "subscription resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# subscription resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subscriptions](../api/subscription-list.md)|[subscription](../resources/subscription.md) collection|Get a list of the [subscription](../resources/subscription.md) objects and their properties.|
|[Create subscription](../api/subscription-post-subscriptions.md)|[subscription](../resources/subscription.md)|Create a new [subscription](../resources/subscription.md) object.|
|[Get subscription](../api/subscription-get.md)|[subscription](../resources/subscription.md)|Read the properties and relationships of a [subscription](../resources/subscription.md) object.|
|[Update subscription](../api/subscription-update.md)|[subscription](../resources/subscription.md)|Update the properties of a [subscription](../resources/subscription.md) object.|
|[Delete subscription](../api/subscription-delete.md)|None|Deletes a [subscription](../resources/subscription.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationId|String|**TODO: Add Description**|
|changeType|String|**TODO: Add Description**|
|clientState|String|**TODO: Add Description**|
|creatorId|String|**TODO: Add Description**|
|encryptionCertificate|String|**TODO: Add Description**|
|encryptionCertificateId|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|includeResourceData|Boolean|**TODO: Add Description**|
|latestSupportedTlsVersion|String|**TODO: Add Description**|
|lifecycleNotificationUrl|String|**TODO: Add Description**|
|notificationContentType|String|**TODO: Add Description**|
|notificationQueryOptions|String|**TODO: Add Description**|
|notificationUrl|String|**TODO: Add Description**|
|resource|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.subscription",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subscription",
  "id": "String (identifier)",
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

