---
title: "sensor resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sensor resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-sensors.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md) collection|Get a list of the [microsoft.graph.security.sensor](../resources/security-sensor.md) objects and their properties.|
|[Create](../api/identitycontainer-post-sensors.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Create a new [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[Get](../api/security-sensor-get.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Read the properties and relationships of a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[Update](../api/security-sensor-update.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Update the properties of a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[Delete](../api/identitycontainer-delete-sensors.md)|None|Delete a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[getDeploymentPackageUri](../api/security-sensor-getdeploymentpackageuri.md)|[microsoft.graph.security.sensorDeploymentPackage](../resources/security-sensordeploymentpackage.md)|**TODO: Add Description**|
|[getDeploymentAccessKey](../api/security-sensor-getdeploymentaccesskey.md)|[microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md)|**TODO: Add Description**|
|[regenerateDeploymentAccessKey](../api/security-sensor-regeneratedeploymentaccesskey.md)|[microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md)|**TODO: Add Description**|
|[List healthIssues](../api/security-sensor-list-healthissues.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|Get the healthIssue resources from the healthIssues navigation property.|
|[Add healthIssue](../api/security-sensor-post-healthissues.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md)|Add healthIssues by posting to the healthIssues collection.|
|[Remove healthIssues](../api/security-sensor-delete-healthissues.md)|None|Remove a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|deploymentStatus|microsoft.graph.security.deploymentStatus|**TODO: Add Description**.The possible values are: `upToDate`, `outdated`, `updating`, `updateFailed`, `notConfigured`, `unreachable`, `disconnected`, `startFailure`, `syncing`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description**|
|domainName|String|**TODO: Add Description**|
|healthStatus|microsoft.graph.security.sensorHealthStatus|**TODO: Add Description**.The possible values are: `healthy`, `notHealthyLow`, `notHealthyMedium`, `notHealthyHigh`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|openHealthIssuesCount|Int64|**TODO: Add Description**|
|sensorType|microsoft.graph.security.sensorType|**TODO: Add Description**.The possible values are: `adConnectIntegrated`, `adcsIntegrated`, `adfsIntegrated`, `domainControllerIntegrated`, `domainControllerStandalone`, `unknownFutureValue`.|
|settings|[microsoft.graph.security.sensorSettings](../resources/security-sensorsettings.md)|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|healthIssues|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sensor",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensor",
  "id": "String (identifier)",
  "displayName": "String",
  "sensorType": "String",
  "version": "String",
  "deploymentStatus": "String",
  "createdDateTime": "String (timestamp)",
  "domainName": "String",
  "healthStatus": "String",
  "openHealthIssuesCount": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.security.sensorSettings"
  }
}
```