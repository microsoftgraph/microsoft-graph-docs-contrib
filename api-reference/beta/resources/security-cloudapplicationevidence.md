---
title: "cloudApplicationEvidence resource type"
description: "A cloud application that is reported in the alert."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# cloudApplicationEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A cloud application that is reported in the alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|Int64|Unique identifier of the application.|
|displayName|String|Name of the application.|
|instanceId|Int64|Identifier of the instance of the Software as a Service (SaaS) application.|
|instanceName|String|Name of the instance of the SaaS application.|
|saasAppId|Int64|The identifier of the SaaS application.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cloudApplicationEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cloudApplicationEvidence",
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
  "appId": "Integer",
  "displayName": "String",
  "instanceId": "Integer",
  "instanceName": "String",
  "saasAppId": "Integer"
}
```