---
title: "sslCertificateEntity resource type"
description: "Entity related to an sslCertificate"
author: "nblankenau"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# sslCertificateEntity resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity related to an **sslCertificate**; specifically this is either an issuer or subject of the certificate.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[microsoft.graph.physicalAddress](../resources/physicaladdress.md)|A physical address of the entity.|
|alternateNames|String collection|Alternate names for this entity, which are part of the certificate. |
|commonName|String|A common name for this entity.|
|email|String|A email for this entity.|
|givenName|String|If the entity is a person, this is the person's given name (first name).|
|organizationName|String|If the entity is an organization, this is the organizations name.|
|organizationUnitName|String|If the entity is an organization, this communicates if a unit in the organization is named on the entity.|
|serialNumber|String|A serial number assigned to the entity; this is usually only available if the entity is the issuer.|
|surname|String|If the entity is a person, this is the person's surname (last name).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sslCertificateEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sslCertificateEntity",
  "commonName": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "email": "String",
  "givenName": "String",
  "organizationName": "String",
  "organizationUnitName": "String",
  "serialNumber": "String",
  "surname": "String",
  "alternateNames": [
    "String"
  ]
}
```

