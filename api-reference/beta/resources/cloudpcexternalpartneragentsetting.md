---
title: "cloudPcExternalPartnerAgentSetting resource type"
description: "Represents the agent settings of external partner."
author: "XunZhangSZ"
ms.date: 01/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcExternalPartnerAgentSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the agent settings of external partner. This setting is used to deploy agent action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentSha256|String|The hash value of agent file by sha256 algorithm.|
|agentUrl|String|The download link url of the agent, when admin sets this url, then partner can call deploy agent API to deploy this agent to targeted Cloud PCs. The format is like this: `https://www.external-partner.com/resources/agents/exampleAgentFile.exe`|
|autoDeploymentEnabled|Boolean|Indicates whether partner agent auto deployment is enabled. When true, then the partner agent will be deployed after the Cloud PC is provisioned. When false, auto deployment isn't performed. Default value is `false`|
|installParameters|String collection|The install command parameters to run the agent install command. The format is like this: `["/p paramValue", "/quiet"]`|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcExternalPartnerAgentSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartnerAgentSetting",
  "agentUrl": "String",
  "agentSha256": "String",
  "installParameters": [
    "String"
  ],
  "autoDeploymentEnabled": "Boolean"
}
```
