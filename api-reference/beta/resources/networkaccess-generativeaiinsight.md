---
title: "generativeAIInsight resource type"
description: "Represents a resource that models generative AI activity detected by Global Secure Access, covering both MCP protocol interactions and generative AI prompt usage."
author: "miritsadon"
ms.date: 03/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# generativeAIInsight resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource that models generative AI activity detected by Global Secure Access, covering both MCP protocol interactions and generative AI prompt usage.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-logs-list-generativeaiinsights.md)|[microsoft.graph.networkaccess.generativeAIInsight](../resources/networkaccess-generativeaiinsight.md) collection|Get a list of [generativeAIInsight](../resources/networkaccess-generativeaiinsight.md) objects and their properties for Global Secure Access traffic insights.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|microsoft.graph.networkaccess.applicationActivity|The high-level activity type for this insight. The possible values are: `none`, `prompt`, `mcp`, `unknownFutureValue`. Supports `$filter` (`eq`) and `$orderby`.|
|content|String|The prompt text or content captured for this insight. Supports `$filter` (`eq`) and `$orderby`.|
|createdDateTime|DateTimeOffset|The date and time when the insight was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Supports `$filter` (`eq`) and `$orderby`.|
|destinationUrl|String|The destination URL associated with this insight. Supports `$filter` (`eq`) and `$orderby`.|
|eventId|String|The unique identifier for the event. Supports `$filter` (`eq`) and `$orderby`.|
|eventType|String|The event type that classifies the insight event. Supports `$filter` (`eq`) and `$orderby`.|
|mcpClientName|String|The MCP client name when the activity is related to MCP interactions. Supports `$filter` (`eq`) and `$orderby`.|
|mcpServerName|String|The MCP server name when the activity is related to MCP interactions. Supports `$filter` (`eq`) and `$orderby`.|
|sessionId|String|The session identifier used to correlate related events. Supports `$filter` (`eq`) and `$orderby`.|
|subactivity|String|A finer-grained classification of activity, such as `chat-interaction`, `tools/call`, or `data-analysis`. Supports `$filter` (`eq`) and `$orderby`.|
|transactionId|String|A unique identifier assigned to a specific transaction or operation. Key. Supports `$filter` (`eq`) and `$orderby`.|
|userPrincipalName|String|The UPN of the user associated with this insight. Supports `$filter` (`eq`) and `$orderby`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "transactionId",
  "@odata.type": "microsoft.graph.networkaccess.generativeAIInsight",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.generativeAIInsight",
  "activity": "String",
  "content": "String",
  "createdDateTime": "String (timestamp)",
  "destinationUrl": "String",
  "eventId": "String (identifier)",
  "eventType": "String",
  "mcpClientName": "String",
  "mcpServerName": "String",
  "sessionId": "String",
  "subactivity": "String",
  "transactionId": "String (identifier)",
  "userPrincipalName": "String"
}
```

## Related content

- [List generativeAIInsights](../api/networkaccess-logs-list-generativeaiinsights.md)
- [logs resource type](../resources/networkaccess-logs.md)
