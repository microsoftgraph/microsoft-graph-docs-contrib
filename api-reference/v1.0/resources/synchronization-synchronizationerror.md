---
title: "synchronizationError resource type"
description: "Represents an error that occurred during the synchronization process."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# synchronizationError resource type

Namespace: microsoft.graph

Represents an error that occurred during the synchronization process.

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|code|String| The error code. For example, `AzureDirectoryB2BManagementPolicyCheckFailure`. |
|message|String| The error message. For example, `Policy permitting auto-redemption of invitations not configured`.  |
|tenantActionable|Boolean| The action to take to resolve the error. For example, `false`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationError"
}-->

```json
{
  "code": "String",
  "message": "String",
  "tenantActionable": "Boolean"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


