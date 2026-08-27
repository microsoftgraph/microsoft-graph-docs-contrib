---
title: "createAlertInput resource type"
description: "Represents the input for the createAlert action, including alert metadata and inline entity definitions."
author: "a-merberg"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# createAlertInput resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Input parameters for the [createAlert](../api/security-alert-createalert.md) action, including alert metadata and inline entity definitions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String|MITRE ATT&CK category for the alert.|
|description|String|Free-text explanation of the suspicious activity or policy violation.|
|entityDefinitions|[microsoft.graph.security.entityDefinition](../resources/security-entitydefinition.md) collection|Inline entity definitions that associate entities with the alert.|
|isExcludedFromCorrelation|Boolean|Whether the alert is excluded from automatic correlation. Defaults to `false`.|
|linkToIncident|Int64|Incident ID to link the alert to. Use `0` or omit the value to create a new incident.|
|mitreTechniques|String collection|MITRE ATT&CK technique identifiers associated with the alert.|
|recommendedActions|String|Recommended remediation actions for the alert.|
|sentinelWorkspace|String|Microsoft Sentinel workspace identifier used for workspace routing.|
|severity|[microsoft.graph.security.alertSeverity](../resources/enums.md#alertseverity-values)|Severity level of the alert. The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|title|String|Short display name shown for the alert in the Defender portal.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.createAlertInput"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.createAlertInput",
  "category": "String",
  "description": "String",
  "entityDefinitions": [
    {
      "@odata.type": "microsoft.graph.security.entityDefinition"
    }
  ],
  "isExcludedFromCorrelation": "Boolean",
  "linkToIncident": "Int64",
  "mitreTechniques": ["String"],
  "recommendedActions": "String",
  "sentinelWorkspace": "String",
  "severity": "String",
  "title": "String"
}
```
