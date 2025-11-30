---
title: "Environment resource type"
description: "Represents a cloud environment that can be attached to a zone for security management purposes."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# Environment resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud environment that can be attached to a zone for security management purposes. Environments can include Azure subscriptions, AWS accounts, GCP projects, and other cloud native resources.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/security-zone-post-environments.md)|[microsoft.graph.security.environment](../resources/security-environment.md)|Create a new environment object.|
|[Get](../api/security-environment-get.md)|[microsoft.graph.security.environment](../resources/security-environment.md)|Read the properties and relationships of [microsoft.graph.security.environment](../resources/security-environment.md) object.|
|[List](../api/security-zone-list-environments.md)|[microsoft.graph.security.environment](../resources/security-environment.md) collection|Get a list of the environment objects and their properties.|
|[Delete](../api/security-zone-delete-environments.md)|None|Delete an environment object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Environment identifier. Inherits from [entity](../resources/entity.md)|
|kind|microsoft.graph.security.environmentKind|Environment type. The possible values are: `azureSubscription`, `awsOrganization`, `awsAccount`, `gcpOrganization`, `gcpProject`, `dockersHubOrganization`, `devOpsConnection`, `azureDevOpsOrganization`, `gitHubOrganization`, `gitLabGroup`, `jFrogArtifactory`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.environment",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.environment",
  "id": "String (identifier)",
  "kind": "String"
}
```

