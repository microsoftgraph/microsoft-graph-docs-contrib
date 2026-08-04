---
title: "createAlertInput resource type"
description: "Input parameters for the createAlert action that combine alert metadata and creation-specific options in one request object."
author: "a-merberg"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# createAlertInput resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Input parameters for the [createAlert](../api/security-alert-createalert.md) action that combine alert metadata and creation-specific options in one request object. This complex type replaces the [manualAlert](security-manualalert.md) derived-entity request shape and avoids requiring callers to send `@odata.type` annotations.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|title|String|Title of the alert. Required.|
|severity|[microsoft.graph.security.alertSeverity](../resources/enums.md#alertseverity-values)|Severity level of the alert. Required. The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|description|String|Detailed description of the alert. Required.|
|category|String|MITRE ATT&CK category for the alert. Required.|
|recommendedActions|String|Recommended remediation actions for the alert. Optional.|
|mitreTechniques|String collection|MITRE ATT&CK technique identifiers associated with the alert. Optional.|
|linkToIncident|Int64|Incident ID to link the alert to. Use `0` or omit the value to create a new incident. Optional.|
|isExcludedFromCorrelation|Boolean|Whether the alert is excluded from automatic correlation. Optional; defaults to `false`.|
|sentinelWorkspace|String|Microsoft Sentinel workspace identifier used for workspace routing. Optional.|
|entityDefinitions|[microsoft.graph.security.entityDefinition](../resources/security-entitydefinition.md) collection|Inline entity definitions that associate entities with the alert. Required.|

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
  "title": "String",
  "severity": "String",
  "description": "String",
  "category": "String",
  "recommendedActions": "String",
  "mitreTechniques": ["String"],
  "linkToIncident": 0,
  "isExcludedFromCorrelation": false,
  "sentinelWorkspace": "String",
  "entityDefinitions": [
    {
      "@odata.type": "microsoft.graph.security.entityDefinition"
    }
  ]
}
```