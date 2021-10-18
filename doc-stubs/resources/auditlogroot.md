---
title: "auditLogRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# auditLogRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get auditLogRoot](../api/auditlogroot-get.md)|[auditLogRoot](../resources/auditlogroot.md)|Read the properties and relationships of an [auditLogRoot](../resources/auditlogroot.md) object.|
|[Update auditLogRoot](../api/auditlogroot-update.md)|[auditLogRoot](../resources/auditlogroot.md)|Update the properties of an [auditLogRoot](../resources/auditlogroot.md) object.|
|[List directoryAudits](../api/auditlogroot-list-directoryaudits.md)|[directoryAudit](../resources/directoryaudit.md) collection|Get the directoryAudit resources from the directoryAudits navigation property.|
|[Create directoryAudit](../api/auditlogroot-post-directoryaudits.md)|[directoryAudit](../resources/directoryaudit.md)|Create a new directoryAudit object.|
|[List directoryProvisioning](../api/auditlogroot-list-directoryprovisioning.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|Get the provisioningObjectSummary resources from the directoryProvisioning navigation property.|
|[Create provisioningObjectSummary](../api/auditlogroot-post-directoryprovisioning.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md)|Create a new provisioningObjectSummary object.|
|[List provisioning](../api/auditlogroot-list-provisioning.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|Get the provisioningObjectSummary resources from the provisioning navigation property.|
|[Create provisioningObjectSummary](../api/auditlogroot-post-provisioning.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md)|Create a new provisioningObjectSummary object.|
|[List restrictedSignIns](../api/auditlogroot-list-restrictedsignins.md)|[restrictedSignIn](../resources/restrictedsignin.md) collection|Get the restrictedSignIn resources from the restrictedSignIns navigation property.|
|[Create restrictedSignIn](../api/auditlogroot-post-restrictedsignins.md)|[restrictedSignIn](../resources/restrictedsignin.md)|Create a new restrictedSignIn object.|
|[List signIns](../api/auditlogroot-list-signins.md)|[signIn](../resources/signin.md) collection|Get the signIn resources from the signIns navigation property.|
|[Create signIn](../api/auditlogroot-post-signins.md)|[signIn](../resources/signin.md)|Create a new signIn object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|directoryAudits|[directoryAudit](../resources/directoryaudit.md) collection|**TODO: Add Description**|
|directoryProvisioning|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|**TODO: Add Description**|
|provisioning|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|**TODO: Add Description**|
|restrictedSignIns|[restrictedSignIn](../resources/restrictedsignin.md) collection|**TODO: Add Description**|
|signIns|[signIn](../resources/signin.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.auditLogRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditLogRoot"
}
```

