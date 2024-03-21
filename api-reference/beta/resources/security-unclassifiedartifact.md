---
title: "unclassifiedArtifact resource type"
description: "Represents artifacts observed by Microsoft Security services that don't have a supporting API."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# unclassifiedArtifact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents artifacts observed by Microsoft Security services that don't have a supporting API. While the threat intelligence APIs provide API support for many types of [artifacts](../resources/security-artifact.md), some data elements either aren't yet supported or can't be supported. The **unclassifiedArtifact** resource extends artifacts, communicating what information has been gathered to allow for information analysis. An API isn't currently available to provide for further details.

This resource isn't an addressable. The data contained is meant to communicate available information where applicable.

Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The system-generated ID for this **unclassifiedArtifact**. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|kind|String|The kind for this **unclassifiedArtifact** resource, describing what this value means.|
|value|String|The value for this **unclassifiedArtifact**.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.unclassifiedArtifact",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.unclassifiedArtifact",
  "id": "String (identifier)",
  "kind": "String",
  "value": "String"
}
```
