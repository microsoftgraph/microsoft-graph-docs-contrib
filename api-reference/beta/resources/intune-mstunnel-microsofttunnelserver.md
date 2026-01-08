---
title: "microsoftTunnelServer resource type"
description: "Entity that represents a single Microsoft Tunnel server"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# microsoftTunnelServer resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a single Microsoft Tunnel server

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftTunnelServers](../api/intune-mstunnel-microsofttunnelserver-list.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) collection|List properties and relationships of the [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) objects.|
|[Get microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-get.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md)|Read properties and relationships of the [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.|
|[Create microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-create.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md)|Create a new [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.|
|[Delete microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-delete.md)|None|Deletes a [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md).|
|[Update microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-update.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md)|Update the properties of a [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.|
|[getHealthMetrics action](../api/intune-mstunnel-microsofttunnelserver-gethealthmetrics.md)|[keyLongValuePair](../resources/intune-shared-keylongvaluepair.md) collection||
|[getHealthMetricTimeSeries action](../api/intune-mstunnel-microsofttunnelserver-gethealthmetrictimeseries.md)|[metricTimeSeriesDataPoint](../resources/intune-mstunnel-metrictimeseriesdatapoint.md) collection||
|[createServerLogCollectionRequest action](../api/intune-mstunnel-microsofttunnelserver-createserverlogcollectionrequest.md)|[microsoftTunnelServerLogCollectionResponse](../resources/intune-mstunnel-microsofttunnelserverlogcollectionresponse.md)||
|[generateServerLogCollectionRequest action](../api/intune-mstunnel-microsofttunnelserver-generateserverlogcollectionrequest.md)|[microsoftTunnelServerLogCollectionResponse](../resources/intune-mstunnel-microsofttunnelserverlogcollectionresponse.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the managed server. This ID is assigned at registration time. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.|
|displayName|String|The display name of the server. It is the same as the host name during registration and can be changed later. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Max allowed length is 200 chars.|
|tunnelServerHealthStatus|[microsoftTunnelServerHealthStatus](../resources/intune-mstunnel-microsofttunnelserverhealthstatus.md)|Indicates the server's health Status as of the last evaluation time. Health is evaluated every 60 seconds, and the possible values are: unknown, healthy, unhealthy, warning, offline, upgradeInProgress, upgradeFailed. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only. The possible values are: `unknown`, `healthy`, `unhealthy`, `warning`, `offline`, `upgradeInProgress`, `upgradeFailed`, `unknownFutureValue`.|
|lastCheckinDateTime|DateTimeOffset|Indicates when the server last checked in. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported Read-only.|
|agentImageDigest|String|The digest of the current agent image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.|
|serverImageDigest|String|The digest of the current server image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.|
|deploymentMode|[microsoftTunnelDeploymentMode](../resources/intune-mstunnel-microsofttunneldeploymentmode.md)|Microsoft Tunnel server deployment mode. The value is set when the server is registered. Possible values are standaloneRootful, standaloneRootless, podRootful, podRootless. Default value: standaloneRootful. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only. The possible values are: `standaloneRootful`, `standaloneRootless`, `podRootful`, `podRootless`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelServer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelServer",
  "id": "String (identifier)",
  "displayName": "String",
  "tunnelServerHealthStatus": "String",
  "lastCheckinDateTime": "String (timestamp)",
  "agentImageDigest": "String",
  "serverImageDigest": "String",
  "deploymentMode": "String"
}
```