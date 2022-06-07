---
title: "vmMetadata resource type"
description: "Metadata of the Virtual Machine (VM) Microsoft Defender for Endpoint is running on."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# vmMetadata resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata of the Virtual Machine (VM) Microsoft Defender for Endpoint is running on.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudProvider|vmCloudProvider|The cloud provider hosting the virtual machine.The possible values are: `unknown`, `azure`, `unknownFutureValue`.|
|resourceId|String|Unique identifier of the Azure Resource.|
|subscriptionId|String|Unique identifier of the Azure subscription the customer tenant belongs to.|
|vmId|String|Unique identifier of the Virtual Machine instance.|


### vmCloudProvider values 

| Member                     | Description                                    |
| :--------------------------| :--------------------------------------------- |
| unknown                    | uknown provider.                               |
| azure                      | vm is hosted in microsoft azure cloud.         |
| unknownFutureValue         | unknownFutureValue for evolvable enums pattern.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vmMetadata"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vmMetadata",
  "vmId": "String",
  "cloudProvider": "String",
  "resourceId": "String",
  "subscriptionId": "String"
}
```