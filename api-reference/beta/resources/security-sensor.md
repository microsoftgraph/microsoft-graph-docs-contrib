---
title: "Sensor resource type"
description: "Represents Microsoft Defender for Identity Sensor"
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# Sensor resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Microsoft Defender for Identity Sensor

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-sensors.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md) collection|Get a list of the [microsoft.graph.security.sensor](../resources/security-sensor.md) objects and their properties.|
|[Get](../api/security-sensor-get.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Read the properties and relationships of a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[Update](../api/security-sensor-update.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Update the properties of a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[Delete](../api/security-identitycontainer-delete-sensors.md)|None|Delete a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.|
|[getDeploymentPackageUri](../api/security-sensor-getdeploymentpackageuri.md)|[microsoft.graph.security.sensorDeploymentPackage](../resources/security-sensordeploymentpackage.md)|Get the sensor deployment package URL and version. You can use this URL and version to download an installer to install sensor on a dedicated server.|
|[getDeploymentAccessKey](../api/security-sensor-getdeploymentaccesskey.md)|[microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md)|Get the sensor deployment access key.|
|[regenerateDeploymentAccessKey](../api/security-sensor-regeneratedeploymentaccesskey.md)|[microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md)|Generate a new deployment access key that can be used to activate sensor installation.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|e date and time of when the sensor was generated|
|deploymentStatus|[microsoft.graph.security.deploymentStatus](#deploymentstatus-values)|The deployment status of the sensor. The possible values are: `upToDate`, `outdated`, `updating`, `updateFailed`, `notConfigured`, `unreachable`, `disconnected`, `startFailure`, `syncing`, `unknownFutureValue`.|
|displayName|String|The display name of the sensor|
|domainName|String|The fully qualified domain name of the sensor|
|healthStatus|[microsoft.graph.security.sensorHealthStatus](#healthstatus-values)|The health status of the sensor. The possible values are: `healthy`, `notHealthyLow`, `notHealthyMedium`, `notHealthyHigh`, `unknownFutureValue`.|
|ID|String|Unique identifier to represent the sensor.|
|openHealthIssuesCount|Int64|This field displays the count of health issues related to this sensor.|
|sensorType|[microsoft.graph.security.sensorType](#sensortype-values)|The type of the sensor. The possible values are: `adConnectIntegrated`, `adcsIntegrated`, `adfsIntegrated`, `domainControllerIntegrated`, `domainControllerStandalone`, `unknownFutureValue`.|
|settings|[microsoft.graph.security.sensorSettings](../resources/security-sensorsettings.md)|Sensor settings information.|
|version|String|The version of the sensor.|

#### deploymentStatus values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| upToDate | todo |
| outdated | todo |
| updating | todo |
| updateFailed | todo |
| notConfigured | todo |
| unreachable | todo |
| disconnected | todo |
| startFailure | todo |
| startFailure | todo |
| syncing | todo |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

#### healthStatus values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| healthy | todo |
| notHealthyLow | todo |
| notHealthyMedium | todo |
| notHealthyHigh | todo |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

#### sensorType values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| adConnectIntegrated | todo |
| adcsIntegrated | todo |
| adfsIntegrated | todo |
| domainControllerIntegrated | todo |
| domainControllerStandalone | todo |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |



## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|healthIssues|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified related to the sensor.|

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