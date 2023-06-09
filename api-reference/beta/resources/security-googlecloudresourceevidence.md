---
title: "googleCloudResourceEvidence resource type"
description: "Represents a Google Cloud resource such as compute or Kubernetes cluster identifier."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# googleCloudResourceEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Google Cloud resource such as compute or Kubernetes cluster identifier.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|location|String|The zone or region where the resource is located.|
|locationType|[microsoft.graph.security.googleCloudLocationType](#googlecloudlocationtype-values)|The type of location. Possible values are: `unknown`, `regional`, `zonal`, `global`, `unknownFutureValue`.|
|projectId|String|The Google project ID as defined by the user.|
|projectNumber|Int64|The project number assigned by Google.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|

### googleCloudLocationType values

| Member                     | Description                                       |
| :--------------------------| :------------------------------------------------ |
| unknown                    | An unknown region that is used for forward compatibility. |
| regional                   | Regional location. |
| zonal                      | Zonal location. |
| global                     | Global resource location. |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.  |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.googleCloudResourceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.googleCloudResourceEvidence",
  "createdDateTime": "String (timestamp)",
  "location": "String",
  "locationType": "String",
  "projectId": "String",
  "projectNumber": "Int64",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "resourceName": "String",
  "resourceType": "String",
  "roles": ["String"],
  "tags": ["String"],
  "verdict": "String"
}
```
