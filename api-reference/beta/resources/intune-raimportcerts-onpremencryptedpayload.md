---
title: "onPremEncryptedPayload resource type"
description: "Intune Raimportcerts Onpremencryptedpayload Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# onPremEncryptedPayload resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List onPremEncryptedPayloads](../api/intune-raimportcerts-onpremencryptedpayload-list.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) collection|List properties and relationships of the [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) objects.|
|[Get onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-get.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md)|Read properties and relationships of the [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) object.|
|[Create onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-create.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md)|Create a new [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) object.|
|[Delete onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-delete.md)|None|Deletes a [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md).|
|[Update onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-update.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md)|Update the properties of a [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|Guid||
|userId|Guid||
|deviceId|Guid||
|payloadId|Guid||
|deviceKeyThumbprint|String||
|cert1PayloadUUID|String||
|cert2PayloadUUID|String||
|cert3PayloadUUID|String||
|plistTemplate|String||
|encryptedBlob|Binary||
|payloadVersion|Int32||
|status|Int32||
|createdTime|DateTimeOffset||
|lastModifiedTime|DateTimeOffset||
|eTag|String||
|isDeleted|Boolean||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremEncryptedPayload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremEncryptedPayload",
  "tenantId": "Guid",
  "userId": "Guid",
  "deviceId": "Guid",
  "payloadId": "Guid",
  "deviceKeyThumbprint": "String",
  "cert1PayloadUUID": "String",
  "cert2PayloadUUID": "String",
  "cert3PayloadUUID": "String",
  "plistTemplate": "String",
  "encryptedBlob": "binary",
  "payloadVersion": 1024,
  "status": 1024,
  "createdTime": "String (timestamp)",
  "lastModifiedTime": "String (timestamp)",
  "eTag": "String",
  "isDeleted": true
}
```