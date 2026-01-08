---
title: "certificateBasedAuthPki resource type"
description: "The collection of public key infrastructure instances for the certificate based authentication."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/15/2024
toc.title: Certificate-based auth PKI
---

# certificateBasedAuthPki resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of public key infrastructure (PKI) instances for the [certificate-based authentication method](../resources/x509certificateauthenticationmethodconfiguration.md). You must enable the certificate-based authentication method in the tenant to manage these PKI instances.

Inherits from [directoryObject](../resources/directoryobject.md).

For more information, see [Set up Microsoft Entra certificate-based authentication](/entra/identity/authentication/how-to-certificate-based-authentication).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/publickeyinfrastructureroot-list-certificatebasedauthconfigurations.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md) collection|Get a list of the [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects and their properties.|
|[Create](../api/publickeyinfrastructureroot-post-certificatebasedauthconfigurations.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md)|Create a new [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Get](../api/certificatebasedauthpki-get.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md)|Read the properties and relationships of a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Update](../api/certificatebasedauthpki-update.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md)|Update the properties of a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Delete](../api/publickeyinfrastructureroot-delete-certificatebasedauthconfigurations.md)|None|Delete a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Upload](../api/certificatebasedauthpki-upload.md)|None|Download the PKI file and populate the certificateAuthorities.|
| [List deleted items](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve the [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects deleted in the tenant in the last 30 days. |
| [Get deleted item](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) collection | Retrieve a deleted [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object by ID. |
| [Restore deleted item](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) collection | Restore a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object deleted in the tenant in the last 30 days. |
| [Permanently delete item](../api/directory-deleteditems-delete.md) | [directoryObject](directoryobject.md) collection | Permanently delete a deleted [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object from the tenant. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|The date and time when the object was soft deleted. Inherited from base class and `null` for objects that are not deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|displayName|String|The name of the object. Maximum length is 256 characters.|
|id|String|The ID of the object. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the object was created or last modified.|
|status|String|The status of any asynchronous jobs runs on the object which can be upload or delete.|
|statusDetails|String|The status details of the upload/deleted operation of PKI (Public Key Infrastructure).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md) collection|The collection of certificate authorities contained in this public key infrastructure resource.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateBasedAuthPki",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "status": "String",
  "statusDetails": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

