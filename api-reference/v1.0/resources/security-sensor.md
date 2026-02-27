---
title: "sensor resource type"
description: "Represents a Microsoft Defender for Identity sensor."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 10/29/2024
---

# sensor resource type

Namespace: microsoft.graph.security

Represents a Microsoft Defender for Identity sensor.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-sensors.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md) collection|Get a list of [sensor](../resources/security-sensor.md) objects and their properties.|
|[Get](../api/security-sensor-get.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Read the properties and relationships of a [sensor](../resources/security-sensor.md) object.|
|[Update](../api/security-sensor-update.md)|[microsoft.graph.security.sensor](../resources/security-sensor.md)|Update the properties of a [sensor](../resources/security-sensor.md) object.|
|[Delete](../api/security-sensor-delete.md)|None|Delete a [sensor](../resources/security-sensor.md) object.|
|[Get deployment access key](../api/security-sensor-getdeploymentaccesskey.md)|[microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md)|Get the deployment access key for Microsoft Defender for Identity that is required to install sensors associated with the workspace.|
|[Get deployment package URI](../api/security-sensor-getdeploymentpackageuri.md)|[microsoft.graph.security.sensorDeploymentPackage](../resources/security-sensordeploymentpackage.md)|Get the [sensor](../resources/security-sensor.md) deployment package URL and version.|
|[Regenerate deployment access key](../api/security-sensor-regeneratedeploymentaccesskey.md)|[microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md)|Generate a new deployment access key that can be used to install a [sensor](../resources/security-sensor.md) associated with the workspace.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the sensor was generated. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|deploymentStatus|[microsoft.graph.security.deploymentStatus](#deploymentstatus-values)|The deployment status of the sensor. The possible values are: `upToDate`, `outdated`, `updating`, `updateFailed`, `notConfigured`, `unreachable`, `disconnected`, `startFailure`, `syncing`, `unknownFutureValue`.|
|displayName|String|The display name of the sensor.|
|domainName|String|The fully qualified domain name of the sensor.|
|healthStatus|[microsoft.graph.security.sensorHealthStatus](#sensorhealthstatus-values)|The health status of the sensor. The possible values are: `healthy`, `notHealthyLow`, `notHealthyMedium`, `notHealthyHigh`, `unknownFutureValue`.|
|id|String|Unique identifier to represent the sensor. Inherited from [entity](../resources/entity.md).|
|openHealthIssuesCount|Int64|This field displays the count of health issues related to this sensor.|
|sensorType|[microsoft.graph.security.sensorType](#sensortype-values)|The type of the sensor. The possible values are: `adConnectIntegrated`, `adcsIntegrated`, `adfsIntegrated`, `domainControllerIntegrated`, `domainControllerStandalone`, `unknownFutureValue`.|
|serviceStatus| microsoft.graph.security.serviceStatus | The service status. The possible values are: `stopped`, `starting`, `running`, `disabled`, `onboarding`, `unknown`, `unknownFutureValue`. |
|settings|[microsoft.graph.security.sensorSettings](../resources/security-sensorsettings.md)|Sensor settings information.|
|version|String|The version of the sensor.|

### deploymentStatus values

| Member                     | Description                    |
| :--------------------------| :----------------------------- |
| upToDate |Sensor is running a current version of the sensor.|
| outdated |Sensor is running a version of the software that is at least three versions behind the current version.|
| updating |Sensor software is being updated.|
| updateFailed |Sensor failed to update to a new version.|
| notConfigured |Sensor requires more configuration before it's fully operational. This applies to sensors installed on ADFS and ADCS servers or standalone sensors.|
| unreachable |The domain controller was deleted from Active Directory. However, the sensor installation wasn't uninstalled and removed from the domain controller before it was decommissioned. You can safely delete this entry.|
| disconnected |The Defender for Identity service hasn't seen any communication from this sensor in 10 minutes.|
| startFailure |Sensor didn't pull configuration for more than 30 minutes.|
| syncing |Sensor has configuration updates pending, but it didn't yet pull the new configuration.|
| unknownFutureValue |Evolvable enumeration sentinel value. Don't use.|

### sensorHealthStatus values

| Member                     | Description                    |
| :--------------------------| :----------------------------- |
| healthy |No opened health issues.|
| notHealthyLow |The highest severity opened health issue is low.|
| notHealthyMedium |The highest severity opened health issue is medium.|
| notHealthyHigh |The highest severity opened health issue is high.|
| unknownFutureValue |Evolvable enumeration sentinel value. Don't use.|

### sensorType values

| Member                     | Description                    |
| :--------------------------| :----------------------------- |
| adConnectIntegrated |Entra Connect sensor.|
| adcsIntegrated |Active Directory Certificate Services (ADCS) sensor.|
| adfsIntegrated |Active Directory Federation Services (ADFS) sensor.|
| domainControllerIntegrated |Domain controller sensor.|
| domainControllerStandalone |Standalone sensor.|
| unknownFutureValue |Evolvable enumeration sentinel value. Don't use.|

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
  "createdDateTime": "String (timestamp)",
  "deploymentStatus": "String",
  "displayName": "String",
  "domainName": "String",
  "healthStatus": "String",
  "id": "String (identifier)",
  "openHealthIssuesCount": "Int64",
  "sensorType": "String",
  "settings": {"@odata.type": "microsoft.graph.security.sensorSettings"},
  "version": "String",
  "serviceStatus": "String"
}
```
