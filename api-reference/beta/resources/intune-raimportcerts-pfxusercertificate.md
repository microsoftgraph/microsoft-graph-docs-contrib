---
title: "pfxUserCertificate resource type"
description: "Intune Raimportcerts Pfxusercertificate Resources ."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# pfxUserCertificate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List pfxUserCertificates](../api/intune-raimportcerts-pfxusercertificate-list.md)|[pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) collection|List properties and relationships of the [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) objects.|
|[Get pfxUserCertificate](../api/intune-raimportcerts-pfxusercertificate-get.md)|[pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md)|Read properties and relationships of the [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) object.|
|[Create pfxUserCertificate](../api/intune-raimportcerts-pfxusercertificate-create.md)|[pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md)|Create a new [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) object.|
|[Delete pfxUserCertificate](../api/intune-raimportcerts-pfxusercertificate-delete.md)|None|Deletes a [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md).|
|[Update pfxUserCertificate](../api/intune-raimportcerts-pfxusercertificate-update.md)|[pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md)|Update the properties of a [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|Guid||
|userId|Guid||
|thumbprint|String||
|userUpn|String||
|encryptedPfxBlob|String||
|encryptedPfxPassword|String||
|certStartDate|DateTimeOffset||
|certExpirationDate|DateTimeOffset||
|providerName|String||
|encryptionKeyName|String||
|paddingScheme|Int32||
|status|Int32||
|intendedPurpose|Int32||
|createdTime|DateTimeOffset||
|isDeleted|Boolean||
|lastModifiedTime|DateTimeOffset||
|eTag|String||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pfxUserCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pfxUserCertificate",
  "tenantId": "Guid",
  "userId": "Guid",
  "thumbprint": "String",
  "userUpn": "String",
  "encryptedPfxBlob": "String",
  "encryptedPfxPassword": "String",
  "certStartDate": "String (timestamp)",
  "certExpirationDate": "String (timestamp)",
  "providerName": "String",
  "encryptionKeyName": "String",
  "paddingScheme": 1024,
  "status": 1024,
  "intendedPurpose": 1024,
  "createdTime": "String (timestamp)",
  "isDeleted": true,
  "lastModifiedTime": "String (timestamp)",
  "eTag": "String"
}
```