---
title: "configurationMonitor resource type"
description: "This endpoint allows admins to create and manage monitors for tenant monitoring purposes for all the UTCM supported workloads."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# configurationMonitor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This endpoint allows admins to create and manage monitors for tenant monitoring or drift monitoring purposes for all the Unified Tenant Configuration Management supported workloads. It means that admins can now detect any deviations, periodically, from the desired configuration state settings.

This API is currently in preview and is available in commercial environments only.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md) collection|Get a list of all the existing configurationMonitor objects and their properties.|
|[Create](../api/configurationmanagement-post-configurationmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md)|Create a new configurationMonitor object.|
|[Get](../api/configurationmonitor-get.md)|[configurationMonitor](../resources/configurationmonitor.md)|Get a particular configurationMonitor object.|
|[Update](../api/configurationmonitor-update.md)|[configurationMonitor](../resources/configurationmonitor.md)|Update the properties like monitorName, description, or baseline of a configurationMonitor object.|
|[Delete](../api/configurationmanagement-delete-configurationmonitors.md)|None|Delete a configurationMonitor object.|
|[Get configurationBaseline](../api/configurationbaseline-get.md)|[configurationBaseline](../resources/configurationbaseline.md) collection|Get baseline of a configurationMonitor object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identifier string of the user who created the monitor [Fetched by the system]|
|createdDateTime|DateTimeOffset|The date and time when the monitor were created|
|description|String|User friendly description of the monitor given by the user [Optional]|
|displayName|String|User friendly name given by the user to the monitor [Mandatory]|
|id|String|Globally unique identifier / GUID of the monitor [Created by the System] Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time when the monitor was last modified. If there are no modifications made to the monitor, it is same as createdDateTime|
|mode|monitorMode|Monitor mode in which the monitor is running. It can be monitorOnly as of now. [Default]|
|monitorRunFrequencyInHours|Int32|Frequency at which the monitor is running [The default frequency is 6 hours. In future, the users get few more options to choose the frequency at which they want the monitors to run.] [Default] Regardless of when you create or update a monitor, note that the monitor will automatically get triggered within next 6 hours. Currently, the monitors are picked at a fixed time of 0600 hours, 1200 hours, 1800 hours and 2400 hours [All hours in GMT]. For example: If you create a monitor at 0900 hours, the monitor gets triggered around 1200 hours. If you update a monitor at 1600 hours, the monitor gets triggered around 1800 hours.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-Value pairs containing the value of the parameters which might be used in the baseline [Optional]|
|runningOnBehalfOf|[identitySet](../resources/identityset.md)|The user on whose behalf the monitor is running|
|status|monitorStatus|Status of the monitor It can only be active as of now. [Default].|
|tenantId|String|Globally unique identifier / GUID of the tenant for which the monitor is being run [Fetched automatically by the system]|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|A complex object containing the details of at least one resource and at least one property associated to the resource that is to be monitored [Mandatory]|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationMonitor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "tenantId": "String",
  "status": "String",
  "monitorRunFrequencyInHours": "Integer",
  "mode": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "runningOnBehalfOf": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "parameters": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  }
}
```