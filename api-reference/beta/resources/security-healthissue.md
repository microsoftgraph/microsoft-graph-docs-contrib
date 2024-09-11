---
title: "healthIssue resource type"
description: "Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "security"
---

# healthIssue resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-healthissues.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|Get a list of [healthIssue](../resources/security-healthissue.md) objects and their properties.|
|[Get](../api/security-healthissue-get.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Read the properties and relationships of a [healthIssue](../resources/security-healthissue.md) object.|
|[Update](../api/security-healthissue-update.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Update the properties of a [healthIssue](../resources/security-healthissue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInformation|String collection|Contains additional information about the issue, such as a list of items to fix.|
|createdDateTime|DateTimeOffset|The date and time when the health issue was generated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Contains more detailed information about the health issue.|
|displayName|String|The display name of the health issue.|
|domainNames|String collection|A list of the fully qualified domain names of the domains or the sensors the health issue is related to.|
|healthIssueType|[microsoft.graph.security.healthIssueType](#healthissuetype-values)|The type of the health issue. The possible values are: `sensor`, `global`, `unknownFutureValue`. For a list of all health issues and their identifiers, see [Microsoft Defender for Identity health issues](/defender-for-identity/health-alerts). |
|id|String|A unique identifier that represents the health issue. Inherited from [entity](../resources/entity.md).|
|issueTypeId|String|The type identifier of the health issue. For a list of all health issues and their identifiers, see [Microsoft Defender for Identity health issues](/defender-for-identity/health-alerts).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the health issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|recommendations|String collection|A list of recommended actions that can be taken to resolve the issue effectively and efficiently. These actions might include instructions for further investigation and aren't limited to prewritten responses.|
|recommendedActionCommands|String collection|A list of commands from the PowerShell module for the product that can be used to resolve the issue, if available. If no commands can be used to solve the issue, this property is empty. The commands, if present, provide a quick and efficient way to address the issue. These commands run in sequence for the single recommended fix.|
|sensorDNSNames|String collection|A list of the DNS names of the sensors the health issue is related to.|
|severity|[microsoft.graph.security.healthIssueSeverity](#healthissueseverity-values)|The severity of the health issue. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[microsoft.graph.security.healthIssueStatus](#healthissuestatus-values)|The status of the health issue. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`.|

### healthIssueSeverity values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| low | Low severity health issues usually indicate minor issues that don't have a significant impact on your environment. These issues require further investigation, but they usually don't require immediate action. |
| medium | Medium severity health issues indicate more significant issues that could potentially impact your environment. These issues may require further investigation and action to prevent any potential problems. |
| high | High severity health issues indicate critical issues that could have a severe impact on your environment. These issues require immediate attention and action. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

### healthIssueStatus values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| open | The issue is open and should be addressed. |
| closed | The issue was addressed. Either someone manually closed the issue or took an action on the affected item, or it was closed automatically by the system. |
| suppressed | The operator suppressed the issue manually. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

### healthIssueType values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| sensor | The issue is on specific sensor. |
| global | The issue is in the Defender for identity system configuration. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

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
  "additionalInformation": ["Descendant User Objects (Schema-Id-Guid: bf967aba-0de6-11d0-a285-00aa003049e2)"],
  "createdDateTime": "2022-07-15T12:19:27.7211305Z",
  "description": "Directory Services Object Auditing is not configured as required on domain1.contoso.com",
  "displayName": "Directory Services Object Auditing is not configured as required",
  "domainNames": ["domain1.contoso.com", "domain2.contoso.com"],
  "healthIssueType": "Global",
  "id": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
  "issueTypeId": "1031",
  "lastModifiedDateTime": "2022-07-15T12:19:27.7211305Z",
  "recommendations": ["Please configure the Directory Services Object Auditing events according to the guidance as described in https://aka.ms/mdi/objectauditing"],
  "recommendedActionCommands": ["Import-Module DefenderForIdentity"],
  "sensorDNSNames": ["DC1.domain1.contoso.com", "DC2.domain2.contoso.com"],
  "severity": "medium"",
  "status": "open"
}
```

