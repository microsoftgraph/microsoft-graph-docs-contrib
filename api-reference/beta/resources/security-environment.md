---
title: "environment resource type"
description: "Represents a cloud-native environment that can be selected within a specific zone for security management."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# environment resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud-native environment that can be selected within a specific [zone](../resources/security-zone.md) for security management. Environments include Azure subscriptions, AWS accounts, GCP projects, and other resources native to the cloud.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-zone-list-environments.md)|[microsoft.graph.security.environment](../resources/security-environment.md) collection|Get all [environment](../resources/security-environment.md) objects associated with a [zone](../resources/security-zone.md) object.|
|[Create](../api/security-zone-post-environments.md)|[microsoft.graph.security.environment](../resources/security-environment.md)|Create an [environment](../resources/security-environment.md) object to attach it to a [zone](../resources/security-zone.md).|
|[Get](../api/security-environment-get.md)|[microsoft.graph.security.environment](../resources/security-environment.md)|Get a specific [environment](../resources/security-environment.md) associated with a [zone](../resources/security-zone.md). The **environment ID** must be URL-encoded.|
|[Delete](../api/security-environment-delete.md)|None|Delete an [environment](../resources/security-environment.md) object by providing the **environment ID** to detach it from a [zone](../resources/security-zone.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Environment identifier. Inherited from [entity](../resources/entity.md). Supports `$orderby` and `$filter` (`eq`, `contains`). For example, `$filter=contains(id, '123')`. <br/><br/>For Azure subscriptions, use the `/subscriptions/{subscription-id}` format for the **id** property. For example, `/subscriptions/02687862-a843-4846-81f0-efe9ef244daa`. For other environment types, use the native identifier - for example, AWS account number (`181994123251`) or GCP project number (`69483221284`).|
|kind|microsoft.graph.security.environmentKind|Environment type. The possible values are: `azureSubscription`, `awsOrganization`, `awsAccount`, `gcpOrganization`, `gcpProject`, `dockersHubOrganization`, `devOpsConnection`, `azureDevOpsOrganization`, `gitHubOrganization`, `gitLabGroup`, `jFrogArtifactory`, `unknownFutureValue`. <br/><br/>Supports `orderby` and `$filter` (`eq`, `in`). For example, `$filter=kind eq 'azureSubscription'` or `$filter=kind in ('azureSubscription', 'awsAccount')`.|

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

