---
title: "qualityUpdateCveSeverityInformation resource type"
description: "Represents the summary of severity information regarding the Common Vulnerabilities and Exposures (CVEs) addressed by a quality update."
author: "angiechen22"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# qualityUpdateCveSeverityInformation resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of severity information regarding the Common Vulnerabilities and Exposures (CVEs) addressed by a quality update. The national vulnerability database uses the Common Vulnerability Scoring System (CVSS) to supply a qualitative measure of severity. Each CVE has a severity level that can be `moderate`, `important`, or `critical` and a CVSS base score that ranges from `0.0` to `10.0`.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|exploitedCves|[microsoft.graph.windowsUpdates.cveInformation](../resources/windowsupdates-cveinformation.md) collection| Collection of information about each publicly exploited vulnerability addressed in the quality update.|
|maxBaseScore|Double|Highest base score that occurs of any CVE addressed by the quality update. Read-only.|
|maxSeverityLevel|microsoft.graph.windowsUpdates.cveSeverityLevel| Highest severity level that occurs of any CVE addressed by the quality update. Possible values are: `critical`, `important`, `moderate`, `unknownFutureValue`. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateCveSeverityInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCveSeverityInformation",
  "exploitedCves": [{"@odata.type": "microsoft.graph.windowsUpdates.cveInformation"}],
  "maxBaseScore": "Double",
  "maxSeverityLevel": "String"
}
```
