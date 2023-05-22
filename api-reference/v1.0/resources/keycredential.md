---
title: "keyCredential resource type"
description: "Contains a key credential associated with an application or a service principal. The keyCredentials property of the application and servicePrincipal entities is a collection of keyCredential."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "madansr7"
---

# keyCredential resource type

Namespace: microsoft.graph

Contains a key credential associated with an application or a service principal. The **keyCredentials** property of the [application](application.md) and [servicePrincipal](serviceprincipal.md) entities is a collection of **keyCredential**.

To add a keyCredential using Microsoft Graph, see [Add a certificate to an app using Microsoft Graph](/graph/applications-how-to-add-certificate).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customKeyIdentifier|Binary| A 40-character binary type that can be used to identify the credential. Optional. When not provided in the payload, defaults to the thumbprint of the certificate. |
| displayName | String | Friendly name for the key. Optional. |
|endDateTime|DateTimeOffset|The date and time at which the credential expires. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|key|Binary| The certificate's raw data in byte array converted to Base64 string. Returned only on `$select` for a single object, that is, `GET applications/{applicationId}?$select=keyCredentials` or `GET servicePrincipals/{servicePrincipalId}?$select=keyCredentials`; otherwise, it is always `null`. |
|keyId|Guid|The unique identifier (GUID) for the key.|
|startDateTime|DateTimeOffset|The date and time at which the credential becomes valid.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|type|String|The type of key credential; for example, `Symmetric`, `AsymmetricX509Cert`.|
|usage|String|A string that describes the purpose for which the key can be used; for example, `Verify`.|

## JSON representation

The following is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.keyCredential"
}-->

```json
{
  "@odata.type": "#microsoft.graph.keyCredential",
  "customKeyIdentifier": "Binary",
  "displayName": "String",
  "endDateTime": "String (timestamp)",
  "key": "Binary",
  "keyId": "Guid",
  "startDateTime": "String (timestamp)",
  "type": "String",
  "usage": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "keyCredential resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

