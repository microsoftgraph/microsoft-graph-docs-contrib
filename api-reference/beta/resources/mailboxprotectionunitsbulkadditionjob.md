---
title: "mailboxProtectionUnitsBulkAdditionJob resource type"
description: "Represents the list of mailboxes and directory object IDs of Exchange users to be added into the corresponding Exchange protection policy."
author: "neminbshah"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 10/11/2024
---

# mailboxProtectionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a **mailboxProtectionUnitsBulkAdditionJob** associated with a [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md). It contains a list of email addresses and a list of directory object IDs to be added to the Exchange Protection Policy for backup.

Inherits from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangeprotectionpolicy-list-mailboxprotectionunitsbulkadditionjobs.md)|[mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) collection|Get a list of [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) objects and their properties.|
|[Create](../api/mailboxprotectionunitsbulkadditionjobs-post.md)|[mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md)|Create a new [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md).|
|[Get](../api/mailboxprotectionunitsbulkadditionjobs-get.md)|[mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md)|Read the properties and relationships of a [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the job.|
|createdDateTime|DateTimeOffset|The date and time that the job was created.|
|directoryObjectIds|String collection|The list of Exchange **directoryObjectIds** to add to the Exchange protection policy.|
|displayName|String|The name of the job.|
|error|[publicError](../resources/publicerror.md)|Contains error details if any email address resolution fails.|
|id|String|The unique identifier of the job associated with the Exchange protection policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the job.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification to the job.|
|mailboxes|String collection|The list of Exchange email addresses to add to the Exchange protection policy.|
|status|[protectionUnitsBulkJobStatus](../resources/protectionunitsbulkjobbase.md#protectionunitsbulkjobstatus-values )|Status of the job. The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, and  `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxProtectionUnitsBulkAdditionJob",
  "baseType": "microsoft.graph.protectionUnitsBulkJobBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxProtectionUnitsBulkAdditionJob",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "mailboxes": [
    "String"
   ],
  "directoryObjectIds": [
    "String"
   ]
}
```
