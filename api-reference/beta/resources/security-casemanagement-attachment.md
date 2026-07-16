---
title: "attachment resource type"
description: "Represents metadata and content for a file attached to a case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# attachment resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata and content for a file attached to a [case](../resources/security-casemanagement-case.md).

Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-case-list-attachments.md)|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) collection|List attachments for a case.|
|[Create](../api/security-casemanagement-case-post-attachments.md)|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md)|Create an attachment for a case.|
|[Get](../api/security-casemanagement-attachment-get.md)|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md)|Read the properties and relationships of [microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) object.|
|[Update](../api/security-casemanagement-attachment-update.md)|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md)|Update an attachment object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The binary content stream for the attachment.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|description|String|The description of the attachment.|
|displayName|String|The display name of the attachment.|
|fileExtension|String|The file extension of the attachment.|
|fileSize|Int64|The size of the attachment in bytes.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|origin|[microsoft.graph.security.caseManagement.attachmentOrigin](../resources/security-casemanagement-attachmentorigin.md)|The origin reference for the attachment.|
|scanResult|[microsoft.graph.security.caseManagement.attachmentScanResult](#attachmentscanresult-values)|The malware scan result for the attachment.|

### attachmentScanResult values

|Member|Description|
|:---|:---|
|unscanned|The attachment hasn't been scanned.|
|noThreatsFound|No threats were found in the attachment.|
|malicious|The attachment was identified as malicious.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.attachment",
  "baseType": "microsoft.graph.security.caseManagement.caseManagementEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.attachment",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "displayName": "String",
  "description": "String",
  "fileSize": "Integer",
  "fileExtension": "String",
  "scanResult": "String",
  "origin": {
    "@odata.type": "#microsoft.graph.security.caseManagement.attachmentOrigin"
  },
  "content": "Stream"
}
```
