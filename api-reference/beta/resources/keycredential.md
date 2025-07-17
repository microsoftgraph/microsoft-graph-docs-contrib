---
title: "keyCredential resource type"
description: "Contains a key credential associated with an application or a service principal. The keyCredentials property of the application and servicePrincipal entities is a collection of keyCredential."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "madansr7"
ms.date: 09/27/2024
---

# keyCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains a key credential associated with an application or a service principal. The **keyCredentials** property of the [application](application.md) and [servicePrincipal](serviceprincipal.md) entities is a collection of **keyCredential**.

To add a keyCredential using Microsoft Graph, see [Add a certificate to an app using Microsoft Graph](/graph/applications-how-to-add-certificate).

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|customKeyIdentifier|Binary| A 40-character binary type that can be used to identify the credential. Optional. When not provided in the payload, defaults to the thumbprint of the certificate. |
| displayName | String | The friendly name for the key, with a maximum length of 90 characters. Longer values are accepted but shortened. Optional. |
|endDateTime|DateTimeOffset|The date and time at which the credential expires. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|key|Binary| Value for the key credential. Should be a Base64 encoded value. Returned only on `$select` for a single object, that is, `GET applications/{applicationId}?$select=keyCredentials` or `GET servicePrincipals/{servicePrincipalId}?$select=keyCredentials`; otherwise, it's always `null`. <br/><br> From a *.cer* certificate, you can read the key using the **Convert.ToBase64String()** method. For more information, see [Get the certificate key](/graph/applications-how-to-add-certificate). |
|keyId|Guid|The unique identifier for the key.|
|startDateTime|DateTimeOffset|The date and time at which the credential becomes valid.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|type|String|The type of key credential; for example, `Symmetric`, `AsymmetricX509Cert`, or `X509CertAndPassword`.|
|usage|String|A string that describes the purpose for which the key can be used; for example, `None`​, `Verify`​, `PairwiseIdentifier`​, `Delegation`​, `Decrypt`​, `Encrypt`​, `HashedIdentifier`​, `SelfSignedTls`, or `Sign`. <br/><br/>If **usage** is `Sign`​, the **type** should be `X509CertAndPassword`​, and the **passwordCredentials**​ for signing should be defined.|

## Relationships

None.


## JSON representation

The following JSON representation shows the resource type.

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


