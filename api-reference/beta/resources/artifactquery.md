---
title: "artifactQuery resource type"
description: "Contains an expression that specifies the criteria for search."
author: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 07/27/2024
---

# artifactQuery resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains an expression that specifies the criteria for search.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|artifactType|[restorableArtifact](../resources/artifactquery.md#restorableartifact-values)|The type of artifact to search. The possible values are: `message`, `unknownFutureValue`.|
|queryExpression|String|Specifies criteria to retrieve artifacts.|

### queryExpression properties

The `queryExpression` property of the artifactQuery supports filtering restore points based on multiple criteria. You can combine multiple properties using logical operators to create complex search expressions.

The following table describes all supported properties for granular search queries.

| Property | Description | Value Type | Supported Operators | Wildcard Support |
|----------|-------------|------------|---------------------|------------------|
| Subject | The subject of the message or primary searchable string for other item types | String | -like, -and (up to 3) | * (after string) |
| Sender | Messages from the specified sender | Display name, Alias, SMTP address, or LegacyDN | -like | * (after string) |
| Participants | Messages with specified recipient in To, Bcc, or Cc fields | Display name, Alias, SMTP address, or LegacyDN | -like, -and (up to 3) | * (after string) |
| HasAttachment | Whether the message has an attachment | Boolean (true or false) | -eq | No |
| MessageKind | The mailbox item type for which to search | Enum: Email, Note, Task, Contact, Calendar | -eq | No |

#### Examples

Search for emails from a specific sender with attachments

```
(Sender -like 'abc@contoso.com') -and (HasAttachment -eq 'true')
```

Search for emails with specific subject keywords and multiple participants

```
(Subject -like 'Project Alpha*') -and (Participants -like 'john@contoso.com' -and Participants -like 'sarah@contoso.com')
```

Search for calendar events organized by a specific user

```
(MessageKind -eq 'Calendar') -and (Sender -like 'admin@contoso.com')
```

Search for contacts by name pattern

```
(MessageKind -eq 'Contact') -and (Subject -like 'Smith*')
```

Search for emails combining multiple criteria including message type, subject, sender, and attachments

```
(MessageKind -eq 'Email') -and (Subject -like 'Invoice*') -and (Sender -like 'vendor*') -and (HasAttachment -eq 'true')
```
### restorableArtifact values

|Member | Description |
|:------|:------------|
|message | Mailbox message.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.artifactQuery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.artifactQuery",
  "queryExpression": "String",
  "artifactType": "String"
}
```

