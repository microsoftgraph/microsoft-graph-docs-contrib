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

An environment is a cloud primitive entity that can be selected within a specific [zone](../resources/security-zone.md) for security management. Environments include Azure subscriptions, AWS accounts, GCP projects, and other resources native to the cloud. 

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Attach](../api/security-zone-post-environments.md)|[microsoft.graph.security.environment](../resources/security-environment.md)|Associates an environment to a zone by providing the EnvironmentId.|
|[Get](../api/security-environment-get.md)|[microsoft.graph.security.environment](../resources/security-environment.md)|Retrieves a specific environment associated with a zone. The EnvironmentId must be URL-encoded.|
|[List](../api/security-zone-list-environments.md)|[microsoft.graph.security.environment](../resources/security-environment.md) collection|Retrieves all environment objects associated with a zone.|
|[Detach](../api/security-zone-delete-environments.md)|None|Detaches an environment from a zone by providing the EnvironmentId. The EnvironmentId must be URL-encoded.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Environment identifier. Inherits from [entity](../resources/entity.md)|
|kind|[environmentKind](../resources/enums-security-environmentKind.md)|Environment type. The possible values are: `azureSubscription`, `awsOrganization`, `awsAccount`, `gcpOrganization`, `gcpProject`, `dockersHubOrganization`, `devOpsConnection`, `azureDevOpsOrganization`, `gitHubOrganization`, `gitLabGroup`, `jFrogArtifactory`, `unknownFutureValue`.|

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

