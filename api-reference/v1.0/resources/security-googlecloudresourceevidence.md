---
title: "googleCloudResourceEvidence resource type"
description: "Represents Google cloud resource such as compute or Kubernetes cluster identifier."
ms.date: 16/05/2023
author: "rborysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# googleCloudResourceEvidence resource type

Namespace: microsoft.graph.security

Represents Google cloud resource such as compute or Kubernetes cluster identifier.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|projectId|String|The google project id as defined by the user.|
|projectNumber|Int64|The project number assigned by google.|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|
|location|String|The zone or region where the resource located.|
|locationType|[microsoft.graph.security.googleCloudLocationType](#locationtype-values)|The type of location, possible values are: `Regional`, `Zonal` or `Global`.|

### locationType values 

| Member                     | Description                                       |
| :--------------------------| :------------------------------------------------ |
| unknown                    | Unknown region, used for forward compatibility. |
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
  "@odata.type": "microsoft.graph.security.GoogleCloudResourceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.GoogleCloudResourceEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "type": "String",
  "projectId": "String",
  "projectNumber": "Int64",
  "resourceType": "String",
  "resourceName": "String",
  "resourceId": "String",
  "location": "String",
  "locationType": "String"
}
```