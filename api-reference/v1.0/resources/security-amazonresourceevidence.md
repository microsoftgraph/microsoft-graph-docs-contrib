---
title: "amazonResourceEvidence resource type"
description: "Represents an amazon resources that is reported as part of the security detection alert."
ms.date: 16/05/2023
author: "rborysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# amazonResourceEvidence resource type

Namespace: microsoft.graph.security

Represents an amazon resources that is reported as part of the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|amazonResourceId|String|The amazon resource identifier(ARN) for the cloud resource.|
|amazonAccountId|String|The amazon account identifier.|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.AmazonResourceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.AmazonResourceEvidence",
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
  "amazonResourceId": "String",
  "amazonAccountId": "String",
  "resourceType": "String",
  "resourceName": "String",
  "resourceId": "String"
}
```