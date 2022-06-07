---
title: "oauthApplicationEvidence resource type"
description: "An OAuth application that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# oauthApplicationEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An OAuth application that is reported in the alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Unique identifier of the application.|
|displayName|String|Name of the application.|
|objectId|String|The unique identifier of the application object in Azure AD.|
|publisher|String|The name of the application publisher.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.oauthApplicationEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.oauthApplicationEvidence",
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
  "appId": "String",
  "displayName": "String",
  "objectId": "String",
  "publisher": "String"
}
```