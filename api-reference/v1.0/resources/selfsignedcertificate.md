---
title: "selfSignedCertificate resource type"
description: "Contains information about the public part of a signing certificate."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "alamaral"
---

# selfSignedCertificate resource type

Namespace: microsoft.graph

Contains the public part of a signing certificate. 

This resource type is the return type of the [addSelfSignedSigningCertificate](../api/serviceprincipal-addtokensigningcertificate.md) action. Service providers use the public part of the signing certificate to validate the issuer of the token.

## Properties
Property|Type|Description
----|--|---
|customKeyIdentifier|Binary| Custom key identifier. |
| displayName | String | The friendly name for the key. |
|endDateTime|DateTimeOffset|The date and time at which the credential expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|key|Binary| The value for the key credential. Should be a Base-64 encoded value. |
|keyId|Guid|The unique identifier (GUID) for the key.|
|startDateTime|DateTimeOffset|The date and time at which the credential becomes valid. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|type|String|The type of key credential. "AsymmetricX509Cert".|
|usage|String|A string that describes the purpose for which the key can be used. The possible value is `Verify`.|
|thumbprint| String | The thumbprint value for the key.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.selfSignedCertificate"
}-->

```json
{
  "@odata.type": "#microsoft.graph.selfSignedCertificate",
  "customKeyIdentifier": "String (Binary)",
  "displayName": "String",
  "endDateTime": "String (timestamp)",
  "key": "String (Binary)",
  "keyId": "Guid",
  "startDateTime": "String (timestamp)",
  "thumbprint": "String",
  "type": "String",
  "usage": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "selfSignedCertificate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

