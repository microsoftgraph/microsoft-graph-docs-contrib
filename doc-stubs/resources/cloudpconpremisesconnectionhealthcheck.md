---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalDetails|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|errorType|cloudPcOnPremisesConnectionHealthCheckErrorType|**TODO: Add Description**. Possible values are: `dnsCheckFqdnNotFound`, `dnsCheckUnknownError`, `adJoinCheckFqdnNotFound`, `adJoinCheckIncorrectCredentials`, `adJoinCheckOrganizationalUnitNotFound`, `adJoinCheckOrganizationalUnitIncorrectFormat`, `adJoinCheckUnknownError`, `endpointConnectivityCheckUrlNotWhitelisted`, `endpointConnectivityCheckUnknownError`, `aadConnectivityCheckUnknownError`, `resourceAvailabilityCheckNoSubnetIP`, `resourceAvailabilityCheckUnknownError`, `internalServerUnknownError`.|
|recommendedAction|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|cloudPcOnPremisesConnectionStatus|**TODO: Add Description**. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
  "displayName": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errorType": "String",
  "recommendedAction": "String",
  "additionalDetails": "String"
}
```

