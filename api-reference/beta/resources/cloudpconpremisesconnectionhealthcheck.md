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

The details of a health check item

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The health check item display name.|
|status|cloudPcOnPremisesConnectionStatus|The status of the specific health check item. Possible values are: `Pending`, `Running`, `Passed`, `Failed`, `UnknownFutureValue`.|
|startDateTime|DateTimeOffset|The start time of the specific health check item.|
|endDateTime|DateTimeOffset|The end time of the specific health check item.|
|errorType|[cloudPcOnPremisesConnectionHealthCheckErrorType](../resources/cloudpconpremisesconnectionstatus.md)|The error type of the health check item. Possible values are: `DnsCheckFqdnNotFound`, `DnsCheckUnknownError`, `AdJoinCheckFqdnNotFound`, `AdJoinCheckIncorrectCredentials`, `AdJoinCheckOrganizationalUnitNotFound`, `AdJoinCheckOrganizationalUnitIncorrectFormat`, `AdJoinCheckUnknownError`, `EndpointConnectivityCheckUrlNotWhitelisted`, `EndpointConnectivityCheckUnknownError`, `AadConnectivityCheckUnknownError`,`resourceAvailabilityCheckNoSubnetIP`,`resourceAvailabilityCheckUnknownError`,`internalServerUnknownError`.|
|recommendedAction|String|The recommended action to fix the corresponding error.|
|additionalDetails|String|Additional details about the health check or the recommended action.|

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
  "errorType": {
    "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheckErrorType"
  },
  "recommendedAction": "String",
  "additionalDetails": "String"
}
```
