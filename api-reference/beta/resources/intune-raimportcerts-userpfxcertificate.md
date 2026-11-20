---
title: "userPFXCertificate resource type"
description: "Entity that encapsulates all information required for a user's PFX certificates."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userPFXCertificate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that encapsulates all information required for a user's PFX certificates.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userPFXCertificates](../api/intune-raimportcerts-userpfxcertificate-list.md)|[userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md) collection|List properties and relationships of the [userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md) objects.|
|[Get userPFXCertificate](../api/intune-raimportcerts-userpfxcertificate-get.md)|[userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md)|Read properties and relationships of the [userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md) object.|
|[Create userPFXCertificate](../api/intune-raimportcerts-userpfxcertificate-create.md)|[userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md)|Create a new [userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md) object.|
|[Delete userPFXCertificate](../api/intune-raimportcerts-userpfxcertificate-delete.md)|None|Deletes a [userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md).|
|[Update userPFXCertificate](../api/intune-raimportcerts-userpfxcertificate-update.md)|[userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md)|Update the properties of a [userPFXCertificate](../resources/intune-raimportcerts-userpfxcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date/time when this PFX certificate was imported.|
|encryptedPfxBlob|Binary|Encrypted PFX blob.|
|encryptedPfxPassword|String|Encrypted PFX password.|
|expirationDateTime|DateTimeOffset|Certificate's validity expiration date/time.|
|id|String|Unique identifier for the PFX certificate.|
|intendedPurpose|[userPfxIntendedPurpose](../resources/intune-raimportcerts-userpfxintendedpurpose.md)|Certificate's intended purpose from the point-of-view of deployment. Possible values are: `unassigned`, `smimeEncryption`, `smimeSigning`, `vpn`, `wifi`.|
|keyAlgorithm|userPfxCertificateKeyAlgorithm|Public key algorithm inferred from the imported PFX certificate. Read-only. Nullable. The possible values are: `unknown`, `rsa`, `ecc`, `unknownFutureValue`. Existing records can return `unknown`, `null`, or omit this property until the service evaluates the certificate.|
|keyName|String|Name of the key (within the provider) used to encrypt the blob.|
|lastModifiedDateTime|DateTimeOffset|Date/time when this PFX certificate was last modified.|
|paddingScheme|[userPfxPaddingScheme](../resources/intune-raimportcerts-userpfxpaddingscheme.md)|Padding scheme used by the provider during encryption/decryption. Possible values are: `none`, `pkcs1`, `oaepSha1`, `oaepSha256`, `oaepSha384`, `oaepSha512`.|
|providerName|String|Crypto provider used to encrypt this blob.|
|startDateTime|DateTimeOffset|Certificate's validity start date/time.|
|thumbprint|String|SHA-1 thumbprint of the PFX certificate.|
|userPrincipalName|String|User Principal Name of the PFX certificate.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userPFXCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userPFXCertificate",
  "id": "String (identifier)",
  "keyAlgorithm": "String",
  "thumbprint": "String",
  "intendedPurpose": "String",
  "userPrincipalName": "String",
  "startDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "providerName": "String",
  "keyName": "String",
  "paddingScheme": "String",
  "encryptedPfxBlob": "binary",
  "encryptedPfxPassword": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```