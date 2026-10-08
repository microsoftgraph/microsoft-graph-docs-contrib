---
title: "cloudAppDiscoveryReport resource type"
description: "Represents information about cloud apps discovered on an endpoint or a stream."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 11/15/2024
---

# cloudAppDiscoveryReport resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about cloud apps discovered on an endpoint or a stream.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List uploaded streams](../api/security-datadiscoveryreport-list-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|Get visibility into all the manually uploaded streams from your firewalls and proxies.|
|[Get aggregated app details](../api/security-cloudappdiscoveryreport-aggregatedappsdetails.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) collection|Get the [aggregated details](../resources/security-discoveredcloudappdetail.md) of discovered apps by providing the time period.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anonymizeMachineData|Boolean|Use `1` if the machine information is anonymized; otherwise use `0`.|
|anonymizeUserData|Boolean|Use `1` if the user information is anonymized; otherwise use `0`.|
|createdDateTime|DateTimeOffset|The date in the format specified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|A comment or description for the report.|
|displayName|String|The display name of the continuous report.|
|id|String|The ID of the log type supported. Inherited from [entity](../resources/entity.md).|
|isSnapshotReport|Boolean|Use `1` for a snapshot report; otherwise use `0`.|
|lastDataReceivedDateTime|DateTimeOffset|The date when the data was last received. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastModifiedDateTime|DateTimeOffset|The date when the continuous report was last modified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|logDataProvider|microsoft.graph.security.logDataProvider|The applicable log data provider. The possible values are: `barracuda`, `bluecoat`, `checkpoint`, `ciscoAsa`, `ciscoIronportProxy`, `fortigate`, `paloAlto`, `squid`, `zscaler`, `mcafeeSwg`, `ciscoScanSafe`, `juniperSrx`, `sophosSg`, `websenseV75`, `websenseSiemCef`, `machineZoneMeraki`, `squidNative`, `ciscoFwsm`, `microsoftIsaW3C`, `sonicwall`, `sophosCyberoam`, `clavister`, `customParser`, `juniperSsg`, `zscalerQradar`, `juniperSrxSd`, `juniperSrxWelf`, `microsoftConditionalAppAccess`, `ciscoAsaFirepower`, `genericCef`, `genericLeef`, `genericW3C`, `iFilter`, `checkpointXml`, `checkpointSmartViewTracker`, `barracudaNextGenFw`, `barracudaNextGenFwWeblog`, `microsoftDefenderForEndpoint`, `zscalerCef`, `sophosXg`, `iboss`, `forcepoint`, `fortios`, `ciscoIronportWsaIi`, `paloAltoLeef`, `forcepointLeef`, `stormshield`, `contentkeeper`, `ciscoIronportWsaIii`, `checkpointCef`, `corrata`, `ciscoFirepowerV6`, `menloSecurityCef`, `watchguardXtm`, `openSystemsSecureWebGateway`, `wandera`, `unknownFutureValue`.|
|logFileCount|Int32|The count of log files history.|
|receiverProtocol|microsoft.graph.security.receiverProtocol|The applicable receiver protocol. The possible values are: `ftp`, `ftps`, `syslogUdp`, `syslogTcp`, `syslogTls`, `unknownFutureValue`.|
|supportedEntityTypes|microsoft.graph.security.entityType collection|The supported entity type. The possible values are: `userName`, `ipAddress`, `machineName`, `other`, `unknown`, `unknownFutureValue`.|
|supportedTrafficTypes|microsoft.graph.security.trafficType collection|The supported traffic type. The possible values are: `downloadedBytes`, `uploadedBytes`, `unknown`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.cloudAppDiscoveryReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cloudAppDiscoveryReport",
  "anonymizeMachineData": "Boolean",
  "anonymizeUserData": "Boolean",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isSnapshotReport": "Boolean",
  "lastDataReceivedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "logDataProvider": "String",
  "logFileCount": "Int32",
  "receiverProtocol": "String",
  "supportedEntityTypes": ["String"],
  "supportedTrafficTypes": ["String"]
}
```

