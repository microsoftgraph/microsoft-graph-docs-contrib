---
title: "zebraFotaConnector resource type"
description: "The Zebra FOTA connector entity that represents the tenant's authorization status for Intune to call Zebra Update Services."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# zebraFotaConnector resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Zebra FOTA connector entity that represents the tenant's authorization status for Intune to call Zebra Update Services.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get zebraFotaConnector](../api/intune-androidfotaservice-zebrafotaconnector-get.md)|[zebraFotaConnector](../resources/intune-androidfotaservice-zebrafotaconnector.md)|Read properties and relationships of the [zebraFotaConnector](../resources/intune-androidfotaservice-zebrafotaconnector.md) object.|
|[Update zebraFotaConnector](../api/intune-androidfotaservice-zebrafotaconnector-update.md)|[zebraFotaConnector](../resources/intune-androidfotaservice-zebrafotaconnector.md)|Update the properties of a [zebraFotaConnector](../resources/intune-androidfotaservice-zebrafotaconnector.md) object.|
|[hasActiveDeployments action](../api/intune-androidfotaservice-zebrafotaconnector-hasactivedeployments.md)|Boolean||
|[approveFotaApps action](../api/intune-androidfotaservice-zebrafotaconnector-approvefotaapps.md)|Boolean||
|[connect action](../api/intune-androidfotaservice-zebrafotaconnector-connect.md)|Boolean||
|[disconnect action](../api/intune-androidfotaservice-zebrafotaconnector-disconnect.md)|Boolean||
|[retrieveZebraFotaDeviceModels function](../api/intune-androidfotaservice-zebrafotaconnector-retrievezebrafotadevicemodels.md)|String collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of ZebraFotaConnector.|
|state|** Unknown Type `microsoft.intune.core.msGraph.zebraFotaConnectorState` **|The Zebra connector state.|
|enrollmentToken|String|Tenant enrollment token from Zebra. The token is used to enroll Zebra devices in the FOTA Service via app config.|
|enrollmentAuthorizationUrl|String|Complete account enrollment authorization URL. This corresponds to verification_uri_complete in the Zebra API documentations.|
|lastSyncDateTime|DateTimeOffset|Date and time when the account was last synched with Zebra|
|fotaAppsApproved|Boolean|Flag indicating if required Firmware Over-the-Air (FOTA) Apps have been approved.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.zebraFotaConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.zebraFotaConnector",
  "id": "String (identifier)",
  "state": "<Unknown None>",
  "enrollmentToken": "String",
  "enrollmentAuthorizationUrl": "String",
  "lastSyncDateTime": "String (timestamp)",
  "fotaAppsApproved": true
}
```