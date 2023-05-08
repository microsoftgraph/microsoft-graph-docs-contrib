---
title: "unclassifiedArtifact resource type"
description: "Represents artifacts observed by Microsoft Security services that do not have a supporting API."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# unclassifiedArtifact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents artifacts observed by Microsoft Security services that do not have a supporting API. While the threat intelligence APIs provide API support for many types of [artifacts](../resources/security-artifact.md), some data elements either are not yet supported or cannot be supported. The **unclassifiedArtifact** resource extends artifacts, communicating what information has been gathered to allow for information analysis. An API is not currently available to provide for further details.

This resource is not an addressable. The data contained is meant to communicate available information where applicable.

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

The following is a JSON representation of the resource.
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
