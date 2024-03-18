---
title: "analyzedEmailAttachment resource type"
description: Represents an attachment to an analyzed email.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
---

# analyzedEmailAttachment resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attachment to an analyzed email.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detonationDetails|[microsoft.graph.security.detonationDetails](../resources/security-detonationdetails.md)|The detonation details of the attachment.|
|fileName|String|The name of the attachment in the email.|
|fileType|String|The type of the attachment in the email.|
|sha256|String|The SHA256 file hash of the attachment.|
|threatName|String|The threat name associated with the threat type.|
|threatType|microsoft.graph.security.threatType|The threat type associated with the attachment. The possible values are: `unknown`, `spam`, `malware`, `phishing`, `none`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailAttachment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailAttachment",
  "fileName": "String",
  "fileType": "String",
  "threatType": "String",
  "threatName": "String",
  "sha256": "String",
  "detonationDetails": {
    "@odata.type": "microsoft.graph.security.detonationDetails"
  }
}
```

