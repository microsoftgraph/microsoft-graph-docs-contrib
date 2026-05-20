---
title: "manualAlert resource type"
description: "Represents a manually created security alert in Microsoft 365 Defender."
author: "a-merberg"
ms.date: 05/18/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# manualAlert resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a manually created security alert in Microsoft 365 Defender. Enables security analysts to create custom alerts based on their investigations and findings. When a manual alert is created, the backend automatically creates a new incident to contain the alert, or links the alert to an existing incident if specified.

Inherits from [microsoft.graph.security.alert](../resources/security-alert.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/security-alert-post-manualalert.md)|[microsoft.graph.security.alert](../resources/security-alert.md)|Create a manual security alert with specified entities and metadata.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actorDisplayName|String|The adversary or activity group associated with this alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|additionalData|[microsoft.graph.security.dictionary](../resources/security-dictionary.md)|A collection of other alert properties, including user-defined properties. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|alertPolicyId|String|The ID of the policy that generated the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|alertWebUrl|String|URL for the alert page in the Microsoft 365 Defender portal. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|assignedTo|String|Owner of the alert, or null if no owner is assigned. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|categories|String collection|The attack kill-chain categories that the alert belongs to. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|category|String|The attack kill-chain category that the alert belongs to. Aligned with the MITRE ATT&CK framework. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|classification|[microsoft.graph.security.alertClassification](../resources/security-alert.md#alertclassification-values)|Specifies whether the alert represents a true threat. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|comments|[microsoft.graph.security.alertComment](../resources/security-alertcomment.md) collection|Array of comments created by the Security Operations (SecOps) team during the alert management process. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|createdDateTime|DateTimeOffset|Time when Microsoft 365 Defender created the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|customDetails|[microsoft.graph.security.dictionary](../resources/security-dictionary.md)|A dictionary of custom key-value pairs associated with the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|description|String|String value describing each alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|detectionSource|[microsoft.graph.security.detectionSource](../resources/security-detectionsource.md)|Detection technology or sensor that identified the notable component or activity. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|detectorId|String|The ID of the detector that triggered the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|determination|[microsoft.graph.security.alertDetermination](../resources/security-alert.md#alertdetermination-values)|Specifies the result of the investigation, whether the alert represents a true attack and if so, the nature of the attack. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|entityDefinitions|[microsoft.graph.security.entityDefinitionInput](../resources/security-entitydefinitioninput.md) collection|Collection of entity definitions associated with the alert. Must contain 1 to 100 items. Required for creation.|
|evidence|[microsoft.graph.security.alertEvidence](../resources/security-alertevidence.md) collection|Collection of evidence related to the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|firstActivityDateTime|DateTimeOffset|The earliest activity associated with the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|id|String|Unique identifier for the alert. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|incidentId|String|Unique identifier to represent the incident this alert resource is associated with. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|incidentWebUrl|String|URL for the incident page in the Microsoft 365 Defender portal. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|investigationState|[microsoft.graph.security.investigationState](../resources/security-alert.md#investigationstate-values)|The state of the investigation. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|isExcludedFromCorrelation|Boolean|When `true`, excludes the alert from automatic correlation. Default is `false`.|
|lastActivityDateTime|DateTimeOffset|The oldest activity associated with the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|lastUpdateDateTime|DateTimeOffset|Time when the alert was last updated at Microsoft 365 Defender. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|linkToIncident|Int64|ID of an existing incident to link to. If not provided, a new incident is created automatically.|
|mitreTechniques|String collection|The attack techniques, as aligned with the MITRE ATT&CK framework. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|productName|String|The name of the product which published this alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|providerAlertId|String|The ID of the alert as it appears in the security provider product that generated the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|recommendedActions|String|Recommended response and remediation actions to take in the event this alert was generated. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|resolvedDateTime|DateTimeOffset|Time when the alert was resolved. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|sentinelWorkspace|String|Sentinel workspace identifier for workspace routing.|
|serviceSource|[microsoft.graph.security.serviceSource](../resources/security-alert.md)|The service or product that created this alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|severity|[microsoft.graph.security.alertSeverity](../resources/security-alert.md#alertseverity-values)|Indicates the possible impact on assets. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|status|[microsoft.graph.security.alertStatus](../resources/security-alert.md)|The status of the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|systemTags|String collection|The system tags associated with the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|tenantId|String|The Microsoft Entra tenant the alert was created in. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|threatDisplayName|String|The threat associated with this alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|threatFamilyName|String|Threat family associated with this alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|
|title|String|Brief identifying string value describing the alert. Inherited from [microsoft.graph.security.alert](../resources/security-alert.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.manualAlert",
  "baseType": "microsoft.graph.security.alert",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.manualAlert",
  "id": "String (identifier)",
  "providerAlertId": "String",
  "incidentId": "String",
  "status": "String",
  "severity": "String",
  "classification": "String",
  "determination": "String",
  "serviceSource": "String",
  "detectionSource": "String",
  "productName": "String",
  "detectorId": "String",
  "tenantId": "String",
  "title": "String",
  "description": "String",
  "recommendedActions": "String",
  "category": "String",
  "categories": [
    "String"
  ],
  "assignedTo": "String",
  "alertWebUrl": "String",
  "incidentWebUrl": "String",
  "actorDisplayName": "String",
  "threatDisplayName": "String",
  "threatFamilyName": "String",
  "mitreTechniques": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "resolvedDateTime": "String (timestamp)",
  "firstActivityDateTime": "String (timestamp)",
  "lastActivityDateTime": "String (timestamp)",
  "comments": [
    {
      "@odata.type": "microsoft.graph.security.alertComment"
    }
  ],
  "evidence": [
    {
      "@odata.type": "microsoft.graph.security.alertEvidence"
    }
  ],
  "systemTags": [
    "String"
  ],
  "alertPolicyId": "String",
  "additionalData": {
    "@odata.type": "microsoft.graph.security.dictionary"
  },
  "customDetails": {
    "@odata.type": "microsoft.graph.security.dictionary"
  },
  "investigationState": "String",
  "linkToIncident": "Integer",
  "isExcludedFromCorrelation": "Boolean",
  "sentinelWorkspace": "String",
  "entityDefinitions": [
    {
      "@odata.type": "microsoft.graph.security.entityDefinitionInput"
    }
  ]
}
```

