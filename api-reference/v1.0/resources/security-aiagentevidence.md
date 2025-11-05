---
title: "aiAgentEvidence resource type"
description: "Represents an AI agent that's reported in the security detection alert."
ms.date: 11/02/2025
author: "ofirBinshtok"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
toc.title: AI agent evidence
---

# aiAgentEvidence resource type

Namespace: microsoft.graph.security

Represents an AI agent that's reported in the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|agentId|String|The unique identifier for the AI agent.|
|agentName|String|The display name for the AI agent.|
|hostingPlatformType|[microsoft.graph.security.aiAgentPlatform](#aiagentplatform-values)|Type of the platform the agent runs on. Possible values are: `unknown`, `azureAIFoundry`, `copilotStudio`, `copilot`, `unknownFutureValue`.|
|instructions|String|The instructions of the agent.|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|

### aiAgentPlatform values

|Member|Description|
|:-----|:----------|
|unknown|The platform value is unknown or not specified.|
|azureAIFoundry|The platform value is Azure AI Foundry.|
|copilotStudio|The platform value is Copilot Studio.|
|copilot|The platform value is Copilot.|
|unknownFutureValue|Evolvable enumeration value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aiAgentEvidence"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.aiAgentEvidence",
  "agentId": "String",
  "agentName": "String",
  "hostingPlatformType": "String",
  "instructions": "String"
}
```
