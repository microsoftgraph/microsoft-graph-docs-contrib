---
title: "analyzedEmailAttachment resource type"
description: Represents an attachment to an analyzed email.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
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
|fileSize|Int32|Size of the file.|
|fileExtension|String|Extension of the file.|
|malwareFamily|String|The threat name associated with the threat type.|
|sha256|String|The SHA256 file hash of the attachment.|
|threatType|microsoft.graph.security.threatType|The threat type associated with the attachment. The possible values are: `unknown`, `spam`, `malware`, `phishing`, `none`, `unknownFutureValue`.|
|tenantAllowBlockListDetailInfo|String|Details of entries in tenant allow/block list configured by tenant.|

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
  "fileSize": "Integer",
  "fileExtension": "String",
  "threatType": "String",
  "malwareFamily": "String",
  "tenantAllowBlockListDetailInfo": "String",
  "sha256": "String",
  "detonationDetails": {
    "@odata.type": "microsoft.graph.security.detonationDetails"
  }
}
```

