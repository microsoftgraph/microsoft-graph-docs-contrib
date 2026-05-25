---
title: "emailDetails resource type"
description: "Represents the email notification configuration for an ownerless group policy."
author: "Ananya-Sharma"
ms.date: 04/22/2026
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: resourcePageType
---

# emailDetails resource type

Namespace: microsoft.graph

Represents the email notification configuration for an [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md). Contains the sender, subject, and body of the notification email sent to group members.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|String|The body content of the notification email in plain text format.|
|senderEmailAddress|String|The email address of the sender for notification emails. Shared mailboxes aren't supported.|
|subject|String|The subject line of the notification email.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailDetails",
  "senderEmailAddress": "String",
  "subject": "String",
  "body": "String"
}
```
