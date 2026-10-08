---
title: "sensorMigration resource type"
description: "Represents a Microsoft Defender for Identity sensor that can be migrated from the classic portal to the unified security portal."
author: "SamuelBenichou"
ms.date: 03/23/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# sensorMigration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Defender for Identity sensor that can be migrated from the classic portal to the unified security portal.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-sensormigration.md)|[microsoft.graph.security.sensorMigration](../resources/security-sensormigration.md) collection|Get a list of the sensorMigration objects and their properties.|
|[Migrate](../api/security-sensormigration-migrate.md)|[microsoft.graph.security.migrateSensorsResult](../resources/security-migratesensorsresult.md)|Migrate the specified sensors to the unified security portal.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time the sensor was created.|
|displayName|String|The display name of the sensor.|
|domainName|String|The fully qualified domain name (FQDN) of the domain controller where the sensor is installed.|
|healthStatus|[microsoft.graph.security.sensorHealthStatus](../resources/enums-security.md#sensorhealthstatus-values)|The health status of the sensor. The possible values are: `healthy`, `notHealthyLow`, `notHealthyMedium`, `notHealthyHigh`, `unknownFutureValue`.|
|id|String|The unique identifier for the sensor. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|migrationState|[microsoft.graph.security.migrationState](../resources/enums-security.md#migrationstate-values)|The migration state of the sensor. The possible values are: `readyForMigration`, `notReadyForMigration`, `upToDate`, `migrationFailed`, `migrating`, `unknownFutureValue`.|
|sensorType|[microsoft.graph.security.sensorType](../resources/enums-security.md#sensortype-values)|The type of sensor. The possible values are: `adConnectIntegrated`, `adcsIntegrated`, `adfsIntegrated`, `domainControllerIntegrated`, `domainControllerStandalone`, `unknownFutureValue`.|
|serviceStatus|[microsoft.graph.security.serviceStatus](../resources/enums-security.md#servicestatus-values)|The status of the sensor service. The possible values are: `stopped`, `starting`, `running`, `disabled`, `onboarding`, `unknown`, `unknownFutureValue`.|
|version|String|The version number of the sensor software.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sensorMigration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensorMigration",
  "id": "String (identifier)",
  "displayName": "String",
  "sensorType": "String",
  "version": "String",
  "createdDateTime": "String (timestamp)",
  "domainName": "String",
  "healthStatus": "String",
  "serviceStatus": "String",
  "migrationState": "String"
}
```