---
title: "healthIssue resource type"
description: "Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity have identified."
author: "NaamaAlmog"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
ms.date: 03/20/2024
---

# healthIssue resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource corresponds to the latest generation of health issues in the Microsoft Graph security API, Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity have identified.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List healthIssues](../api/security-list-healthissues.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|Get a list of the [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) objects and their properties.|
|[Get healthIssue](../api/security-healthissue-get.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Read the properties and relationships of a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object.|
|[Update healthIssue](../api/security-healthissue-update.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Update the properties of a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier to represent the health issue|
|displayName|String|The display name of the health issue|
|issueTypeId|String|The type identifier of the health issue. You can find a comprehensive list of all health issues and their identifiers at the following link: https://go.microsoft.com/fwlink/?linkid=2245397|
|healthIssueType|[microsoft.graph.security.healthIssueType](#HealthIssueType-values)|The type of the health issue. The possible values are: `sensor`, `global`, `unknownFutureValue`. You can find a comprehensive list of all health issues at the following link: https://go.microsoft.com/fwlink/?linkid=2245397|
|severity|[microsoft.graph.security.healthIssueSeverity](#healthIssueSeverity-values)|The severity of the health issue. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[microsoft.graph.security.healthIssueStatus](#HealthIssueStatus-values)|The status of the health issue. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date and time of when the health issue was generated|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the health issue was last updated|
|domainNames|String collection|List of the fully qualified domain name of the domains or the sensors the health issue is realated to|
|sensorDNSNames|String collection|List of the dns names of the sensors the health issue is realated to|
|description|String|More detailed information on the health issue|
|recommendations|String collection|This field contains a list of recommended actions that can be taken to resolve the issue. These actions may include instructions on how to investigate the issue further, and they are not limited to pre-written responses. The recommended actions are intended to provide guidance on how to address the issue effectively and efficiently.|
|recommendedActionCommands|String collection|This field may contain a list of commands from the product's PowerShell Module that can be used to resolve the issue, if available. If there are no commands that can be used to solve the issue, the field will be left empty. The commands, if present, are intended to provide a quick and efficient way to address the issue. These commands will be executed in order for the single recommended fix|
|additionalInformation|String collection|Additional information on the issue, such as a list of items to fix|

#### HealthIssueSeverity values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| low | Low severity health issues usually indicate minor issues that don't have a significant impact on your environment. These issues require further investigation, but they usually don't require immediate action. |
| medium | Medium severity health issues indicate more significant issues that could potentially impact your environment. These issues may require further investigation and action to prevent any potential problems. |
| high | High severity health issues indicate critical issues that could have a severe impact on your environment. These issues require immediate attention and action. |

#### HealthIssueStatus values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| open | The issue is opened and should be addressed. |
| closed | The issue was addressed, either by someone manually closing the issue, by taking an action on the impacted item or automatically by the system. |
| suppressed | The issue was suppressed maually by an operator to be ignored for a period of time, depending on the type of the health issue. |

#### HealthIssueType values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| Sensor | The issue is on specific sensor. |
| Global | The issue is in the defender for identity system configuration. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.healthIssue",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "id": "String (identifier)",
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

