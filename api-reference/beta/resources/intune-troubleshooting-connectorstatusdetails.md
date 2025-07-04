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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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