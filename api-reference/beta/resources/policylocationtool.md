---
title: "policyLocationTool resource type"
description: "Represents a tool location used to scope Microsoft Purview Data Loss Prevention (DLP) policies for Agent-to-Tool (A2T) scenarios."
author: "psanyal"
ms.date: 06/25/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyLocationTool resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tool location used to scope Microsoft Purview Data Loss Prevention (DLP) policies.

In Agent-to-Tool (A2T) scenarios, a **policyLocationTool** identifies the external tool, connector, or Model Context Protocol (MCP) tool that participates in a content transfer. This resource is used when computing protection scopes and evaluating content against Microsoft Purview policies.

A tool is identified by its tool identifier. For MCP tools, use the format `<toolId>@mcp`. For example, `search@mcp` identifies an MCP tool named `search`.

A value of `All` represents all tools and can be used in protection scopes to apply a policy to every tool. Tool exclusions can be represented separately through `locationExclusions` in a protection scope.

Inherits from [policyLocation](../resources/policylocation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|value|String|The identifier of the tool to which the policy applies. For Model Context Protocol (MCP) tools, specify the identifier in the format `<toolId>@mcp`, for example, `search@mcp`. Specify `All` to match every tool. Inherited from [policyLocation](../resources/policylocation.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyLocationTool"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.policyLocationTool",
  "value": "String"
}
```