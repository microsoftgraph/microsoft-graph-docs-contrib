---
title: "cloudAppDiscoveryReport resource type"
description: "Represents the resources available for cloud apps discovered on onboarded endpoints or a stream."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# cloudAppDiscoveryReport resource type

Namespace: microsoft.graph.security

Represents the resources available for cloud apps discovered on onboarded endpoints or a stream.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List Uploaded Streams](../api/security-datadiscoveryreport-list-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|Get a list of the [microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) objects and their properties.|
|[Get Aggregated Apps Details](../api/security-cloudappdiscoveryreport-aggregatedappsdetails.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) collection|Add the appropriate method. Currently supports the Get method only.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anonymizeMachineData|Boolean|Use `1` if the machine information is anonymized. Otherwise use `0`.|
|anonymizeUserData|Boolean|Use `1` if the machine information is anonymized. Otherwise use `0`.|
|createdDateTime|DateTimeOffset|The date in the format specified.|
|description|String|A comment or description for the report.|
|displayName|String|The continuous report's display name.|
|id|String|The ID of the log type supported.|
|isSnapshotReport|Boolean|Use `1` for a snapshot report. Otherwise use `0`.|
|lastDataReceivedDateTime|DateTimeOffset|The date that data was last received.|
|lastModifiedDateTime|DateTimeOffset|The date the continuous report was last modified.|
|logDataProvider|microsoft.graph.security.logDataProvider|The applicable log data provider. Possible values are: `barracuda`, `bluecoat`, `checkpoint`, `ciscoAsa`, `ciscoIronportProxy`, `fortigate`, `paloAlto`, `squid`, `zscaler`, `mcafeeSwg`, `ciscoScanSafe`, `juniperSrx`, `sophosSg`, `websenseV75`, `websenseSiemCef`, `machineZoneMeraki`, `squidNative`, `ciscoFwsm`, `microsoftIsaW3C`, `sonicwall`, `sophosCyberoam`, `clavister`, `customParser`, `juniperSsg`, `zscalerQradar`, `juniperSrxSd`, `juniperSrxWelf`, `microsoftConditionalAppAccess`, `ciscoAsaFirepower`, `genericCef`, `genericLeef`, `genericW3C`, `iFilter`, `checkpointXml`, `checkpointSmartViewTracker`, `barracudaNextGenFw`, `barracudaNextGenFwWeblog`, `microsoftDefenderForEndpoint`, `zscalerCef`, `sophosXg`, `iboss`, `forcepoint`, `fortios`, `ciscoIronportWsaIi`, `paloAltoLeef`, `forcepointLeef`, `stormshield`, `contentkeeper`, `ciscoIronportWsaIii`, `checkpointCef`, `corrata`, `ciscoFirepowerV6`, `menloSecurityCef`, `watchguardXtm`, `openSystemsSecureWebGateway`, `wandera`, `unknownFutureValue`.|
|logFileCount|Int32|The count of log files history.|
|receiverProtocol|microsoft.graph.security.receiverProtocol|The applicable receiver protocol. Possible values are: `ftp`, `ftps`, `syslogUdp`, `syslogTcp`, `syslogTls`, `unknownFutureValue`.|
|supportedEntityTypes|microsoft.graph.security.entityType collection|The supported entity type.|
|supportedTrafficTypes|microsoft.graph.security.trafficType collection|The supported traffic type.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastDataReceivedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "receiverProtocol": "String",
  "supportedEntityTypes": [
    "String"
  ],
  "supportedTrafficTypes": [
    "String"
  ],
  "anonymizeMachineData": "Boolean",
  "anonymizeUserData": "Boolean",
  "logDataProvider": "String",
  "description": "String",
  "logFileCount": "Integer",
  "isSnapshotReport": "Boolean"
}
```

