---
title: "healthIssue resource type"
description: "Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/20/2024
---

# healthIssue resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identityContainer-list-healthissues.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|Get a list of [healthIssue](../resources/security-healthissue.md) objects and their properties.|
|[Get](../api/security-healthissue-get.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Read the properties and relationships of a [healthIssue](../resources/security-healthissue.md) object.|
|[Update](../api/security-healthissue-update.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Update the properties of a [healthIssue](../resources/security-healthissue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInformation|String collection|Contains additional information about the issue, such as a list of items to fix.|
|createdDateTime|DateTimeOffset|The date and time of when the health issue was generated.|
|description|String|Contains more detailed information about the health issue.|
|displayName|String|The display name of the health issue.|
|domainNames|String collection|A list of the fully qualified domain names of the domains or the sensors the health issue is related to.|
|healthIssueType|[microsoft.graph.security.healthIssueType](#healthissuetype-values)|The type of the health issue. The possible values are: `sensor`, `global`, `unknownFutureValue`. For a list of all health issues and their identifiers, see [Microsoft Defender for Identity health issues](/defender-for-identity/health-alerts). |
|ID|String|A unique identifier that represents the health issue.|
|issueTypeId|String|The type identifier of the health issue. For a list of all health issues and their identifiers, see [Microsoft Defender for Identity health issues](/defender-for-identity/health-alerts).|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the health issue was last updated.|
|recommendations|String collection|This field contains a list of recommended actions that can be taken to resolve the issue effectively and efficiently. These actions might include how to investigate the issue further. Not limited to prewritten responses.|
|recommendedActionCommands|String collection|Contains a list of commands from the product's PowerShell module that can be used to resolve the issue, if available. If there aren't any commands that can be used to solve the issue, this field is empty. The commands, if present, provide a quick and efficient way to address the issue. The commands run in order for the single recommended fix.|
|sensorDNSNames|String collection|A list of the dns names of the sensors the health issue is related to.|
|severity|[microsoft.graph.security.healthIssueSeverity](#healthissueseverity-values)|The severity of the health issue. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[microsoft.graph.security.healthIssueStatus](#healthissuestatus-values)|The status of the health issue. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`.|

#### healthIssueSeverity values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| low | Low severity health issues usually indicate minor issues that don't have a significant impact on your environment. These issues require further investigation, but they usually don't require immediate action. |
| medium | Medium severity health issues indicate more significant issues that could potentially impact your environment. These issues may require further investigation and action to prevent any potential problems. |
| high | High severity health issues indicate critical issues that could have a severe impact on your environment. These issues require immediate attention and action. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

#### healthIssueStatus values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| open | The issue is open and should be addressed. |
| closed | The issue was addressed. Either someone manually closed the issue or took an action on the affected item, or it was closed automatically by the system. |
| suppressed | The operator suppressed the issue manually. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

#### healthIssueType values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| Sensor | The issue is on specific sensor. |
| Global | The issue is in the Defender for identity system configuration. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "ID",
  "@odata.type": "microsoft.graph.security.healthIssue",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "ID": "String (identifier)",
  "displayName": "String",
  "healthIssueType": "String",
  "issueTypeId": "String",
  "severity": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "domainNames": [
    "String"
  ],
  "sensorDNSNames": [
    "String"
  ],
  "description": "String",
  "recommendations": [
    "String"
  ],
  "recommendedActionCommands": [
    "String"
  ],
  "additionalInformation": [
    "String"
  ]
}
```

