---
title: "cloudAppDiscoveryReport resource type"
description: "**TODO: Add Description**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# cloudAppDiscoveryReport resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: This is a sample desciption**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-datadiscoveryreport-list-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|Get a list of the [microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) objects and their properties.|
|[Get](../api/security-cloudappdiscoveryreport-get.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md)|Read the properties and relationships of a [microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) object.|
|[aggregatedAppsDetails](../api/security-cloudappdiscoveryreport-aggregatedappsdetails.md)|[microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anonymizeMachineData|Boolean|**TODO: Add Description**|
|anonymizeUserData|Boolean|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isSnapshotReport|Boolean|**TODO: Add Description**|
|lastDataReceivedDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|logDataProvider|microsoft.graph.security.logDataProvider|**TODO: Add Description**.The possible values are: `barracuda`, `bluecoat`, `checkpoint`, `ciscoAsa`, `ciscoIronportProxy`, `fortigate`, `paloAlto`, `squid`, `zscaler`, `mcafeeSwg`, `ciscoScanSafe`, `juniperSrx`, `sophosSg`, `websenseV75`, `websenseSiemCef`, `machineZoneMeraki`, `squidNative`, `ciscoFwsm`, `microsoftIsaW3C`, `sonicwall`, `sophosCyberoam`, `clavister`, `customParser`, `juniperSsg`, `zscalerQradar`, `juniperSrxSd`, `juniperSrxWelf`, `microsoftConditionalAppAccess`, `ciscoAsaFirepower`, `genericCef`, `genericLeef`, `genericW3C`, `iFilter`, `checkpointXml`, `checkpointSmartViewTracker`, `barracudaNextGenFw`, `barracudaNextGenFwWeblog`, `microsoftDefenderForEndpoint`, `zscalerCef`, `sophosXg`, `iboss`, `forcepoint`, `fortios`, `ciscoIronportWsaIi`, `paloAltoLeef`, `forcepointLeef`, `stormshield`, `contentkeeper`, `ciscoIronportWsaIii`, `checkpointCef`, `corrata`, `ciscoFirepowerV6`, `menloSecurityCef`, `watchguardXtm`, `openSystemsSecureWebGateway`, `wandera`, `unknownFutureValue`.|
|logFileCount|Int32|**TODO: Add Description**|
|receiverProtocol|microsoft.graph.security.receiverProtocol|**TODO: Add Description**.The possible values are: `ftp`, `ftps`, `syslogUdp`, `syslogTcp`, `syslogTls`, `unknownFutureValue`.|
|supportedEntityTypes|microsoft.graph.security.entityType collection|**TODO: Add Description**|
|supportedTrafficTypes|microsoft.graph.security.trafficType collection|**TODO: Add Description**|

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

