---
title: "trustFrameworkKeySet resource type"
description: "Represents a trust framework keyset/policy key."
author: "gysingh"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/19/2024
---

# trustFrameworkKeySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a trust framework keyset/policy key. The Identity Experience framework stores the secrets, which can be used in the policies. The secrets can be passwords, certificates, or other files. In the portal, these entities are shown as `Policy keys`. The Identity Experience framework uses the JSON Web Key (JWK) standard for the keysets. This entity follows the format specified in [RFC 7517 Section 5](https://tools.ietf.org/html/rfc7517#section-5).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/trustframework-list-keysets.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md) collection|Get a list of the [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) objects and their properties.|
|[Create](../api/trustframework-post-keysets.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Create a new [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Get](../api/trustframeworkkeyset-get.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Read the properties and relationships of a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Update](../api/trustframeworkkeyset-update.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Update the properties of a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Generate key](../api/trustframeworkkeyset-generatekey.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|Generate a key in keyset.|
|[Upload secret](../api/trustframeworkkeyset-uploadsecret.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|Upload a string based secret.|
|[Get active key](../api/trustframeworkkeyset-getactivekey.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|Get currently active key in the keyset.|
|[Upload X.509 certificate](../api/trustframeworkkeyset-uploadcertificate.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|Upload a X.509 certificate.|
|[Upload PKCS12 certificate](../api/trustframeworkkeyset-uploadpkcs12.md)|[trustFrameworkKey](../resources/trustframeworkkey.md)|Upload a PKCS12 format certificate.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the trustframework keyset Inherited from [entity](../resources/entity.md).|
|keys|[trustFrameworkKey](../resources/trustframeworkkey.md) collection|A collection of the keys.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|keys_v2|[trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) collection|A collection of the keys.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trustFrameworkKeySet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustFrameworkKeySet",
  "id": "String (identifier)",
  "keys": [
    {
      "@odata.type": "microsoft.graph.trustFrameworkKey"
    }
  ]
}
```

