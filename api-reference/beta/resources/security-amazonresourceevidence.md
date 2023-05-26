---
title: "amazonResourceEvidence resource type"
description: "Represents an Amazon resource that is reported as part of the security detection alert."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# amazonResourceEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Amazon resource that is reported as part of the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|amazonAccountId|String|The unique identifier for the Amazon account.|
|amazonResourceId|String|The Amazon resource identifier (ARN) for the cloud resource.|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.amazonResourceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.amazonResourceEvidence",
  "amazonAccountId": "String",
  "amazonResourceId": "String",
  "createdDateTime": "String (timestamp)",
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
