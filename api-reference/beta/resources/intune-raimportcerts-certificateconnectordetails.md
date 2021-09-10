---
title: "certificateConnectorDetails resource type"
description: "Entity used to retrieve information about Intune Certificate Connectors."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# certificateConnectorDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity used to retrieve information about Intune Certificate Connectors.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List certificateConnectorDetailses](../api/intune-raimportcerts-certificateconnectordetails-list.md)|[certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md) collection|List properties and relationships of the [certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md) objects.|
|[Get certificateConnectorDetails](../api/intune-raimportcerts-certificateconnectordetails-get.md)|[certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md)|Read properties and relationships of the [certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md) object.|
|[Create certificateConnectorDetails](../api/intune-raimportcerts-certificateconnectordetails-create.md)|[certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md)|Create a new [certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md) object.|
|[Delete certificateConnectorDetails](../api/intune-raimportcerts-certificateconnectordetails-delete.md)|None|Deletes a [certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md).|
|[Update certificateConnectorDetails](../api/intune-raimportcerts-certificateconnectordetails-update.md)|[certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md)|Update the properties of a [certificateConnectorDetails](../resources/intune-raimportcerts-certificateconnectordetails.md) object.|
|[getHealthMetrics action](../api/intune-raimportcerts-certificateconnectordetails-gethealthmetrics.md)|[keyLongValuePair](../resources/intune-shared-keylongvaluepair.md) collection|Not yet documented|
|[getHealthMetricTimeSeries action](../api/intune-raimportcerts-certificateconnectordetails-gethealthmetrictimeseries.md)|[certificateConnectorHealthMetricValue](../resources/intune-raimportcerts-certificateconnectorhealthmetricvalue.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this set of ConnectorDetails.|
|connectorName|String|Connector name (set during enrollment).|
|machineName|String|Name of the machine hosting this connector service.|
|enrollmentDateTime|DateTimeOffset|Date/time when this connector was enrolled.|
|lastCheckinDateTime|DateTimeOffset|Date/time when this connector last connected to the service.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateConnectorDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateConnectorDetails",
  "id": "String (identifier)",
  "connectorName": "String",
  "machineName": "String",
  "enrollmentDateTime": "String (timestamp)",
  "lastCheckinDateTime": "String (timestamp)"
}
```



