---
title: "connectorStatusDetails resource type"
description: "Represent connector status"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# connectorStatusDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represent connector status

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectorName|[connectorName](../resources/intune-troubleshooting-connectorname.md)|Connector name. The possible values are: `applePushNotificationServiceExpirationDateTime`, `vppTokenExpirationDateTime`, `vppTokenLastSyncDateTime`, `windowsAutopilotLastSyncDateTime`, `windowsStoreForBusinessLastSyncDateTime`, `jamfLastSyncDateTime`, `ndesConnectorLastConnectionDateTime`, `appleDepExpirationDateTime`, `appleDepLastSyncDateTime`, `onPremConnectorLastSyncDateTime`, `googlePlayAppLastSyncDateTime`, `googlePlayConnectorLastModifiedDateTime`, `windowsDefenderATPConnectorLastHeartbeatDateTime`, `mobileThreatDefenceConnectorLastHeartbeatDateTime`, `chromebookLastDirectorySyncDateTime`, `futureValue`.|
|connectorInstanceId|String|Connector Instance Id|
|status|[connectorHealthState](../resources/intune-troubleshooting-connectorhealthstate.md)|Connector health state. The possible values are: `healthy`, `warning`, `unhealthy`, `unknown`.|
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