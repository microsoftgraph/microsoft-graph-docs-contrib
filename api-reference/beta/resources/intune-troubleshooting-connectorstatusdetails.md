---
title: "connectorStatusDetails resource type"
description: "Represent connector status"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# connectorStatusDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represent connector status

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectorName|[connectorName](../resources/intune-troubleshooting-connectorname.md)|Connector name. Possible values are: `applePushNotificationServiceExpirationDateTime`, `vppTokenExpirationDateTime`, `vppTokenLastSyncDateTime`, `windowsAutopilotLastSyncDateTime`, `windowsStoreForBusinessLastSyncDateTime`, `jamfLastSyncDateTime`, `ndesConnectorLastConnectionDateTime`, `appleDepExpirationDateTime`, `appleDepLastSyncDateTime`, `onPremConnectorLastSyncDateTime`, `googlePlayAppLastSyncDateTime`, `googlePlayConnectorLastModifiedDateTime`, `windowsDefenderATPConnectorLastHeartbeatDateTime`, `mobileThreatDefenceConnectorLastHeartbeatDateTime`, `chromebookLastDirectorySyncDateTime`, `futureValue`.|
|connectorInstanceId|String|Connector Instance Id|
|status|[connectorHealthState](../resources/intune-troubleshooting-connectorhealthstate.md)|Connector health state. Possible values are: `healthy`, `warning`, `unhealthy`, `unknown`.|
|eventDateTime|DateTimeOffset|Event datetime|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.connectorStatusDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectorStatusDetails",
  "connectorName": "String",
  "connectorInstanceId": "String",
  "status": "String",
  "eventDateTime": "String (timestamp)"
}
```
