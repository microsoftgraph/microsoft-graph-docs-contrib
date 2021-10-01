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
|sensitivityLabelActionLogs|[sensitivityLabelActionLog](../resources/sensitivitylabelactionlog.md) collection|**TODO: Add Description**|
|sensitivityLabeledFileActionLogs|[sensitivityLabeledFileActionLog](../resources/sensitivitylabeledfileactionlog.md) collection|**TODO: Add Description**|
|sensitivityLabelPolicyMatchLogs|[sensitivityLabelPolicyMatchLog](../resources/sensitivitylabelpolicymatchlog.md) collection|**TODO: Add Description**|
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

