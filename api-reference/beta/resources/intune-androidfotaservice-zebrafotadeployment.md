---
title: "zebraFotaDeployment resource type"
description: "The Zebra FOTA deployment entity that describes settings, deployment device groups required to create a FOTA deployment, and deployment status."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# zebraFotaDeployment resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Zebra FOTA deployment entity that describes settings, deployment device groups required to create a FOTA deployment, and deployment status.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List zebraFotaDeployments](../api/intune-androidfotaservice-zebrafotadeployment-list.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) collection|List properties and relationships of the [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) objects.|
|[Get zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-get.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md)|Read properties and relationships of the [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.|
|[Create zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-create.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md)|Create a new [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.|
|[Delete zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-delete.md)|None|Deletes a [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md).|
|[Update zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-update.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md)|Update the properties of a [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.|
|[cancel action](../api/intune-androidfotaservice-zebrafotadeployment-cancel.md)|Boolean|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|System generated deployment id provided during creation of the deployment. Returned only if operation was a success.|
|displayName|String|A human readable name of the deployment.|
|description|String|A human readable description of the deployment.|
|deploymentSettings|** Unknown Type `microsoft.intune.core.msGraph.zebraFotaDeploymentSettings` **|Represents settings required to create a deployment such as deployment type, artifact info, download and installation|
|deploymentAssignments|** Unknown Type `microsoft.intune.core.msGraph.androidFotaDeploymentAssignment` ** collection|Collection of Android FOTA Assignment|
|deploymentStatus|** Unknown Type `microsoft.intune.core.msGraph.zebraFotaDeploymentStatus` **|Represents the deployment status from Zebra. The status is a high level status of the deployment as opposed being a detailed status per device.|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.zebraFotaDeployment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.zebraFotaDeployment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "deploymentSettings": "<Unknown None>",
  "deploymentAssignments": [
    "<Unknown None>"
  ],
  "deploymentStatus": "<Unknown None>",
  "roleScopeTagIds": [
    "String"
  ]
}
```
