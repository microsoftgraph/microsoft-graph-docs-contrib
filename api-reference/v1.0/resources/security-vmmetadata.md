---
title: "vmMetadata resource type"
description: "Metadata of the Virtual Machine (VM) Microsoft Defender for Endpoint is running on."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# vmMetadata resource type

Namespace: microsoft.graph.security

Metadata of the virtual machine (VM) Microsoft Defender for Endpoint is running on.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudProvider|[microsoft.graph.security.vmCloudProvider](#vmcloudprovider-values)|The cloud provider hosting the virtual machine. The possible values are: `unknown`, `azure`, `unknownFutureValue`.|
|resourceId|String|Unique identifier of the Azure resource.|
|subscriptionId|String|Unique identifier of the Azure subscription the customer tenant belongs to.|
|vmId|String|Unique identifier of the virtual machine instance.|


### vmCloudProvider values 

| Member                     | Description                                    |
| :--------------------------| :--------------------------------------------- |
| unknown                    | Unknown provider.                               |
| azure                      | The virtual machine is hosted in the Microsoft Azure cloud. |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.|


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