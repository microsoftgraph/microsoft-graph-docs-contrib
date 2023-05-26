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

Represents a Google Cloud resource such as compute or Kubernetes cluster identifier.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|location|String|The zone or region where the resource is located.|
|locationType|[microsoft.graph.security.googleCloudLocationType](#locationtype-values)|The type of location. Possible values are: `unknown`, `regional`, `zonal`, `global`, `unknownFutureValue`.|
|projectId|String|The Google project ID as defined by the user.|
|projectNumber|Int64|The project number assigned by Google.|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|

### locationType values

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
  "resourceId": "String",
  "resourceName": "String",
  "resourceType": "String",
  "roles": ["String"],
  "tags": ["String"],
  "type": "String",
  "verdict": "String"
}
```
