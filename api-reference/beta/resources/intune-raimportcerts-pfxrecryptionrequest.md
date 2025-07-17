---
title: "pfxRecryptionRequest resource type"
description: "Intune Raimportcerts Pfxrecryptionrequest Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# pfxRecryptionRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List pfxRecryptionRequests](../api/intune-raimportcerts-pfxrecryptionrequest-list.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) collection|List properties and relationships of the [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) objects.|
|[Get pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-get.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md)|Read properties and relationships of the [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) object.|
|[Create pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-create.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md)|Create a new [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) object.|
|[Delete pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-delete.md)|None|Deletes a [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md).|
|[Update pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-update.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md)|Update the properties of a [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|Guid||
|userId|Guid||
|deviceId|Guid||
|profileId|Guid||
|thumbprint|String||
|deviceKeyThumbprint|String||
|status|Int32||
|sourceType|Int32||
|createdTime|DateTimeOffset||
|lastModifiedTime|DateTimeOffset||
|isDeleted|Boolean||
|eTag|String||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pfxRecryptionRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pfxRecryptionRequest",
  "tenantId": "Guid",
  "userId": "Guid",
  "deviceId": "Guid",
  "profileId": "Guid",
  "thumbprint": "String",
  "deviceKeyThumbprint": "String",
  "status": 1024,
  "sourceType": 1024,
  "createdTime": "String (timestamp)",
  "lastModifiedTime": "String (timestamp)",
  "isDeleted": true,
  "eTag": "String"
}
```