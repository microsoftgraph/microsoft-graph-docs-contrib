---
title: "cloudAppDiscoveryReport resource type"
description: "Represents report of uploaded stream"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# cloudAppDiscoveryReport resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You will be able to generate cloudAppDiscoveryReport by adding applicable properties


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-datadiscoveryreport-list-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|Get a list of the [microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) objects and their properties.|
|[aggregatedAppsDetails](../api/security-cloudappdiscoveryreport-aggregatedappsdetails.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) collection|**Add the appropriate Method. Right now we are supporting Get Method**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anonymizeMachineData|Boolean|**Add Description as 1,if machine information is anonymized. Otherwise add description as 0**|
|anonymizeUserData|Boolean|**Add Description as 1,if user information is anonymized. Otherwise add description as 0**|
|createdDateTime|DateTimeOffset|**Add the date in the format specified**|
|description|String|**Add the comment/description of the report**|
|displayName|String|**Add display name of the continuous report**|
|id|String|**Add the ID of the log type supported** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isSnapshotReport|Boolean|**Add Description as 1 if it is a snapshot report.Otherwise add description as 0**|
|lastDataReceivedDateTime|DateTimeOffset|**Add the date that data was last received**|
|lastModifiedDateTime|DateTimeOffset|**Add the date the continuous report was last modified**|
|logDataProvider|microsoft.graph.security.logDataProvider|**Add the applicable log Data provider**.The possible values are: `barracuda`, `bluecoat`, `checkpoint`, `ciscoAsa`, `ciscoIronportProxy`, `fortigate`, `paloAlto`, `squid`, `zscaler`, `mcafeeSwg`, `ciscoScanSafe`, `juniperSrx`, `sophosSg`, `websenseV75`, `websenseSiemCef`, `machineZoneMeraki`, `squidNative`, `ciscoFwsm`, `microsoftIsaW3C`, `sonicwall`, `sophosCyberoam`, `clavister`, `customParser`, `juniperSsg`, `zscalerQradar`, `juniperSrxSd`, `juniperSrxWelf`, `microsoftConditionalAppAccess`, `ciscoAsaFirepower`, `genericCef`, `genericLeef`, `genericW3C`, `iFilter`, `checkpointXml`, `checkpointSmartViewTracker`, `barracudaNextGenFw`, `barracudaNextGenFwWeblog`, `microsoftDefenderForEndpoint`, `zscalerCef`, `sophosXg`, `iboss`, `forcepoint`, `fortios`, `ciscoIronportWsaIi`, `paloAltoLeef`, `forcepointLeef`, `stormshield`, `contentkeeper`, `ciscoIronportWsaIii`, `checkpointCef`, `corrata`, `ciscoFirepowerV6`, `menloSecurityCef`, `watchguardXtm`, `openSystemsSecureWebGateway`, `wandera`, `unknownFutureValue`.|
|logFileCount|Int32|**Add the Count of log files history**|
|receiverProtocol|microsoft.graph.security.receiverProtocol|**Add the applicable receiver protocal**.The possible values are: `ftp`, `ftps`, `syslogUdp`, `syslogTcp`, `syslogTls`, `unknownFutureValue`.|
|supportedEntityTypes|microsoft.graph.security.entityType collection|**Add the supported entity type**|
|supportedTrafficTypes|microsoft.graph.security.trafficType collection|**Add the supported traffic type**|

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

