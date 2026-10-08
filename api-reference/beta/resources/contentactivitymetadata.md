---
title: "contentActivityMetadata resource type"
description: "Represents metadata for a content entry that records the outcome of enforcement after a DLP policy match."
author: "zhengnlu"
ms.date: 05/13/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentActivityMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a content entry that records the outcome of enforcement after a DLP policy match.

Inherits from [processContentMetadataBase](../resources/processcontentmetadatabase.md).

## Properties

| Property         | Type                                                                                                     | Description                                                                                                           |
| :--------------- | :------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------- |
| content          | [contentBase](../resources/contentbase.md)  | Represents the actual content, either as text ([textContent](../resources/textcontent.md)) or binary data ([binaryContent](../resources/binarycontent.md)). Optional if metadata alone is sufficient for policy evaluation. **Do not use for [Create contentActivity](../api/activitiescontainer-post-contentactivities.md).** Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
| contentCategory  | microsoft.graph.contentCategory | The type of content. The possible values are: `none`, `ai`, `unknownFutureValue`. The default value is `ai`, which refers to AI-generated content. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md). |
| correlationId    | String                                                                         | An identifier used to group multiple related content entries; for example, different parts of the same file upload or messages in a conversation. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md). |
| createdDateTime  | DateTimeOffset                                                                 | The date and time when the original content was created; for example, file creation time or message sent time. Required. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md). |
| enforcementResultStatus          | enforcementResultStatus                                                                         | Indicates the enforcement outcome reported by the enforcement plane after a DLP policy match. The possible values are: `success`, `missingOrInvalidConfiguration`, `userOverride`, `agentFailure`, `enforcementTimeout`, `oSOverride`, `processNonExistent`, `other`.                                     |
| identifier       | String                                                                         | A unique identifier for this specific content entry within the context of the calling application or the enforcement plane; for example, message ID, file path, or file URL. Required. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
| isTruncated      | Boolean                                                                        | Indicates whether the provided **content** was shortened from its original form; for example, due to size limits. Required. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
| length           | Int64                                                                          | The length of the original content in bytes. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md). |
| modifiedDateTime | DateTimeOffset                                                                 | Date and time when the original content was last modified. For ephemeral content, such as messages, this property might be the same as **createdDateTime**. Required. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
| name             | String                                                                         | A descriptive name for the content; for example, file name, web page title, or chat message. Required. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
| recordType       | [microsoft.graph.security.auditLogRecordType](../resources/security-auditlogrecordtype.md)                                    | The type of operation indicated by the record. Currently reserved to indicate `ComplianceDLPEnforcement`. |
| sequenceNumber   | Int64                                                                          | A sequence number that indicates the order in which content was generated or should be processed. Required when **correlationId** is used. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).            |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentActivityMetadata",
  "baseType": "microsoft.graph.processContentMetadataBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.contentActivityMetadata",
  "content": { "@odata.type": "microsoft.graph.binaryContent" },
  "contentCategory": "String",
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "enforcementResultStatus": "String",
  "identifier": "String", 
  "isTruncated": "Boolean",
  "length": "Int64",
  "modifiedDateTime": "String (timestamp)",
  "name": "String", 
  "recordType": "String",
  "sequenceNumber": "Int64"
}
```
